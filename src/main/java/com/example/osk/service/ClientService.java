package com.example.osk.service;


import com.example.osk.dto.ClientRegistrationDto;
import com.example.osk.model.Client;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

@Service
public interface ClientService extends UserDetailsService {
    Client save(ClientRegistrationDto clientRegistrationDto);

}
