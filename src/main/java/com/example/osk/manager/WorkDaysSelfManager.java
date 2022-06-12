package com.example.osk.manager;

import com.example.osk.model.Log;
import com.example.osk.model.WorkDay;
import com.example.osk.service.LoggerService;
import com.example.osk.service.TimeSlotService;
import com.example.osk.service.WorkDayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.YearMonth;

@Component
public final class WorkDaysSelfManager implements CommandLineRunner {

    private final WorkDayService WORKDAY_SERVICE;
    private final LoggerService loggerService;
    private final TimeSlotService timeSlotService;

    @Autowired
    public WorkDaysSelfManager(WorkDayService workDayService, LoggerService loggerService, TimeSlotService timeSlotService) {
        this.WORKDAY_SERVICE = workDayService;
        this.loggerService = loggerService;
        this.timeSlotService = timeSlotService;
    }

    @Override
    public void run(final String... args) throws Exception {
        int currentYear = LocalDate.now().getYear();
        int currentMonth = LocalDate.now().getMonthValue();

        if (this.WORKDAY_SERVICE.getQuantityOfWorkDays() == 0) {
            createWorkDays(currentYear, getPreviousMonth(currentMonth), getAmountOfDaysInMonth(currentYear, getPreviousMonth(currentMonth)));
            this.loggerService.saveLog(new Log(getPreviousMonth(currentMonth)));
            System.out.println(getPreviousMonth(currentMonth));

            createWorkDays(currentYear, currentMonth, getAmountOfDaysInMonth(currentYear, currentMonth));
            this.loggerService.saveLog(new Log(currentMonth));
            System.out.println(currentMonth);

            createWorkDays(currentYear, getNextMonth(currentMonth), getAmountOfDaysInMonth(currentYear, getNextMonth(currentMonth)));
            this.loggerService.saveLog(new Log(getNextMonth(currentMonth)));
            System.out.println(getNextMonth(currentMonth));
        }

        if (this.loggerService.getLastLog() == LocalDate.now().getMonthValue()) {
            createWorkDays(currentYear, getNextMonth(currentMonth), getAmountOfDaysInMonth(currentYear, getNextMonth(currentMonth)));
            this.loggerService.saveLog(new Log(getNextMonth(currentMonth)));
        }

    }

    public void createWorkDays(int year, int month, int amountOfDaysInMonth) {

        for (int day = 1; day < amountOfDaysInMonth + 1; day++) {
            boolean isWorkDay = LocalDate.of(year, month, day).getDayOfWeek() != DayOfWeek.SATURDAY &
                    LocalDate.of(year, month, day).getDayOfWeek() != DayOfWeek.SUNDAY;
            this.WORKDAY_SERVICE.addWorkDay(new WorkDay(LocalDate.of(year, month, day), isWorkDay));
        }
    }

    public int getNextMonth(int previousMonth) {
        switch (previousMonth) {
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
                return 7;
            case 7:
                return 8;
            case 8:
                return 9;
            case 9:
                return 10;
            case 10:
                return 11;
            case 11:
                return 12;
            case 12:
                return 1;
            default:
                throw new IllegalArgumentException();
        }
    }

    public int getPreviousMonth(int previousMonth) {
        switch (previousMonth) {
            case 1:
                return 12;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return 5;
            case 7:
                return 6;
            case 8:
                return 7;
            case 9:
                return 8;
            case 10:
                return 9;
            case 11:
                return 10;
            case 12:
                return 11;
            default:
                throw new IllegalArgumentException();
        }
    }

    public static int getAmountOfDaysInMonth(int year, int month) {
        YearMonth yearMonthObject = YearMonth.of(year, month);
        return yearMonthObject.lengthOfMonth();
    }
}