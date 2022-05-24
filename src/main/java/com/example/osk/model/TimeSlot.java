package com.example.osk.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import javax.persistence.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity(name = "timeslots")
public class TimeSlot {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private boolean isBusy = false;

    private String timeslot;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "workday_id")
    private WorkDay workDay;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "client_id")
    private Client client;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "instructor_id")
    private Instructor instructor;



//    @OneToOne(cascade = CascadeType.ALL)
//    @JoinTable(name = "client_id")
//    private Client client;
//
//    @OneToOne(cascade = CascadeType.ALL)
//    @JoinColumn(name = "instructor_id")
//    private Instructor instructor;


    // to check available of timeslot\realization of lessons\payment status\ cancellation of a lesson
    // max hours for one student
    // ROla 1 Client
    // Rola 2 Instructor
    // Rola 3 Admin
    // Guest
    // common info about client from admin side

}
