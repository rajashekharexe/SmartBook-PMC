package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class FarmerActivityCollection {
    private int activityId;
    private String assignmentID;
    private String attributeId;
    private String attributeValue;
    private String createdBy;
    private String createddate;
    private int detailsID;
    private int farmerId;
    private String isPlanned;
    private String pdaId;
    private String serverUpdatedStatus;
    private String updatedBy;
    private String updatedDate;

    public int getDetailsID() {
        return this.detailsID;
    }

    public void setDetailsID(int i) {
        this.detailsID = i;
    }

    public int getFarmerId() {
        return this.farmerId;
    }

    public void setFarmerId(int i) {
        this.farmerId = i;
    }

    public int getActivityId() {
        return this.activityId;
    }

    public void setActivityId(int i) {
        this.activityId = i;
    }

    public String getAttributeId() {
        return this.attributeId;
    }

    public void setAttributeId(String str) {
        this.attributeId = str;
    }

    public String getAttributeValue() {
        return this.attributeValue;
    }

    public void setAttributeValue(String str) {
        this.attributeValue = str;
    }

    public String getCreatedBy() {
        return this.createdBy;
    }

    public void setCreatedBy(String str) {
        this.createdBy = str;
    }

    public String getCreateddate() {
        return this.createddate;
    }

    public void setCreateddate(String str) {
        this.createddate = str;
    }

    public String getUpdatedBy() {
        return this.updatedBy;
    }

    public void setUpdatedBy(String str) {
        this.updatedBy = str;
    }

    public String getUpdatedDate() {
        return this.updatedDate;
    }

    public void setUpdatedDate(String str) {
        this.updatedDate = str;
    }

    public String getServerUpdatedStatus() {
        return this.serverUpdatedStatus;
    }

    public void setServerUpdatedStatus(String str) {
        this.serverUpdatedStatus = str;
    }

    public String getIsPlanned() {
        return this.isPlanned;
    }

    public void setIsPlanned(String str) {
        this.isPlanned = str;
    }

    public String getAssignmentID() {
        return this.assignmentID;
    }

    public void setAssignmentID(String str) {
        this.assignmentID = str;
    }

    public String getPdaId() {
        return this.pdaId;
    }

    public void setPdaId(String str) {
        this.pdaId = str;
    }
}
