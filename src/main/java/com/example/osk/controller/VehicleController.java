package com.example.osk.controller;

import com.example.osk.model.Vehicle;
import com.example.osk.service.VehicleService;
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
public class VehicleController {

    private final VehicleService VehicleService;

    @Autowired
    public VehicleController(VehicleService VehicleService) {
        this.VehicleService = VehicleService;
    }

    // getting all the Vehicles for showing on page
    @GetMapping("/vehicles")
    public String getVehiclesList(Model model) {
        List<Vehicle> allVehicles = this.VehicleService.getAllVehicles();
        model.addAttribute("vehicle", allVehicles);
        return "vehicles/vehiclesList";
    }

    // only get view for add new Vehicle
    @GetMapping("/addVehicle")
    public String getAddVehicleView() {
        return "vehicles/addNewVehicle";
    }

    // save Vehicle in DB then redirecting a view
    @PostMapping("/addVehicle")
    public RedirectView addVehicle (@ModelAttribute Vehicle Vehicle) {
        this.VehicleService.addVehicle(Vehicle);
        return new RedirectView("/vehicles");
    }

    // get Vehicle for only edit view
    @GetMapping("/editVehicle/{id}")
    public String getEditVehicle(@PathVariable("id") Long id, Model model) {
        Vehicle vehicle = VehicleService.getVehicleById(id);
        model.addAttribute("vehicle", vehicle);
        return "vehicles/editVehicle";
    }

    // save edit Vehicle
    @PostMapping("/addVehicle/{id}")
    public RedirectView postEditVehicle(@Valid @ModelAttribute Vehicle newVehicle, @PathVariable("id") Long id) {
        VehicleService.editVehicle(newVehicle);
        return new RedirectView("/vehicles");
    }

    // delete Vehicle
    @PostMapping("/editVehicle/{id}")
    public RedirectView deleteVehicle(@PathVariable("id") Long id) {
        VehicleService.deleteVehicle(id);
        return new RedirectView("/vehicles");
    }

}
