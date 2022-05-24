package com.example.osk.service;

import com.example.osk.model.WorkDay;
import com.example.osk.repository.WorkDayRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class WorkDayService {

    private final WorkDayRepository workDayRepository;

    @Autowired
    public WorkDayService(WorkDayRepository workDayRepository) {
        this.workDayRepository = workDayRepository;
    }

    public List<WorkDay> getAllWorkDays() {
        return this.workDayRepository.findAll();
    }

    public Long getQuantityOfWorkDays() {
        return this.workDayRepository.count();
    }

    public void addWorkDay(WorkDay workDay) {
        this.workDayRepository.save(workDay);
    }
}
