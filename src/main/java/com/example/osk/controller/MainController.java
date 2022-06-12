package com.example.osk.controller;

import com.example.osk.service.ClientServiceImpl;
import com.example.osk.service.InstructorServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
    private final ClientServiceImpl clientService;
    private final InstructorServiceImpl instructorService;

    @Autowired
    public MainController(ClientServiceImpl clientService, InstructorServiceImpl instructorService) {
        this.clientService = clientService;
        this.instructorService = instructorService;
    }

    @GetMapping("/")
    public String getMainPage(Model model) {
        String principal = SecurityContextHolder.getContext().getAuthentication().getName();
        Long clientsCount = clientService.getCountOfClients();
        Long instructorsCount = instructorService.getCountOfInstructors();
        model.addAttribute("clientsCount", clientsCount);
        model.addAttribute("instructorsCount", instructorsCount);
        model.addAttribute("currentUserObject", this.clientService.getClientByEmail(principal));
        return "index";
    }
}