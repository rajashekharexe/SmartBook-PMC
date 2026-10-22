package com.conceptglobal.pmc.attendance;

/* loaded from: classes.dex */
public class AttendanceItem {
    private String date;
    private String distance;
    private boolean isChecked;
    private String nighthalt;
    private String title;
    private String transID;

    public boolean isChecked() {
        return this.isChecked;
    }

    public void setChecked(boolean z) {
        this.isChecked = z;
    }

    public String getTransID() {
        return this.transID;
    }

    public void setTransID(String str) {
        this.transID = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getDate() {
        return this.date;
    }

    public void setDate(String str) {
        this.date = str;
    }

    public String getDistance() {
        return this.distance;
    }

    public void setDistance(String str) {
        this.distance = str;
    }

    public String getNighthalt() {
        return this.nighthalt;
    }

    public void setNighthalt(String str) {
        this.nighthalt = str;
    }
}
