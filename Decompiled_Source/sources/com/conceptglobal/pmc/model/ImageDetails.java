package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class ImageDetails {
    private int AttributeId;
    private String Comments;
    private int ContentTypeId;
    private int FarmerId;
    private long IdTransid;
    private boolean IsCompressed;
    private String Remarks;
    private String Subject;
    private int activityId;
    private int assignmentId;
    private String createdBy;
    private String ctreatedDate;
    private int eventTypeId;
    private long imageId;
    private int pdaID;
    private String picturePath;
    private String referenceId;
    private String referenceType;
    private String updatedBy;
    private String updatedDate;

    public long getIdTransid() {
        return this.IdTransid;
    }

    public void setIdTransid(long j) {
        this.IdTransid = j;
    }

    public int getContentTypeId() {
        return this.ContentTypeId;
    }

    public void setContentTypeId(int i) {
        this.ContentTypeId = i;
    }

    public long getImageId() {
        return this.imageId;
    }

    public void setImageId(long j) {
        this.imageId = j;
    }

    public int getAssignmentId() {
        return this.assignmentId;
    }

    public void setAssignmentId(int i) {
        this.assignmentId = i;
    }

    public int getActivityId() {
        return this.activityId;
    }

    public void setActivityId(int i) {
        this.activityId = i;
    }

    public int getAttributeId() {
        return this.AttributeId;
    }

    public void setAttributeId(int i) {
        this.AttributeId = i;
    }

    public String getSubject() {
        return this.Subject;
    }

    public void setSubject(String str) {
        this.Subject = str;
    }

    public String getComments() {
        return this.Comments;
    }

    public void setComments(String str) {
        this.Comments = str;
    }

    public String getRemarks() {
        return this.Remarks;
    }

    public void setRemarks(String str) {
        this.Remarks = str;
    }

    public int getFarmerId() {
        return this.FarmerId;
    }

    public void setFarmerId(int i) {
        this.FarmerId = i;
    }

    public String getPicturePath() {
        return this.picturePath;
    }

    public void setPicturePath(String str) {
        this.picturePath = str;
    }

    public int getPdaID() {
        return this.pdaID;
    }

    public void setPdaID(int i) {
        this.pdaID = i;
    }

    public String getCreatedBy() {
        return this.createdBy;
    }

    public void setCreatedBy(String str) {
        this.createdBy = str;
    }

    public String getCtreatedDate() {
        return this.ctreatedDate;
    }

    public void setCtreatedDate(String str) {
        this.ctreatedDate = str;
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

    public String getReferenceId() {
        return this.referenceId;
    }

    public void setReferenceId(String str) {
        this.referenceId = str;
    }

    public String getReferenceType() {
        return this.referenceType;
    }

    public void setReferenceType(String str) {
        this.referenceType = str;
    }

    public int getEventTypeId() {
        return this.eventTypeId;
    }

    public void setEventTypeId(int i) {
        this.eventTypeId = i;
    }

    public boolean isCompressed() {
        return this.IsCompressed;
    }

    public void setCompressed(boolean z) {
        this.IsCompressed = z;
    }
}
