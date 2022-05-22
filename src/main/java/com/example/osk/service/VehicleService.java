package com.example.osk.service;

import com.example.osk.model.Vehicle;
import com.example.osk.repository.VehicleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VehicleService {

    private final VehicleRepository vehicleRepository;

    @Autowired
    public VehicleService(VehicleRepository vehicleRepository) {
        this.vehicleRepository = vehicleRepository;
    }

    public void addVehicle(Vehicle vehicle) {
        this.vehicleRepository.save(vehicle);
    }

    public Vehicle getVehicleById(Long id) {
        return this.vehicleRepository.findById(id).orElse(null);
    }

    public List<Vehicle> getAllVehicles() {
        return this.vehicleRepository.findAll();
    }

    public void editVehicle(Vehicle vehicle) {
        this.vehicleRepository.save(vehicle);
    }

    public void deleteVehicle(Long id) {
        this.vehicleRepository.deleteById(id);
    }
}
