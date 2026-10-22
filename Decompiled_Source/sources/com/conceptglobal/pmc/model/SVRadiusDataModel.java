package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class SVRadiusDataModel {
    private String Latitude;
    private String Longitude;
    private String activityassignmentid;
    private Double radius;

    public String getActivityassignmentid() {
        return this.activityassignmentid;
    }

    public void setActivityassignmentid(String str) {
        this.activityassignmentid = str;
    }

    public String getLatitude() {
        return this.Latitude;
    }

    public void setLatitude(String str) {
        this.Latitude = str;
    }

    public String getLongitude() {
        return this.Longitude;
    }

    public void setLongitude(String str) {
        this.Longitude = str;
    }

    public Double getRadius() {
        return this.radius;
    }

    public void setRadius(Double d) {
        this.radius = d;
    }
}
