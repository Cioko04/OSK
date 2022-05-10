package com.example.osk.controller;

import com.example.osk.model.Client;
import com.example.osk.model.Instructor;
import com.example.osk.service.InstructorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class InstructorController {

    private final InstructorService instructorService;

    @Autowired
    public InstructorController(InstructorService instructorService){
        this.instructorService = instructorService;
    }

    // getting all the instructors for showing on page
    @GetMapping("/instructors")
    public String getClientsList(Model model) {
        List<Instructor> allInstructors = this.instructorService.getAllInstructors();
        model.addAttribute("instructor", allInstructors);
        return "instructors/TODO";
    }

    // only get view for add new instructor
    @GetMapping("/addInstructor")
    public String getAddInstructorView() {
        return "instructors/TODO";
    }

    // save instructor in DB then redirecting a view
    @PostMapping("/addInstructor")
    public RedirectView addInstructor (@ModelAttribute Instructor instructor) {
        this.instructorService.addInstructor(instructor);
        return new RedirectView("/instructors");
    }

}