package com.example.osk.service;

import com.example.osk.model.WorkDay;
import com.example.osk.repository.WorkDayRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.time.LocalDate;
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

    public WorkDay findWorkDayByDate(LocalDate certainDate) {
        return this.workDayRepository.findWorkDayObjectByDate(certainDate);
    }

    public Long getQuantityOfWorkDays() {
        return this.workDayRepository.count();
    }

    public void addWorkDay(WorkDay workDay) {
        this.workDayRepository.save(workDay);
    }

    public List<WorkDay> getSevenWorkDaysByPage(long page) {
        LocalDate currentDay = LocalDate.now();
        long currentDayId = this.workDayRepository.getIdOfCurrentDay(currentDay);
        long idOfFirstDay = currentDayId + 7 * (page - 1);
        return this.workDayRepository.findWorkDaysBetweenIds(idOfFirstDay, idOfFirstDay + 6);
    }
}