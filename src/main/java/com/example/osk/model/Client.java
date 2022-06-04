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
@Entity(name = "clients")
public class Client {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(length = 10)
    private String name;
    @Column(length = 15)
    private String surname;
    @Column(length = 2)
    private Integer age;
    @Column(length = 250)
    private String password;

    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable(name = "clients_roles",
    joinColumns = @JoinColumn(name = "user_id", referencedColumnName = "id"),
    inverseJoinColumns = @JoinColumn(name = "role_id", referencedColumnName = "id"))
    private Set<Role> roles = new HashSet<>();

//    @ManyToMany(mappedBy = "allClients")
//    private Set<Instructor> allInstructors = new HashSet<>();

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.REFRESH, mappedBy = "client")
    private Set<TimeSlot> allTimeSlots = new HashSet<>();

    public Client(String name, String surname, Integer age, String password, List<Role> roles) {
        this.name = name;
        this.surname = surname;
        this.age = age;
        this.password = password;
        this.roles = new HashSet<>(roles);
//        this.allInstructors = new HashSet<>(allInstructors);
    }
}