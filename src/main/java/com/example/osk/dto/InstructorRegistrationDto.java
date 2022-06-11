package com.example.osk.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class InstructorRegistrationDto {
    private String name;
    private String surname;
    private String description;
    private Integer age;
    private String categories;
    private String password;
    private String email;
    private String catA;
    private String catA_1;
    private String catA_2;
    private String catAM;
    private String catB;
    private String catB1;
    private String catBE;
    private String catC;
    private String catC1;
    private String catCE;
    private String catC1E;
    private String catD;
    private String catD1;
    private String catDE;
    private String catD1E;
    private String catT;

    public InstructorRegistrationDto(String name, String surname, String description, Integer age, String categories, String email, String catA, String catA_1, String catA_2, String catAM, String catB, String catB1, String catBE, String catC, String catC1, String catCE, String catC1E, String catD, String catD1, String catDE, String catD1E, String catT) {
        this.name = name;
        this.surname = surname;
        this.description = description;
        this.age = age;
        this.categories = categories;
        this.password = "admin";
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
    }
}

