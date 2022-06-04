package com.example.osk.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import javax.persistence.*;
import java.time.Month;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity(name = "work_days_logger")
public class Log {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "last_created_month")
    private Integer lastCreatedMonth;

    public Log(int lastCreatedMonth) {
        this.lastCreatedMonth = lastCreatedMonth;
    }
}