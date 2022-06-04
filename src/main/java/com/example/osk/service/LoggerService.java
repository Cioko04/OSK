package com.example.osk.service;

import com.example.osk.model.Log;
import com.example.osk.repository.LoggerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class LoggerService {

    private final LoggerRepository loggerRepository;

    @Autowired
    public LoggerService(LoggerRepository loggerRepository) {
        this.loggerRepository = loggerRepository;
    }

    public int getLastLog() {
        List<Log> logList = this.loggerRepository.findAll();
        return logList.get(logList.size() - 1).getLastCreatedMonth();
    }

    public void saveLog(Log newLog) {
        this.loggerRepository.save(newLog);
    }
}