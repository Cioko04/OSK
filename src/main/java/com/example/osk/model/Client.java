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
@Entity
@Table(name = "clients", uniqueConstraints = @UniqueConstraint(columnNames = "email"))
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
    @Column(length = 50)
    private String email;
    private boolean enabled;
    private String role;

    @ManyToMany(mappedBy = "allClients")
    private Set<Instructor> allInstructors = new HashSet<>();

    public Client(String name, String surname, Integer age, String password, String email, boolean enabled, Set<Instructor> allInstructors) {
        this.name = name;
        this.surname = surname;
        this.age = age;
        this.password = password;
        this.email = email;
        this.enabled = enabled;
        this.role = "ROLE_USER";
        this.allInstructors = new HashSet<>(allInstructors);

    }
}