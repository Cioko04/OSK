package com.example.osk.controller;

import com.example.osk.dto.InstructorRegistrationDto;
import com.example.osk.model.Instructor;
import com.example.osk.service.InstructorServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import javax.validation.Valid;
import java.util.List;

@Controller
public class InstructorController {

    private final InstructorServiceImpl instructorService;

    @Autowired
    public InstructorController(InstructorServiceImpl instructorService){
        this.instructorService = instructorService;
    }

    // getting a view of all the instructors with model of them
    @GetMapping("/instructors")
    public String getInstructorsList(Model model) {
        List<Instructor> allInstructors = this.instructorService.getAllInstructors();
        model.addAttribute("instructor", allInstructors);
        return "instructors/instructorsList";
    }

    // getting the view of adding a new instructor
    @GetMapping("/addInstructor")
    public String getAddInstructorView() {
        return "instructors/addInstructor";
    }


    //getting the view of editing a certain instructor with model of that instructor
    @GetMapping("/editInstructor/{id}")
    public String getEditInstructorView(@PathVariable("id") Long id, Model model) {
        Instructor foundedInstructor = this.instructorService.getInstructor(id);
        model.addAttribute("instructor", foundedInstructor);
        return "instructors/editInstructor";
    }

    // confirming of adding a new instructor on page then redirecting a view to /instructors
    @PostMapping("/addInstructor")
    public RedirectView addInstructor (@ModelAttribute InstructorRegistrationDto instructorRegistrationDto) {
        instructorService.save(instructorRegistrationDto);
        return new RedirectView("/instructors");
    }

    // confirming of editing a certain instructor and redirecting a view to /
    @PostMapping("/addInstructor/{id}")
    public RedirectView acceptEditingInstructor(@ModelAttribute Instructor instructor, @PathVariable("id") Long id) {
        this.instructorService.editInstructor(instructor);
        return new RedirectView("/");
    }

    //confirming of removing a certain instructor on page from OSC and redirecting a view to /instructors
    @PostMapping("/editInstructor/{id}")
    public RedirectView removeInstructor(@PathVariable("id") Long id) {
        this.instructorService.deleteInstructor(id);
        return new RedirectView("/instructors");
    }





}