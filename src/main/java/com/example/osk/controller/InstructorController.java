package com.example.osk.controller;

import com.example.osk.model.Instructor;
import com.example.osk.service.InstructorServiceImpl;
import com.example.osk.web.dto.InstructorRegistrationDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
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

  /*  // confirming of editing a certain instructor and redirecting a view to /instructors
    @PostMapping("/editInstructor/{id}")
    public RedirectView acceptEditingInstructor(@ModelAttribute Instructor instructor) {
        this.instructorService.editInstructor(instructor);
        return new RedirectView("/instructors");
    }
*/
    //confirming of removing a certain instructor on page from OSC and redirecting a view to /instructors
    @PostMapping("/editInstructor/{id}")
    public RedirectView removeInstructor(@PathVariable("id") Long id) {
        this.instructorService.deleteInstructor(id);
        return new RedirectView("/instructors");
    }

    // save edit client
    @PostMapping("/addInstructor/{id}")
    public RedirectView postEditClient(@Valid @ModelAttribute Instructor newInstructor, @PathVariable("id") Long id) {
        instructorService.editInstructor(newInstructor);
        return new RedirectView("/instructors");
    }



}