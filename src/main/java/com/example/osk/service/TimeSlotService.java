package com.example.osk.service;

import com.example.osk.model.TimeSlot;
import com.example.osk.repository.TimeSlotRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Set;

@Service
public class TimeSlotService {

    private final TimeSlotRepository timeSlotRepository;

    @Autowired
    public TimeSlotService(TimeSlotRepository timeSlotRepository) {
        this.timeSlotRepository = timeSlotRepository;
    }

    public void saveTimeSlot(Set<TimeSlot> allTimeSlots) {
        this.timeSlotRepository.saveAll(allTimeSlots);
    }

    public List<TimeSlot> getAllTimeSlots() {
        return this.timeSlotRepository.findAll();
    }

    public Long getQuantityOfWorkDays() {
        return this.timeSlotRepository.count();
    }
}