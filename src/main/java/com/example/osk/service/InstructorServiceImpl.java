package com.example.osk.service;

import com.example.osk.model.Client;
import com.example.osk.model.Instructor;
import com.example.osk.model.Role;
import com.example.osk.repository.InstructorRepository;
import com.example.osk.web.dto.InstructorRegistrationDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class InstructorServiceImpl implements InstructorService{

    private final InstructorRepository instructorRepository;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;

    @Autowired
    public InstructorServiceImpl(InstructorRepository instructorRepository, BCryptPasswordEncoder bCryptPasswordEncoder) {
        this.instructorRepository = instructorRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }

    public Instructor getInstructor(Long id) {
        return this.instructorRepository.findById(id).orElse(null);
    }

    public List<Instructor> getAllInstructors() {
        return this.instructorRepository.findAll();
    }

    public void editInstructor(Instructor instructor) {
        this.instructorRepository.save(instructor);
    }

    public void deleteInstructor(Long id) {
        this.instructorRepository.deleteById(id);
    }
    public Long getCountOfInstructors(){
        return this.instructorRepository.count();
    }


    @Override
    public Instructor save(InstructorRegistrationDto instructorRegistrationDto) {
        Instructor instructor = new Instructor(instructorRegistrationDto.getName(),
                instructorRegistrationDto.getSurname(),
                instructorRegistrationDto.getDescription(),
                instructorRegistrationDto.getAge(),
                instructorRegistrationDto.getCategories(),
                bCryptPasswordEncoder.encode(instructorRegistrationDto.getPassword()),
                instructorRegistrationDto.getCatA(),
                instructorRegistrationDto.getCatA_1(),
                instructorRegistrationDto.getCatA_2(),
                instructorRegistrationDto.getCatAM(),
                instructorRegistrationDto.getCatB(),
                instructorRegistrationDto.getCatB1(),
                instructorRegistrationDto.getCatBE(),
                instructorRegistrationDto.getCatC(),
                instructorRegistrationDto.getCatC1(),
                instructorRegistrationDto.getCatCE(),
                instructorRegistrationDto.getCatC1E(),
                instructorRegistrationDto.getCatD(),
                instructorRegistrationDto.getCatD1(),
                instructorRegistrationDto.getCatDE(),
                instructorRegistrationDto.getCatD1E(),
                instructorRegistrationDto.getCatT(),
                List.of(new Role("ROLE_ADMIN")),
                List.of());
        return instructorRepository.save(instructor);
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Instructor instructor = instructorRepository.findByName(username);
        if (instructor == null){
            throw new UsernameNotFoundException("Ivalid username or password.");
        }
        return new org.springframework.security.core.userdetails.User(
                instructor.getName(),
                instructor.getPassword(),
                mapRolesToAuthorities(instructor.getRoles()));
    }
    private Collection<? extends GrantedAuthority> mapRolesToAuthorities(Collection<Role> roles){
        return  roles.stream().map(role -> new SimpleGrantedAuthority(role.getName())).collect(Collectors.toList());
    }
}
