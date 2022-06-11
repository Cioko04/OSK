package com.example.osk.service;

import com.example.osk.dto.InstructorRegistrationDto;
import com.example.osk.model.Instructor;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

@Service
public interface InstructorService extends UserDetailsService {
    Instructor save(InstructorRegistrationDto instructorRegistrationDto);
}
