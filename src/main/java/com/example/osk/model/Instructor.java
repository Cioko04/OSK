package com.example.osk.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "instructors", uniqueConstraints = @UniqueConstraint(columnNames = "email"))
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
    @Column(length = 40)
    private String email;
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
    private boolean enabled;
    private String role;

    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable(name = "instructor_client",
            joinColumns = @JoinColumn(name = "instructor_id"),
            inverseJoinColumns = @JoinColumn(name = "client_id"))
    private Set<Client> allClients = new HashSet<>();

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.REFRESH, mappedBy = "instructor")
    private Set<TimeSlot> allTimeSlots = new HashSet<>();

    public Instructor(String name, String surname, String description, Integer age, String categories, String password, String email, String catA, String catA_1, String catA_2, String catAM, String catB, String catB1, String catBE, String catC, String catC1, String catCE, String catC1E, String catD, String catD1, String catDE, String catD1E, String catT, boolean enabled, List<Client> allClients) {
        this.name = name;
        this.surname = surname;
        this.description = description;
        this.age = age;
        this.categories = categories;
        this.password = password;
        this.email = email;
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
        this.enabled = enabled;
        this.role = "ROLE_ADMIN";
        this.allClients = new HashSet<>(allClients);
    }

    public boolean categoryChecker(String category) {
        switch (category) {
            case "A": return !(this.catA == null);
            case "A1": return !(this.catA_1 == null);
            case "A2": return !(this.catA_2 == null);
            case "AM": return !(this.catAM == null);
            case "B": return !(this.catB == null);
            case "B1": return !(this.catB1 == null);
            case "BE": return !(this.catBE == null);
            case "C": return !(this.catC == null);
            case "C1": return !(this.catC1 == null);
            case "CE": return !(this.catCE == null);
            case "C1E": return !(this.catC1E == null);
            case "D": return !(this.catD == null);
            case "D1": return !(this.catD1 == null);
            case "DE": return !(this.catDE == null);
            case "D1E": return !(this.catD1E == null);
            case "T": return !(this.catT == null);
            default: return false;
        }
    }
}