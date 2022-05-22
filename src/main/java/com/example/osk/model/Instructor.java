package com.example.osk.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import javax.persistence.*;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
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
    @Column(length = 250)
    private String password;
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

    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable(name = "instructors_roles",
            joinColumns = @JoinColumn(name = "instructor_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "role_id", referencedColumnName = "id"))
    private Set<Role> roles = new HashSet<>();


    @ManyToMany
    @JoinTable(name = "instructor_client",
            joinColumns = @JoinColumn(name = "instructor_id"),
            inverseJoinColumns = @JoinColumn(name = "client_id"))
    private Set<Client> allClients = new HashSet<>();


    public Instructor(String name, String surname, String description, Integer age, String categories, String password, String catA, String catA_1, String catA_2, String catAM, String catB, String catB1, String catBE, String catC, String catC1, String catCE, String catC1E, String catD, String catD1, String catDE, String catD1E, String catT, List<Role> roles, List<Client> allClients) {
        this.name = name;
        this.surname = surname;
        this.description = description;
        this.age = age;
        this.categories = categories;
        this.password = password;
        this.catA = catA;
        this.catA_1 = catA_1;
        this.catA_2 = catA_2;
        this.catAM = catAM;
        this.catB = catB;
        this.catB1 = catB1;
        this.catBE = catBE;
        this.catC = catC;
        this.catC1 = catC1;
        this.catCE = catCE;
        this.catC1E = catC1E;
        this.catD = catD;
        this.catD1 = catD1;
        this.catDE = catDE;
        this.catD1E = catD1E;
        this.catT = catT;
        this.roles = new HashSet<>(roles);
        this.allClients = new HashSet<>(allClients);
    }
}