package com.hqz.wow.controller;

import com.hqz.wow.service.CustomerService;
import com.hqz.wow.vo.CorpCustomerVO;
import com.hqz.wow.vo.CustomerVO;
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
        CorpCustomerVO corpCustomerVO = new CorpCustomerVO();
//        CustomerVO customer = new CustomerVO();
//        corpCustomerVO.setCustomer(customer);
        model.addAttribute("corpCustomerVO", corpCustomerVO);
        return "register-corp";
    }
    @GetMapping("/register-indiv")
    public String registerIndiv(Model model) {
        IndivCustomerVO indivCustomerVO = new IndivCustomerVO();
        CustomerVO customer = new CustomerVO();
        indivCustomerVO.setCustomer(customer);
        model.addAttribute("indivCustomerVO", indivCustomerVO);
        return "register-indiv";
    }

    @PostMapping("/register-corp")
    public String registerSaveCorp(@Valid @ModelAttribute("corpCustomerVO") CorpCustomerVO corpCustomerVO, BindingResult bindingResult, Model model) {
        //todo parameter check, employeeId unique check
        if(customerService.checkIfCustomerExist(corpCustomerVO.getEmail())) {
            model.addAttribute("error", true);
            return "register-corp";
        }
        try {
            // 密码加密存储
            BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
            String password = bCryptPasswordEncoder.encode(corpCustomerVO.getPassword());
            corpCustomerVO.setPassword(password);
            // 写入数据库
            customerService.registerCorpCustomer(corpCustomerVO);
            //  重定向到 login 页面
            return "/login";
        } catch (Exception e) {
            // 注册错误
            model.addAttribute("error", true);
            return "register-corp";
        }
    }

    @PostMapping("/register-indiv")
    public String registerSaveIndiv(@Valid @ModelAttribute("indivCustomerVO") IndivCustomerVO indivCustomerVO, BindingResult bindingResult, Model model) {
        //todo parameter check, employeeId unique check
        if(customerService.checkIfCustomerExist(indivCustomerVO.getCustomer().getEmail())) {
            model.addAttribute("error", true);
            return "register-corp";
        }
        try {
            // 密码加密存储
            BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
            String password = bCryptPasswordEncoder.encode(indivCustomerVO.getCustomer().getPassword());
            indivCustomerVO.getCustomer().setPassword(password);
            // 写入数据库
            customerService.registerIndivCustomer(indivCustomerVO);
            //  重定向到 login 页面
            return "/login";
        } catch (Exception e) {
            // 注册错误
            model.addAttribute("error", true);
            return "register-indiv";
        }
    }

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping(value="/logout", method = RequestMethod.POST)
    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/login?logout";
    }
}
