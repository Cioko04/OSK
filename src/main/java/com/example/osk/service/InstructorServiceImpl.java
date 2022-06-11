package com.example.osk.service;

import com.example.osk.security.InstructorDetails;
import com.example.osk.dto.InstructorRegistrationDto;
import com.example.osk.model.Instructor;
import com.example.osk.repository.InstructorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.regex.Pattern;

@Component
public class InstructorServiceImpl implements InstructorService {

    private final InstructorRepository instructorRepository;
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Autowired
    public InstructorServiceImpl(InstructorRepository instructorRepository) {
        this.instructorRepository = instructorRepository;
    }

    @Autowired
    public void setbCryptPasswordEncoder(BCryptPasswordEncoder bCryptPasswordEncoder) {
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }

    public Instructor getInstructor(Long id) {
        return this.instructorRepository.findById(id).orElse(null);
    }

    public Instructor getInstructorByEmail(String email) {

        return this.instructorRepository.findByEmail(email);
    }

    public List<Instructor> getAllInstructors() {
        return this.instructorRepository.findAll();
    }

    public void editInstructor(Instructor instructor) {
        System.out.println(instructor.getPassword());
        Pattern BCRYPT_PATTERN = Pattern.compile("\\A\\$2a?\\$\\d\\d\\$[./0-9A-Za-z]{53}");
        if (!BCRYPT_PATTERN.matcher(instructor.getPassword()).matches()) {
            instructor.setPassword(bCryptPasswordEncoder.encode(instructor.getPassword()));
        }
        this.instructorRepository.save(instructor);
    }

    public void deleteInstructor(Long id) {
        this.instructorRepository.deleteById(id);
    }

    public Long getCountOfInstructors() {
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
                instructorRegistrationDto.getEmail(),
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
                true,
                List.of());
        return instructorRepository.save(instructor);
    }

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        Instructor instructor = instructorRepository.findByEmail(email);
        if (instructor == null) {
            throw new UsernameNotFoundException("Ivalid username or password.");
        }
        return new InstructorDetails(instructor);
    }

}
