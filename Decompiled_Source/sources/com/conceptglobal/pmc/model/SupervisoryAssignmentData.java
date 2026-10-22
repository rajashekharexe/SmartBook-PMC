package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class SupervisoryAssignmentData {
    private int ActivitySegmentId;
    private String ActivitySegmentValue;
    private String activityassignmentid;
    private Double radius;

    public String getActivityassignmentid() {
        return this.activityassignmentid;
    }

    public void setActivityassignmentid(String str) {
        this.activityassignmentid = str;
    }

    public Double getRadius() {
        return this.radius;
    }

    public void setRadius(Double d) {
        this.radius = d;
    }

    public int getActivitySegmentId() {
        return this.ActivitySegmentId;
    }

    public void setActivitySegmentId(int i) {
        this.ActivitySegmentId = i;
    }

    public String getActivitySegmentValue() {
        return this.ActivitySegmentValue;
    }

    public void setActivitySegmentValue(String str) {
        this.ActivitySegmentValue = str;
    }
}
