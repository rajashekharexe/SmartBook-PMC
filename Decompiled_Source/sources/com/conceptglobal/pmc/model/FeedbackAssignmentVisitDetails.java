package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class FeedbackAssignmentVisitDetails {
    private int ActivitySegmentId;
    private String ActivitySegmentValue;
    private String GPSTimeStamp;
    private String TransId;
    private int activityAssignmentId;
    private int assignmentId;
    private int createdBy;
    private String createdDate;
    private double latitude;
    private double longitude;
    private int pdaId;
    private String remarks;
    private String serverUpdatedStatus;
    private int updatedBy;
    private String updatedDate;
    private String visitDescription;
    private int visitId;

    public String getGPSTimeStamp() {
        return this.GPSTimeStamp;
    }

    public void setGPSTimeStamp(String str) {
        this.GPSTimeStamp = str;
    }

    public int getVisitId() {
        return this.visitId;
    }

    public void setVisitId(int i) {
        this.visitId = i;
    }

    public int getAssignmentId() {
        return this.assignmentId;
    }

    public void setAssignmentId(int i) {
        this.assignmentId = i;
    }

    public String getVisitDescription() {
        return this.visitDescription;
    }

    public void setVisitDescription(String str) {
        this.visitDescription = str;
    }

    public String getCreatedDate() {
        return this.createdDate;
    }

    public void setCreatedDate(String str) {
        this.createdDate = str;
    }

    public int getCreatedBy() {
        return this.createdBy;
    }

    public void setCreatedBy(int i) {
        this.createdBy = i;
    }

    public String getUpdatedDate() {
        return this.updatedDate;
    }

    public void setUpdatedDate(String str) {
        this.updatedDate = str;
    }

    public int getUpdatedBy() {
        return this.updatedBy;
    }

    public void setUpdatedBy(int i) {
        this.updatedBy = i;
    }

    public String getServerUpdatedStatus() {
        return this.serverUpdatedStatus;
    }

    public void setServerUpdatedStatus(String str) {
        this.serverUpdatedStatus = str;
    }

    public int getPdaId() {
        return this.pdaId;
    }

    public void setPdaId(int i) {
        this.pdaId = i;
    }

    public String getRemarks() {
        return this.remarks;
    }

    public void setRemarks(String str) {
        this.remarks = str;
    }

    public double getLatitude() {
        return this.latitude;
    }

    public void setLatitude(double d) {
        this.latitude = d;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public void setLongitude(double d) {
        this.longitude = d;
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

    public String getTransactionId() {
        return this.TransId;
    }

    public void setTransactionId(String str) {
        this.TransId = str;
    }

    public int getActivityAssignmentId() {
        return this.activityAssignmentId;
    }

    public void setActivityAssignmentId(int i) {
        this.activityAssignmentId = i;
    }
}
