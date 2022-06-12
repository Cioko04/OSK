package com.example.osk.repository;

import com.example.osk.model.TimeSlot;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface TimeSlotRepository extends JpaRepository<TimeSlot, Long> {

    @Query("SELECT t FROM timeslots t WHERE t.instructor.id = ?1")
    List<TimeSlot> findTimeslotsByInstructorId (Long instructorId);
}