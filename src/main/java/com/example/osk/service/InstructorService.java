package com.example.osk.service;

import com.example.osk.model.Instructor;
import com.example.osk.repository.InstructorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InstructorService {

    private final InstructorRepository instructorRepository;

    @Autowired
    public InstructorService(InstructorRepository instructorRepository) {
        this.instructorRepository = instructorRepository;
    }

    public void addInstructor(Instructor instructor) {
        this.instructorRepository.save(instructor);
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
}
