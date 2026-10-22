package com.conceptglobal.pmc.fotracker.model;

/* loaded from: classes.dex */
public class FoTrackerTransactionDetails {
    private String endTime;
    private String startTime;
    private int trackerId;

    public int getTrackerId() {
        return this.trackerId;
    }

    public void setTrackerId(int i) {
        this.trackerId = i;
    }

    public String getStartTime() {
        return this.startTime;
    }

    public void setStartTime(String str) {
        this.startTime = str;
    }

    public String getEndTime() {
        return this.endTime;
    }

    public void setEndTime(String str) {
        this.endTime = str;
    }
}
