package com.example.osk.controller;

import com.example.osk.model.TimeSlot;
import com.example.osk.model.WorkDay;
import com.example.osk.service.ClientServiceImpl;
import com.example.osk.service.InstructorServiceImpl;
import com.example.osk.service.TimeSlotService;
import com.example.osk.service.WorkDayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.view.RedirectView;
import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

@Controller
public class BookingController {

    private final WorkDayService workDayService;
    private final InstructorServiceImpl instructorServiceImpl;
    private final TimeSlotService timeSlotService;
    private final ClientServiceImpl clientServiceImpl;

    @Autowired
    public BookingController(WorkDayService workDayService, InstructorServiceImpl instructorServiceImpl, TimeSlotService timeSlotService, ClientServiceImpl clientServiceImpl) {
        this.workDayService = workDayService;
        this.instructorServiceImpl = instructorServiceImpl;
        this.timeSlotService = timeSlotService;
        this.clientServiceImpl = clientServiceImpl;
    }

    @GetMapping("/bookPracticalLesson")
    public String getCategoriesView() {
        return "booking/categories";
    }

    @GetMapping("/instructorTimeSlots/{instructorId}")
    public RedirectView redirectViewToTimeslotsOfCertainInstructor(@PathVariable("instructorId") Long instructorId) {
        return new RedirectView("/timeslots/1/"+instructorId);
    }

    @GetMapping("/timeslots/{page}/{instructorId}")
    public String getSevenDaysForCertainPage(@PathVariable("page") Long page, @PathVariable("instructorId") Long instructorId, Model model) {
        List<WorkDay> sevenWorkDays = this.workDayService.getSevenWorkDaysByPage(page);

        for (WorkDay day : sevenWorkDays) {
            this.timeSlotService.findTimeslotsOfCertainInstructor(instructorId)
                    .stream()
                    .filter(slot -> slot.getWorkDay().getCertainDay().equals(day.getCertainDay()))
                    .collect(Collectors.toList())
                    .forEach(slot -> day.setInactivityOfSlot(slot.getTimeslot()));
        }

        model.addAttribute("sevenWorkDays", sevenWorkDays);
        model.addAttribute("currentPage", page);
        model.addAttribute("instructorId", instructorId);
        return "booking/hoursTable";
    }


    @GetMapping("/acceptBooking/{instructorId}/{timeSlot}/{day}")
    public RedirectView acceptBooking (@PathVariable("instructorId") Long instructorId, @PathVariable("timeSlot") String timeSlot, @PathVariable("day") String certainDate) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        this.timeSlotService.saveTimeSlot(TimeSlot.builder()
                .client(this.clientServiceImpl.getClientByEmail(authentication.getName()))
                .instructor(this.instructorServiceImpl.getInstructor(instructorId))
                .timeslot(timeSlot)
                .isBusy(true)
                .workDay(this.workDayService.findWorkDayByDate(LocalDate.parse(certainDate)))
                .vehicle(null)
                .build());
        return new RedirectView("/");
    }
}