package com.dispatch.dump.loginModule.controller;

import com.dispatch.dump.commonModule.db.dto.Login;
import com.dispatch.dump.loginModule.service.LoginService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/")
@RequiredArgsConstructor
public class LoginController {

    private final LoginService loginService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String loginPage() {
        return "redirect:/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginForm() {
        return loginService.loginForm();
    }

    /** 
     * FUNCTION :: 로그인 체크
     * @param loginData 로그인 정보
     *                 
     * */
    @RequestMapping(value = "/ajax/login", method = RequestMethod.POST)
    @ResponseBody
    public String loginChk(Login loginData, HttpServletRequest request) {
        return loginService.loginChk(loginData, request);
    }

    /**
     * FUNCTION :: 회원가입 폼 페이지
     * @return
     */
    @RequestMapping("/join")
    public String joinPage() {
        return "redirect:/join/step1";
    }

    @RequestMapping("/join/step1")
    public String joinSelect() {
        return loginService.joinSelect();
    }

    @RequestMapping("/join/step2")
    public String joinForm(Login joinData, Model model) {
        return loginService.joinForm(joinData, model);
    }

    /**
     * FUNCTION :: 회원가입
     * @param loginData 회원 정보
     * @return
     */
    @RequestMapping(value = "/ajax/join", method = RequestMethod.POST)
    @ResponseBody
    public String join(Login loginData) {
        return loginService.join(loginData);
    }

    @RequestMapping("/logout")
    public String logout(HttpServletRequest request) {
        return loginService.logout(request);
    }

    @RequestMapping("/pwChange")
    public String pwChangeForm() {
        return loginService.pwChangeForm();
    }

    @RequestMapping(value = "/ajax/pwChange", method = RequestMethod.POST)
    @ResponseBody
    public String pwChange(Login login) {
        return loginService.pwChange(login);
    }

    @RequestMapping("/trial")
    public String trialPage() {
        return loginService.trialPage();
    }

    @RequestMapping("/trial/login")
    @ResponseBody
    public String trialLogin(HttpServletRequest request, Login login) {
        return loginService.trialLogin(request, login);
    }


}
