package com.example.osk.manager;

import com.example.osk.service.WorkDayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.time.LocalDate;

@Component
public class WorkDaysSelfManager implements CommandLineRunner {

    private final LocalDate currentDate = LocalDate.now();
    private final WorkDayService workDayService;

    @Autowired
    public WorkDaysSelfManager(WorkDayService workDayService) {
        this.workDayService = workDayService;
    }

    @Override
    public void run(final String... args) throws Exception {

        if (this.workDayService.getQuantityOfWorkDays() != 30 ) {
            int amountOfDaysCurrentMonth = LocalDate.now().lengthOfMonth();

        }


    }
}
