package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class ComplaintInfoModel {
    int ActivityAssignmentId;
    String CreatedBy;
    String CreatedDate;
    int IsExpired;
    int IsSMSRequired;
    int PdaId;
    int ResolveStatus;
    String ResolverComments;
    long TransId;
    String UpdatedBy;
    String UpdatedDate;
    int UserId;

    public long getTransId() {
        return this.TransId;
    }

    public void setTransId(long j) {
        this.TransId = j;
    }

    public int getActivityAssignmentId() {
        return this.ActivityAssignmentId;
    }

    public void setActivityAssignmentId(int i) {
        this.ActivityAssignmentId = i;
    }

    public int getUserId() {
        return this.UserId;
    }

    public void setUserId(int i) {
        this.UserId = i;
    }

    public String getResolverComments() {
        return this.ResolverComments;
    }

    public void setResolverComments(String str) {
        this.ResolverComments = str;
    }

    public int getPdaId() {
        return this.PdaId;
    }

    public void setPdaId(int i) {
        this.PdaId = i;
    }

    public int getIsExpired() {
        return this.IsExpired;
    }

    public void setIsExpired(int i) {
        this.IsExpired = i;
    }

    public int getIsSMSRequired() {
        return this.IsSMSRequired;
    }

    public void setIsSMSRequired(int i) {
        this.IsSMSRequired = i;
    }

    public int getResolveStatus() {
        return this.ResolveStatus;
    }

    public void setResolveStatus(int i) {
        this.ResolveStatus = i;
    }

    public String getCreatedBy() {
        return this.CreatedBy;
    }

    public void setCreatedBy(String str) {
        this.CreatedBy = str;
    }

    public String getCreatedDate() {
        return this.CreatedDate;
    }

    public void setCreatedDate(String str) {
        this.CreatedDate = str;
    }

    public String getUpdatedBy() {
        return this.UpdatedBy;
    }

    public void setUpdatedBy(String str) {
        this.UpdatedBy = str;
    }

    public String getUpdatedDate() {
        return this.UpdatedDate;
    }

    public void setUpdatedDate(String str) {
        this.UpdatedDate = str;
    }
}
