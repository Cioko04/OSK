package com.example.osk.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.HashSet;
import java.util.List;
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
    private LocalDate certainDay;

    private boolean the8amAvailable;
    private boolean the9amAvailable;
    private boolean the10amAvailable;
    private boolean the11amAvailable;
    private boolean the13amAvailable;
    private boolean the14amAvailable;
    private boolean the15amAvailable;
    private boolean the16amAvailable;

    public WorkDay(LocalDate date, boolean slotAvailability) {
        this.certainDay = date;
        this.the8amAvailable = slotAvailability;
        this.the9amAvailable = slotAvailability;
        this.the10amAvailable = slotAvailability;
        this.the11amAvailable = slotAvailability;
        this.the13amAvailable = slotAvailability;
        this.the14amAvailable = slotAvailability;
        this.the15amAvailable = slotAvailability;
        this.the16amAvailable = slotAvailability;
    }

    public boolean check8amAvailability() {
        return this.the8amAvailable;
    }

    public boolean check9amAvailability() {
        return this.the9amAvailable;
    }

    public boolean check10amAvailability() {
        return this.the10amAvailable;
    }

    public boolean check11amAvailability() {
        return this.the11amAvailable;
    }

    public boolean check13amAvailability() {
        return this.the13amAvailable;
    }

    public boolean check14amAvailability() {
        return this.the14amAvailable;
    }

    public boolean check15amAvailability() {
        return this.the15amAvailable;
    }

    public boolean check16amAvailability() {
        return this.the16amAvailable;
    }

    public List<Boolean> getAllTimeSlots() {
        return List.of(this.the8amAvailable,
                this.the9amAvailable,
                this.the10amAvailable,
                this.the11amAvailable,
                this.the13amAvailable,
                this.the14amAvailable,
                this.the15amAvailable,
                this.the16amAvailable);
    }

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.REFRESH, mappedBy = "workDay")
    private Set<TimeSlot> allTimeSlots = new HashSet<>();
}