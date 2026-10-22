package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class TimeDetails {
    private String GPSEndTime;
    private String GPSStartTime;
    private String mobileEndTime;
    private String mobileStartTime;

    public String getMobileStartTime() {
        return this.mobileStartTime;
    }

    public void setMobileStartTime(String str) {
        this.mobileStartTime = str;
    }

    public String getMobileEndTime() {
        return this.mobileEndTime;
    }

    public void setMobileEndTime(String str) {
        this.mobileEndTime = str;
    }

    public String getGPSStartTime() {
        return this.GPSStartTime;
    }

    public void setGPSStartTime(String str) {
        this.GPSStartTime = str;
    }

    public String getGPSEndTime() {
        return this.GPSEndTime;
    }

    public void setGPSEndTime(String str) {
        this.GPSEndTime = str;
    }
}
