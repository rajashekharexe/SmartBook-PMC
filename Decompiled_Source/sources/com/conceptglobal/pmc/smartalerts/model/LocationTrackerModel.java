package com.conceptglobal.pmc.smartalerts.model;

/* loaded from: classes.dex */
public class LocationTrackerModel implements Comparable<LocationTrackerModel> {
    private String Address;
    private String date;
    private String target;
    private String worked;

    @Override // java.lang.Comparable
    public int compareTo(LocationTrackerModel locationTrackerModel) {
        return 0;
    }

    public String toString() {
        return null;
    }

    public String getDate() {
        return this.date;
    }

    public void setDate(String str) {
        this.date = str;
    }

    public String getWorked() {
        return this.worked;
    }

    public void setWorked(String str) {
        this.worked = str;
    }

    public String getTarget() {
        return this.target;
    }

    public void setTarget(String str) {
        this.target = str;
    }

    public String getAddress() {
        return this.Address;
    }

    public void setAddress(String str) {
        this.Address = str;
    }

    public LocationTrackerModel() {
        this.date = null;
        this.worked = null;
        this.target = null;
        this.Address = null;
    }

    public LocationTrackerModel(String str, String str2, String str3, String str4) {
        this.date = str;
        this.worked = str2;
        this.target = str3;
        this.Address = str4;
    }
}
