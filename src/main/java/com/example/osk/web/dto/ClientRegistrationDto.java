package com.example.osk.web.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ClientRegistrationDto {
    private String name;
    private String surname;
    private int age;
    private String password;
    private String email;

    public ClientRegistrationDto(String name, String surname, int age, String email) {
        this.name = name;
        this.surname = surname;
        this.age = age;
        this.password = "user";
        this.email = email;
    }
}
