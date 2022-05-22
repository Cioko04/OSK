package com.example.osk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BookingController {

    @GetMapping("/bookPracticalLesson")
    public String getBookLessonView() {
        return "booking/bookingLesson";
    }

}
