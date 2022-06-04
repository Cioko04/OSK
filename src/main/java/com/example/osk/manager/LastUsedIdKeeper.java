package com.example.osk.manager;

public class LastUsedIdKeeper {

    private static Long lastFetched7daysLastDayId;

    public static void setLastFetched7daysLastDayId(Long newID) {
        if (lastFetched7daysLastDayId != newID) {
            lastFetched7daysLastDayId = newID;
        }
    }

    public static void incrementIdBySeven() {
        lastFetched7daysLastDayId +=7;
    }

    public static void decrementIdBySeven() {
        lastFetched7daysLastDayId -=7;
    }

    public static Long getLastUsedID() {
        return lastFetched7daysLastDayId;
    }

}
