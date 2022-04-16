package com.hqz.wow.controller;

import com.hqz.wow.service.CustomerService;
import com.hqz.wow.vo.CorpCustomerVO;
import com.hqz.wow.vo.IndivCustomerVO;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

@Controller
public class AccountController {

    @Resource
    CustomerService customerService;

    @GetMapping("/register-corp")
    public String registerCorp(Model model) {
        // When user start register (GET), prepare VO to receive user input
        CorpCustomerVO corpCustomerVO = new CorpCustomerVO();
        model.addAttribute("corpCustomerVO", corpCustomerVO);
        return "register-corp";
    }

    @GetMapping("/register-indiv")
    public String registerIndiv(Model model) {
        // When user start register (GET), prepare VO to receive user input
        IndivCustomerVO indivCustomerVO = new IndivCustomerVO();
        model.addAttribute("indivCustomerVO", indivCustomerVO);
        return "register-indiv";
    }

    // handle corporation customer registration
    @PostMapping("/register-corp")
    public String registerSaveCorp(@Valid @ModelAttribute("corpCustomerVO") CorpCustomerVO corpCustomerVO, BindingResult bindingResult, Model model) {
        //todo employeeId unique check
        if (customerService.checkIfCustomerExist(corpCustomerVO.getEmail()) || bindingResult.hasErrors()) {
            // if user already exists or input parameter validation fails, display error messages
            if (customerService.checkIfCustomerExist(corpCustomerVO.getEmail())) {
                model.addAttribute("emailExists", true);
            }
            return "register-corp";
        }
        try {
            // encrypt password
            BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
            String password = bCryptPasswordEncoder.encode(corpCustomerVO.getPassword());
            corpCustomerVO.setPassword(password);
            // registration process to database
            customerService.registerCorpCustomer(corpCustomerVO);
            // after successfully registration, go to login page
            return "/login";
        } catch (Exception e) {
            // registration failure, back to registration page
            model.addAttribute("error", true);
            return "register-corp";
        }
    }

    // handle individual customer registartion
    @PostMapping("/register-indiv")
    public String registerSaveIndiv(@Valid @ModelAttribute("indivCustomerVO") IndivCustomerVO indivCustomerVO, BindingResult bindingResult, Model model) {
        if (customerService.checkIfCustomerExist(indivCustomerVO.getEmail()) || bindingResult.hasErrors()) {
            if (customerService.checkIfCustomerExist(indivCustomerVO.getEmail())) {
                model.addAttribute("emailExists", true);
            }
            return "register-indiv";
        }
        try {
            BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
            String password = bCryptPasswordEncoder.encode(indivCustomerVO.getPassword());
            indivCustomerVO.setPassword(password);

            customerService.registerIndivCustomer(indivCustomerVO);

            return "/login";
        } catch (Exception e) {
            model.addAttribute("error", true);
            return "register-indiv";
        }
    }

    // login page
    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    // logout page, accept POST method to prevent CSRF
    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            // Spring Security logout API
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/login?logout";
    }
}
