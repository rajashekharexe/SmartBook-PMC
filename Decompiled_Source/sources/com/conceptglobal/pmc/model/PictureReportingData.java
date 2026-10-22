package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class PictureReportingData {
    private String PDAID;
    private String ReferenceID;
    private String ReferenceType;
    private String activityId;
    private String assignmentId;
    private String attributeId;
    private String comments;
    private String createdBy;
    private String createdDate;
    private long imageId;
    private String pdaCreatedDate;
    private String picturePath;
    private String remarks;
    private String resField1;
    private String serverStatus;
    private String subJect;
    private String updatedBy;
    private String updatedDate;

    public String getReferenceType() {
        return this.ReferenceType;
    }

    public void setReferenceType(String str) {
        this.ReferenceType = str;
    }

    public String getReferenceID() {
        return this.ReferenceID;
    }

    public void setReferenceID(String str) {
        this.ReferenceID = str;
    }

    public String getServerStatus() {
        return this.serverStatus;
    }

    public void setServerStatus(String str) {
        this.serverStatus = str;
    }

    public long getImageId() {
        return this.imageId;
    }

    public void setImageId(long j) {
        this.imageId = j;
    }

    public String getAssignmentId() {
        return this.assignmentId;
    }

    public void setAssignmentId(String str) {
        this.assignmentId = str;
    }

    public String getActivityId() {
        return this.activityId;
    }

    public void setActivityId(String str) {
        this.activityId = str;
    }

    public String getAttributeId() {
        return this.attributeId;
    }

    public void setAttributeId(String str) {
        this.attributeId = str;
    }

    public String getSubJect() {
        return this.subJect;
    }

    public void setSubJect(String str) {
        this.subJect = str;
    }

    public String getComments() {
        return this.comments;
    }

    public void setComments(String str) {
        this.comments = str;
    }

    public String getRemarks() {
        return this.remarks;
    }

    public void setRemarks(String str) {
        this.remarks = str;
    }

    public String getPicturePath() {
        return this.picturePath;
    }

    public void setPicturePath(String str) {
        this.picturePath = str;
    }

    public String getResField1() {
        return this.resField1;
    }

    public void setResField1(String str) {
        this.resField1 = str;
    }

    public String getPdaCreatedDate() {
        return this.pdaCreatedDate;
    }

    public void setPdaCreatedDate(String str) {
        this.pdaCreatedDate = str;
    }

    public String getPDAID() {
        return this.PDAID;
    }

    public void setPDAID(String str) {
        this.PDAID = str;
    }

    public String getCreatedBy() {
        return this.createdBy;
    }

    public void setCreatedBy(String str) {
        this.createdBy = str;
    }

    public String getCreatedDate() {
        return this.createdDate;
    }

    public void setCreatedDate(String str) {
        this.createdDate = str;
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
}
