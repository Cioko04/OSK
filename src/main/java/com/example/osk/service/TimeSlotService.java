package com.example.osk.service;

import com.example.osk.model.TimeSlot;
import com.example.osk.repository.TimeSlotRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.time.LocalDate;
import java.util.List;

@Service
public class TimeSlotService {

    private final TimeSlotRepository timeSlotRepository;

    @Autowired
    public TimeSlotService(TimeSlotRepository timeSlotRepository) {
        this.timeSlotRepository = timeSlotRepository;
    }

    public void saveTimeSlot(final TimeSlot timeSlot) {
        this.timeSlotRepository.save(timeSlot);
    }

    public List<TimeSlot> getAllTimeSlots() {
        return this.timeSlotRepository.findAll();
    }

    public List<TimeSlot> getAllTimeSlotsOfCertainDay(LocalDate certainDay) {
        return this.timeSlotRepository.findAll();
    }

    public List<TimeSlot> findTimeslotsOfCertainInstructor(Long instructorId) {
        return this.timeSlotRepository.findTimeslotsByInstructorId(instructorId);
    }

    public Long getQuantityOfWorkDays() {
        return this.timeSlotRepository.count();
    }
}