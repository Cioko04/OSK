package com.example.osk.repository;

import com.example.osk.model.WorkDay;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import java.time.LocalDate;
import java.util.List;

@Repository
public interface WorkDayRepository extends JpaRepository<WorkDay, Long> {

    @Query("SELECT w FROM workdays w WHERE w.id BETWEEN ?1 AND ?2")
    List<WorkDay> findWorkDaysBetweenIds (Long firstDay, Long seventhDay);

    @Query("SELECT w.id FROM workdays w WHERE w.certainDay = ?1")
    Long getIdOfCurrentDay(LocalDate date);
}