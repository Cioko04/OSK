package com.example.osk.controller;

import com.example.osk.service.ClientServiceImpl;
import com.example.osk.service.InstructorServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProfileController {
    private final ClientServiceImpl clientService;
    private final InstructorServiceImpl instructorService;

    public ProfileController(ClientServiceImpl clientService, InstructorServiceImpl instructorService) {
        this.clientService = clientService;
        this.instructorService = instructorService;
    }

    @GetMapping("/editProfile")
    public String getVehiclesList(Model model) {
        String principal = SecurityContextHolder. getContext(). getAuthentication(). getName();
        if(clientService.getClientByName(principal) != null){
            model.addAttribute("person", clientService.getClientByName(principal));
        }else {
            model.addAttribute("person", instructorService.getInstructorByName(principal));
        }
        return "profile/editProfile";
    }
}
