package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class ApplyLeaveModel {
    private int AttendanceID;
    private String FromDate;
    private String LeaveType;
    private String NoOfDays;
    private String ReasonType;
    private String Remarks;
    private String ToDate;
    public int createdby;
    public String createddate;
    public String pdaid;
    public int updatedby;
    public String updateddate;

    public String getPdaid() {
        return this.pdaid;
    }

    public int getCreatedby() {
        return this.createdby;
    }

    public void setCreatedby(int i) {
        this.createdby = i;
    }

    public String getCreateddate() {
        return this.createddate;
    }

    public void setCreateddate(String str) {
        this.createddate = str;
    }

    public int getUpdatedby() {
        return this.updatedby;
    }

    public void setUpdatedby(int i) {
        this.updatedby = i;
    }

    public String getUpdateddate() {
        return this.updateddate;
    }

    public void setUpdateddate(String str) {
        this.updateddate = str;
    }

    public void setPdaid(String str) {
        this.pdaid = str;
    }

    public int getAttendanceID() {
        return this.AttendanceID;
    }

    public void setAttendanceID(int i) {
        this.AttendanceID = i;
    }

    public String getLeaveType() {
        return this.LeaveType;
    }

    public void setLeaveType(String str) {
        this.LeaveType = str;
    }

    public String getReasonType() {
        return this.ReasonType;
    }

    public void setReasonType(String str) {
        this.ReasonType = str;
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

    public String getNoOfDays() {
        return this.NoOfDays;
    }

    public void setNoOfDays(String str) {
        this.NoOfDays = str;
    }

    public String getRemarks() {
        return this.Remarks;
    }

    public void setRemarks(String str) {
        this.Remarks = str;
    }
}
