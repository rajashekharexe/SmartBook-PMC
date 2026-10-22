package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class FBFActivityResolveTrackModel {
    private String ActivityAssignmentId;
    private int ActivityResolveId;
    private int CreatedBy;
    private String CreatedDate;
    private String ResolveRemarks;
    private String ResolvedBy;
    private String ResolvedName;
    private String ResolvedStatus;
    private String TransId;
    private int UpdatedBy;
    private String UpdatedDate;
    private String isSMSRequired;

    public String getIsSMSRequired() {
        return this.isSMSRequired;
    }

    public void setIsSMSRequired(String str) {
        this.isSMSRequired = str;
    }

    public String getResolvedStatus() {
        return this.ResolvedStatus;
    }

    public void setResolvedStatus(String str) {
        this.ResolvedStatus = str;
    }

    public String getActivityAssignmentId() {
        return this.ActivityAssignmentId;
    }

    public void setActivityAssignmentId(String str) {
        this.ActivityAssignmentId = str;
    }

    public int getActivityResolveId() {
        return this.ActivityResolveId;
    }

    public void setActivityResolveId(int i) {
        this.ActivityResolveId = i;
    }

    public String getTransId() {
        return this.TransId;
    }

    public void setTransId(String str) {
        this.TransId = str;
    }

    public String getResolvedBy() {
        return this.ResolvedBy;
    }

    public void setResolvedBy(String str) {
        this.ResolvedBy = str;
    }

    public String getResolveName() {
        return this.ResolvedName;
    }

    public void setResolveName(String str) {
        this.ResolvedName = str;
    }

    public String getResolveRemarks() {
        return this.ResolveRemarks;
    }

    public void setResolveRemarks(String str) {
        this.ResolveRemarks = str;
    }

    public int getCreatedBy() {
        return this.CreatedBy;
    }

    public void setCreatedBy(int i) {
        this.CreatedBy = i;
    }

    public String getCreatedDate() {
        return this.CreatedDate;
    }

    public void setCreatedDate(String str) {
        this.CreatedDate = str;
    }

    public int getUpdatedBy() {
        return this.UpdatedBy;
    }

    public void setUpdatedBy(int i) {
        this.UpdatedBy = i;
    }

    public String getUpdatedDate() {
        return this.UpdatedDate;
    }

    public void setUpdatedDate(String str) {
        this.UpdatedDate = str;
    }
}
