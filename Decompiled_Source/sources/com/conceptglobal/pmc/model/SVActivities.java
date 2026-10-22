package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class SVActivities {
    public int ActivityId;
    public int AssignmentId;
    public int FarmerId;
    public int SVPDAId;
    private int isMBA;

    public int getIsMBA() {
        return this.isMBA;
    }

    public void setIsMBA(int i) {
        this.isMBA = i;
    }

    public int getFarmerId() {
        return this.FarmerId;
    }

    public void setFarmerId(int i) {
        this.FarmerId = i;
    }

    public int getActivityId() {
        return this.ActivityId;
    }

    public void setActivityId(int i) {
        this.ActivityId = i;
    }

    public int getAssignmentId() {
        return this.AssignmentId;
    }

    public void setAssignmentId(int i) {
        this.AssignmentId = i;
    }

    public int getSVPDAId() {
        return this.SVPDAId;
    }

    public void setSVPDAId(int i) {
        this.SVPDAId = i;
    }
}
