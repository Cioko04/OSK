package com.example.osk.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import javax.persistence.*;
import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity(name = "workdays")
public class WorkDay {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    // main field below
    private LocalDate certainDay;

    private final String timeslot07_08 = "07:00-08:00";
    private final String timeslot08_09 = "08:00-09:00";
    private final String timeslot09_10 = "09:00-10:00";
    private final String timeslot10_11 = "10:00-11:00";
    private final String timeslot11_12 = "11:00-12:00";
    private final String timeslot12_13 = "12:00-13:00";
    private final String timeslot13_14 = "13:00-14:00";
    private final String timeslot16_17 = "14:00-15:00";
    private final String timeslot14_15 = "15:00-16:00";
    private final String timeslot15_16 = "16:00-17:00";

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.REFRESH, mappedBy = "workDay")
    private Set<TimeSlot> allTimeSlots = new HashSet<>();
}