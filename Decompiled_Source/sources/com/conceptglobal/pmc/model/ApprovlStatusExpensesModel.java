package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class ApprovlStatusExpensesModel {
    private String ActivityAssignmentidApprovedBy;
    private int ApprovedBy;
    private int ParentActivityAssignmentID;
    private String TransId;
    private int activityassignmentid;
    private int isApproved;

    public String getTransId() {
        return this.TransId;
    }

    public void setTransId(String str) {
        this.TransId = str;
    }

    public int getActivityassignmentid() {
        return this.activityassignmentid;
    }

    public void setActivityassignmentid(int i) {
        this.activityassignmentid = i;
    }

    public int getParentActivityAssignmentID() {
        return this.ParentActivityAssignmentID;
    }

    public void setParentActivityAssignmentID(int i) {
        this.ParentActivityAssignmentID = i;
    }

    public int getIsApproved() {
        return this.isApproved;
    }

    public void setIsApproved(int i) {
        this.isApproved = i;
    }

    public int getApprovedBy() {
        return this.ApprovedBy;
    }

    public void setApprovedBy(int i) {
        this.ApprovedBy = i;
    }

    public String getActivityAssignmentidApprovedBy() {
        return this.ActivityAssignmentidApprovedBy;
    }

    public void setActivityAssignmentidApprovedBy(String str) {
        this.ActivityAssignmentidApprovedBy = str;
    }
}
