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

    public ClientRegistrationDto(String name, String surname, int age) {
        this.name = name;
        this.surname = surname;
        this.age = age;
        this.password = "user";
    }
}
