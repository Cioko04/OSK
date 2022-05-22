package com.example.osk.service;


import com.example.osk.model.Client;
import com.example.osk.web.dto.ClientRegistrationDto;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface ClientService extends UserDetailsService {
    Client save(ClientRegistrationDto registrationDto);
}
