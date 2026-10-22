package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class SuperwiserFarmerList {
    private int AssignmentFlag;
    private String activityName;
    private boolean checked;
    private int farmerId;
    private String farmerName;
    private String fatherName;
    private int isChangedFlag;
    private String mobile;
    private int recordFlag;
    private String serverUpdatedStatus;
    private String surName;

    public boolean isChecked() {
        return this.checked;
    }

    public void setChecked(boolean z) {
        this.checked = z;
    }

    public int getFarmerId() {
        return this.farmerId;
    }

    public void setFarmerId(int i) {
        this.farmerId = i;
    }

    public int getRecordFlag() {
        return this.recordFlag;
    }

    public void setRecordFlag(int i) {
        this.recordFlag = i;
    }

    public String getFarmerName() {
        return this.farmerName;
    }

    public void setFarmerName(String str) {
        this.farmerName = str;
    }

    public String getSurName() {
        return this.surName;
    }

    public void setSurName(String str) {
        this.surName = str;
    }

    public String getFatherName() {
        return this.fatherName;
    }

    public void setFatherName(String str) {
        this.fatherName = str;
    }

    public String getMobile() {
        return this.mobile;
    }

    public void setMobile(String str) {
        this.mobile = str;
    }

    public int getAssignmentFlag() {
        return this.AssignmentFlag;
    }

    public void setAssignmentFlag(int i) {
        this.AssignmentFlag = i;
    }

    public String getActivityName() {
        return this.activityName;
    }

    public void setActivityName(String str) {
        this.activityName = str;
    }

    public String getServerUpdatedStatus() {
        return this.serverUpdatedStatus;
    }

    public void setServerUpdatedStatus(String str) {
        this.serverUpdatedStatus = str;
    }

    public int isChangedFlag() {
        return this.isChangedFlag;
    }

    public void setChangedFlag(int i) {
        this.isChangedFlag = i;
    }
}
