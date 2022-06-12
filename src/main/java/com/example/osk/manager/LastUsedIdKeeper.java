package com.example.osk.manager;

import java.util.Objects;

public class LastUsedIdKeeper {

    private static Long lastFetched7daysLastDayId;

    public static void setLastUsedID(Long newID) {
        if (!Objects.equals(lastFetched7daysLastDayId, newID)) {
            lastFetched7daysLastDayId = newID;
        }
    }

    public static Long getLastUsedID() {
        return lastFetched7daysLastDayId;
    }

}