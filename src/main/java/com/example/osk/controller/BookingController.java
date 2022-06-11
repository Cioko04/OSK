package com.example.osk.controller;

import com.example.osk.model.WorkDay;
import com.example.osk.service.WorkDayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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

    @GetMapping("/timeslots/{page}")
    public String getSevenDaysForCertainPage(@PathVariable("page") Long page, Model model) {
        System.out.println(page);
        List<WorkDay> sevenWorkDays = this.workDayService.getSevenWorkDaysByPage(page);
        model.addAttribute("sevenWorkDays", sevenWorkDays);
        model.addAttribute("currentPage", page);
        return "booking/hoursTable";
    }

}