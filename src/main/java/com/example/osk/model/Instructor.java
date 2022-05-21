package com.example.osk.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import javax.persistence.*;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity(name = "instructors")
public class Instructor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(length = 15)
    private String name;
    @Column(length = 15)
    private String surname;
    @Column(length = 3000)
    private String description;
    @Column(length = 2)
    private Integer age;
    @Column(length = 3000)
    private String categories;
    @Column(length = 10)
    private String catA;
    @Column(length = 10)
    private String catA_1;
    @Column(length = 10)
    private String catA_2;
    @Column(length = 10)
    private String catAM;
    @Column(length = 10)
    private String catB;
    @Column(length = 10)
    private String catB1;
    @Column(length = 10)
    private String catBE;
    @Column(length = 10)
    private String catC;
    @Column(length = 10)
    private String catC1;
    @Column(length = 10)
    private String catCE;
    @Column(length = 10)
    private String catC1E;
    @Column(length = 10)
    private String catD;
    @Column(length = 10)
    private String catD1;
    @Column(length = 10)
    private String catDE;
    @Column(length = 10)
    private String catD1E;
    @Column(length = 10)
    private String catT;


    @OneToMany(mappedBy = "instructor")
    private Set<InstructorCategories> categoriesSet = new HashSet<>();

    @ManyToMany
    @JoinTable(name = "instructor_client",
            joinColumns = @JoinColumn(name = "instructor_id"),
            inverseJoinColumns = @JoinColumn(name = "client_id"))
    private Set<Client> allClients = new HashSet<>();


}