package com.example.osk.controller;

import com.example.osk.service.ClientServiceImpl;
import com.example.osk.service.InstructorServiceImpl;
import com.example.osk.service.VehicleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BookingController {
    private final ClientServiceImpl clientService;
    private final InstructorServiceImpl instructorService;
    private final VehicleService vehicleService;

    @Autowired
    public BookingController(ClientServiceImpl clientService, InstructorServiceImpl instructorService, VehicleService vehicleService) {
        this.clientService = clientService;
        this.instructorService = instructorService;
        this.vehicleService = vehicleService;
    }

    @GetMapping("/bookPracticalLesson")
    public String getBookLessonView(Model model) {
        Long clientsCount = clientService.getCountOfClients();
        Long instructorsCount = instructorService.getCountOfInstructors();
        Long vehicleCount = vehicleService.getCountOfVehicles();
        model.addAttribute("clientsCount", clientsCount);
        model.addAttribute("instructorsCount", instructorsCount);
        model.addAttribute("vehicleCount", vehicleCount);
        return "booking/categories";
    }
}