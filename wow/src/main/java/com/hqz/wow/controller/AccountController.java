package com.hqz.wow.controller;

import com.hqz.wow.entity.CorpInfoEntity;
import com.hqz.wow.entity.SecurityQuestionEntity;
import com.hqz.wow.service.CorpInfoService;
import com.hqz.wow.service.CustomerService;
import com.hqz.wow.service.SecurityQuestionService;
import com.hqz.wow.vo.CorpCustomerVO;
import com.hqz.wow.vo.IndivCustomerVO;
import com.hqz.wow.vo.InfoConfirmVO;
import com.hqz.wow.vo.ResetPasswordVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.List;

/**
 * Controller for customer account related views
 * register, login, confirm info, reset password
 */
@Controller
@Slf4j
public class AccountController {

    @Resource
    CustomerService customerService;

    @Resource
    CorpInfoService corpInfoService;

    @Resource
    SecurityQuestionService securityQuestionService;

    /**
     * Corporation customer registration - GET
     *
     * @param model Model for the page
     * @return register-corp.html
     */
    @GetMapping("/register-corp")
    public String registerCorp(Model model) {
        // When user start register (GET), prepare VO to receive user input
        CorpCustomerVO corpCustomerVO = new CorpCustomerVO();

        // Prepare corporation options
        List<CorpInfoEntity> corpInfoEntityList = corpInfoService.getCorpInfoEntityList();

        // Prepare security question options
        List<SecurityQuestionEntity> questionList = securityQuestionService.getSecQuestions();

        model.addAttribute("corpInfoEntity", corpInfoEntityList);
        model.addAttribute("corpCustomerVO", corpCustomerVO);
        model.addAttribute("questionList", questionList);
        return "register-corp";
    }

    /**
     * Individual customer registration - GET
     *
     * @param model Model for the page
     * @return register-indiv.html
     */
    @GetMapping("/register-indiv")
    public String registerIndiv(Model model) {
        // When user start register (GET), prepare VO to receive user input
        IndivCustomerVO indivCustomerVO = new IndivCustomerVO();

        // Prepare security question options
        List<SecurityQuestionEntity> questionList = securityQuestionService.getSecQuestions();

        model.addAttribute("indivCustomerVO", indivCustomerVO);
        model.addAttribute("questionList", questionList);
        return "register-indiv";
    }

    /**
     * Process corporation customer registration
     *
     * @param corpCustomerVO Corp customer information
     * @param bindingResult  User input validation
     * @param model          Model for the page
     * @return Input invalid, return register-corp.html, registration success return login.html
     */
    @PostMapping("/register-corp")
    public String registerSaveCorp(@Valid @ModelAttribute("corpCustomerVO") CorpCustomerVO corpCustomerVO, BindingResult bindingResult, Model model) {
        //todo employeeId unique check

        // check if e-mail already registered
        if (customerService.checkIfCustomerExist(corpCustomerVO.getEmail())) {
            model.addAttribute("emailExists", true);
            return "register-corp";
        }

        if (bindingResult.hasErrors()) {
            // input invalid, display error messages
            return "register-corp";
        }

        try {
            // encrypt password
            BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
            String password = bCryptPasswordEncoder.encode(corpCustomerVO.getPassword());
            corpCustomerVO.setPassword(password);
            // database registration process
            customerService.registerCorpCustomer(corpCustomerVO);
            // successful registration, go to login page
            return "/login";
        } catch (Exception e) {
            // registration failure, back to registration page
            model.addAttribute("error", true);
            return "register-corp";
        }
    }

