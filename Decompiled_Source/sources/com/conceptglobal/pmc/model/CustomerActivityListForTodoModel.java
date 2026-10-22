package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class CustomerActivityListForTodoModel {
    private String ActivityAssignmentId;
    private String ActivityId;
    private String FromDate;
    private String ParentSegmentTypeValue;
    private int SegmentId;
    private String SegmentTypeValue;
    private String ToDate;
    private String phoneNumber;
    private String serverUpdatedStatus;

    public int getSegmentId() {
        return this.SegmentId;
    }

    public void setSegmentId(int i) {
        this.SegmentId = i;
    }

    public String getSegmentTypeValue() {
        return this.SegmentTypeValue;
    }

    public void setSegmentTypeValue(String str) {
        this.SegmentTypeValue = str;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public void setPhoneNumber(String str) {
        this.phoneNumber = str;
    }

    public String getFromDate() {
        return this.FromDate;
    }

    public void setFromDate(String str) {
        this.FromDate = str;
    }

    public String getToDate() {
        return this.ToDate;
    }

    public void setToDate(String str) {
        this.ToDate = str;
    }

    public String getActivityId() {
        return this.ActivityId;
    }

    public void setActivityId(String str) {
        this.ActivityId = str;
    }

    public String getParentSegmentTypeValue() {
        return this.ParentSegmentTypeValue;
    }

    public void setParentSegmentTypeValue(String str) {
        this.ParentSegmentTypeValue = str;
    }

    public String getServerUpdatedStatus() {
        return this.serverUpdatedStatus;
    }

    public void setServerUpdatedStatus(String str) {
        this.serverUpdatedStatus = str;
    }

    public String getActivityAssignmentId() {
        return this.ActivityAssignmentId;
    }

    public void setActivityAssignmentId(String str) {
        this.ActivityAssignmentId = str;
    }
}
