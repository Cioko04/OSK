package com.example.osk.service;

import com.example.osk.manager.LastUsedIdKeeper;
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

    public Long getQuantityOfWorkDays() {
        return this.workDayRepository.count();
    }

    public void addWorkDay(WorkDay workDay) {
        this.workDayRepository.save(workDay);
    }


    public List<WorkDay> getNextSevenWorkDays() {
        LocalDate currentDay = LocalDate.now();
        LastUsedIdKeeper.setLastFetched7daysLastDayId(this.workDayRepository.getFirstWorkDayForPageTimeslotsTable(currentDay));

        List<WorkDay> sevenFetchedWorkDaysToReturn = this.workDayRepository
                .findWorkDaysBetweenIds(LastUsedIdKeeper.getLastUsedID(), LastUsedIdKeeper.getLastUsedID() + 6);
        LastUsedIdKeeper.incrementIdBySeven();
        return sevenFetchedWorkDaysToReturn;
    }

    public List<WorkDay> getPreviousSevenWorkDays() {
        Long lastUsedID = LastUsedIdKeeper.getLastUsedID();
        List<WorkDay> sevenFetchedWorkDaysToReturn = this.workDayRepository
                .findWorkDaysBetweenIds(lastUsedID - 6, lastUsedID);
        LastUsedIdKeeper.decrementIdBySeven();
        return sevenFetchedWorkDaysToReturn;
    }
}