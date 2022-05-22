package com.example.osk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginRegisterController {
    @GetMapping("/login")
    public String getLoginPage(){
        return "loginPages/login";
    }
    @GetMapping("/register")
    public String getRegisterPage(){
        return "loginPages/login";
    }
}
