package com.example.osk.service;

import com.example.osk.model.Instructor;
import com.example.osk.web.dto.InstructorRegistrationDto;
import org.springframework.security.core.userdetails.UserDetailsService;


public interface InstructorService extends UserDetailsService {
    Instructor save(InstructorRegistrationDto instructorRegistrationDto);
}
