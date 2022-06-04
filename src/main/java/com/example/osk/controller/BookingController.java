package com.example.osk.controller;

import com.example.osk.model.WorkDay;
import com.example.osk.service.WorkDayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class BookingController {

    private final WorkDayService workDayService;

    @Autowired
    public BookingController(WorkDayService workDayService) {
        this.workDayService = workDayService;
    }

    @GetMapping("/bookPracticalLesson")
    public String getCategoriesView() {
        return "booking/categories";
    }

    @GetMapping("/timeslots")
    public String getBookLessonViewWithNext7WorkDays(Model model) {
        List<WorkDay> sevenWorkDays = this.workDayService.getNextSevenWorkDays();
        model.addAttribute("sevenWorkDays", sevenWorkDays);
        return "booking/hoursTable";
    }

//    @GetMapping("/timeslots")
//    public String getBookLessonViewWithPrevious7WorkDays(Model model) {
//        List<WorkDay> sevenWorkDays = this.workDayService.getNextSevenWorkDays();
//        model.addAttribute("sevenWorkDays", sevenWorkDays);
//        return "booking/hoursTable";
//    }

}