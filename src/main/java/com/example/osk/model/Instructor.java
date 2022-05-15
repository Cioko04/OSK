package com.example.osk.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import javax.persistence.*;
import java.util.HashSet;
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
    @Column(length = 10)
    private String categories;

    @ManyToMany
    @JoinTable(name = "instructor_client",
            joinColumns = @JoinColumn(name = "instructor_id"),
            inverseJoinColumns = @JoinColumn(name = "client_id"))
    private Set<Client> allClients = new HashSet<>();

}