    /**
     * Process individual customer registration
     *
     * @param indivCustomerVO Individual customer information
     * @param bindingResult   User input validation
     * @param model           Model for the page
     * @return Input invalid return registration page, successful return login page
     */
    @PostMapping("/register-indiv")
    public String registerSaveIndiv(@Valid @ModelAttribute("indivCustomerVO") IndivCustomerVO indivCustomerVO, BindingResult bindingResult, Model model) {

        // check if e-mail already registered
        if (customerService.checkIfCustomerExist(indivCustomerVO.getEmail())) {
            model.addAttribute("emailExists", true);
            return "register-indiv";
        }

        if (bindingResult.hasErrors()) {
            // input invalid, display error messages
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

    /**
     * login page with Spring Security
     *
     * @return login.html
     */
    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    /**
     * logout page, only takes POST request to prevent CSRF
     *
     * @param request  Http request
     * @param response Http response
     * @return login page
     */
    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
        // get authentication information
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            // Spring Security logout API
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/login?logout";
    }

    /**
     * User information confirmation for password reset (e-mail address, security question and answer)
     *
     * @param model Model for the page
     * @return confirm-info.html
     */
    @GetMapping("/confirm-info")
    public String forgetPassword(Model model) {
        if (!model.containsAttribute("infoConfirmVO")) {
            // prepare VO to receive user input
            InfoConfirmVO infoConfirmVO = new InfoConfirmVO();
            model.addAttribute("infoConfirmVO", infoConfirmVO);
        }
        if (!model.containsAttribute("questionList")) {
            // prepare security question list
            List<SecurityQuestionEntity> questionList = securityQuestionService.getSecQuestions();
            model.addAttribute("questionList", questionList);
        }
        return "confirm-info";
    }

    /**
     * process user information confirmation
     *
     * @param infoConfirmVO      user information input
     * @param bindingResult      user input validation result
     * @param redirectAttributes attributes needed to be redirected (normal model won't be redirected)
     * @param model              model for the page
     * @return info invalid redirect to confirm-info.html, successful return reset-password.html
     */
    @PostMapping("/reset-password")
    public String resetPassword(@Valid @ModelAttribute("infoConfirmVO") InfoConfirmVO infoConfirmVO, BindingResult bindingResult, RedirectAttributes redirectAttributes, Model model) {
        if (bindingResult.hasErrors()) {
            // redirect error messages
            redirectAttributes.addFlashAttribute("org.springframework.validation.BindingResult.infoConfirmVO", bindingResult);
            redirectAttributes.addFlashAttribute("infoConfirmVO", infoConfirmVO);
            return "redirect:/confirm-info";
        }

        String email = infoConfirmVO.getEmail();
        // check if e-mail exists
        if (!customerService.checkIfCustomerExist(email)) {
            redirectAttributes.addFlashAttribute("emailNotExists", true);
            return "redirect:/confirm-info";
        }

        // validate customer security question
        if (!customerService.validateSecQuestion(email, infoConfirmVO.getQuestionId(), infoConfirmVO.getSecAnswer())) {
            redirectAttributes.addFlashAttribute("wronganswer", true);
            return "redirect:/confirm-info";
        }

        // prepare VO for reset password
        ResetPasswordVO resetPasswordVO = new ResetPasswordVO();
        model.addAttribute("resetPasswordVO", resetPasswordVO);
        model.addAttribute("email", email);

        return "reset-password";
    }

    /**
     * porcess user reset password (validate password and update database)
     *
     * @param resetPasswordVO VO for password information
     * @param request         Http request
     * @param model           model for the page
     * @return password invalid return reset-password.html, successful return login.html
     */
    @PostMapping("/reset-password-process")
    public String processResetPassword(@ModelAttribute("resetPasswordVO") ResetPasswordVO resetPasswordVO, HttpServletRequest request, Model model) {
        if (!resetPasswordVO.getPassword().equals(resetPasswordVO.getConfirmPassword())) {
            model.addAttribute("passwordMismatch", true);
            model.addAttribute("email", request.getParameter("email"));
            return "reset-password";
        }
        try {
            BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
            String password = bCryptPasswordEncoder.encode(resetPasswordVO.getPassword());
            resetPasswordVO.setPassword(password);
            String email = request.getParameter("email");
            customerService.resetPassword(email, resetPasswordVO);
            return "/login";
        } catch (Exception e) {
            model.addAttribute("error", true);
            return "reset-password";
        }
    }
}
