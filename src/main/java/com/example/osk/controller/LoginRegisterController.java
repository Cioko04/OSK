package com.example.osk.controller;

import com.example.osk.service.ClientService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginRegisterController {


    @GetMapping("/login")
    public String getLoginPage(){
        return "loginPages/login";
    }
}
