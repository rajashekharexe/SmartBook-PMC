package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class FarmerActivityDetailsModel {
    private String ActivityAssignmentId;
    private int ActivityAttributeId;
    private int ActivityExecutionSegmentId;
    private String ActivityExecutionSegmentValue;
    private int ActivityMasterId;
    private int ActivitySegmentId;
    private String ActivitySegmentName;
    private String ActivitySegmentValue;
    private String ExecutionDate;
    private int PairId;
    private String TransId;
    private String attributeValue;
    private int createdBy;
    private String createddate;
    private int detailsID;
    private String isDone;
    private String isPlanned;
    private int isTransactionDone;
    private String notdoneRemark;
    private String pdaId;
    private String serverUpdatedStatus;
    private int updatedBy;
    private String updatedDate;

    public int getDetailsID() {
        return this.detailsID;
    }

    public void setDetailsID(int i) {
        this.detailsID = i;
    }

    public int getActivitySegmentId() {
        return this.ActivitySegmentId;
    }

    public void setActivitySegmentId(int i) {
        this.ActivitySegmentId = i;
    }

    public int getActivityMasterId() {
        return this.ActivityMasterId;
    }

    public void setActivityMasterId(int i) {
        this.ActivityMasterId = i;
    }

    public String getAttributeValue() {
        return this.attributeValue;
    }

    public void setAttributeValue(String str) {
        this.attributeValue = str;
    }

    public String getIsDone() {
        return this.isDone;
    }

    public void setIsDone(String str) {
        this.isDone = str;
    }

    public int getCreatedBy() {
        return this.createdBy;
    }

    public void setCreatedBy(int i) {
        this.createdBy = i;
    }

    public String getCreateddate() {
        return this.createddate;
    }

    public void setCreateddate(String str) {
        this.createddate = str;
    }

    public int getUpdatedBy() {
        return this.updatedBy;
    }

    public void setUpdatedBy(int i) {
        this.updatedBy = i;
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

    public String getPdaId() {
        return this.pdaId;
    }

    public void setPdaId(String str) {
        this.pdaId = str;
    }

    public String getNotdoneRemark() {
        return this.notdoneRemark;
    }

    public void setNotdoneRemark(String str) {
        this.notdoneRemark = str;
    }

    public String getActivitySegmentValue() {
        return this.ActivitySegmentValue;
    }

    public void setActivitySegmentValue(String str) {
        this.ActivitySegmentValue = str;
    }

    public String getActivityAssignmentId() {
        return this.ActivityAssignmentId;
    }

    public void setActivityAssignmentId(String str) {
        this.ActivityAssignmentId = str;
    }

    public int getActivityAttributeId() {
        return this.ActivityAttributeId;
    }

    public void setActivityAttributeId(int i) {
        this.ActivityAttributeId = i;
    }

    public String getActivitySegmentName() {
        return this.ActivitySegmentName;
    }

    public void setActivitySegmentName(String str) {
        this.ActivitySegmentName = str;
    }

    public String getTransId() {
        return this.TransId;
    }

    public void setTransId(String str) {
        this.TransId = str;
    }

    public int getPairId() {
        return this.PairId;
    }

    public void setPairId(int i) {
        this.PairId = i;
    }

    public int getIsTransactionDone() {
        return this.isTransactionDone;
    }

    public void setIsTransactionDone(int i) {
        this.isTransactionDone = i;
    }

    public int getActivityExecutionSegmentId() {
        return this.ActivityExecutionSegmentId;
    }

    public void setActivityExecutionSegmentId(int i) {
        this.ActivityExecutionSegmentId = i;
    }

    public String getActivityExecutionSegmentValue() {
        return this.ActivityExecutionSegmentValue;
    }

    public void setActivityExecutionSegmentValue(String str) {
        this.ActivityExecutionSegmentValue = str;
    }

    public String getExecutionDate() {
        return this.ExecutionDate;
    }

    public void setExecutionDate(String str) {
        this.ExecutionDate = str;
    }
}
