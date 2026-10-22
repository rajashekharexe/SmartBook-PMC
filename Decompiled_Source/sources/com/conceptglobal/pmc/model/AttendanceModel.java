package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class AttendanceModel {
    private int AttendanceID;
    public String EndLatitude;
    public String EndLocationAddress;
    public String EndLocationTime;
    public String EndLongitude;
    private String FromDate;
    private String LeaveType;
    private String NoOfDays;
    private String ReasonType;
    private String Remarks;
    public String StartLatitude;
    public String StartLocationAddress;
    public String StartLocationTime;
    public String StartLongitude;
    private String ToDate;
    public String TransId;
    public int createdby;
    public String createddate;
    public int endKM;
    public String pdaid;
    public int startKM;
    public int status;
    public int updatedby;
    public String updateddate;

    public int getStartKM() {
        return this.startKM;
    }

    public void setStartKM(int i) {
        this.startKM = i;
    }

    public int getEndKM() {
        return this.endKM;
    }

    public void setEndKM(int i) {
        this.endKM = i;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public String getStartLocationAddress() {
        return this.StartLocationAddress;
    }

    public void setStartLocationAddress(String str) {
        this.StartLocationAddress = str;
    }

    public String getEndLocationAddress() {
        return this.EndLocationAddress;
    }

    public void setEndLocationAddress(String str) {
        this.EndLocationAddress = str;
    }

    public String getStartLatitude() {
        return this.StartLatitude;
    }

    public void setStartLatitude(String str) {
        this.StartLatitude = str;
    }

    public String getStartLongitude() {
        return this.StartLongitude;
    }

    public void setStartLongitude(String str) {
        this.StartLongitude = str;
    }

    public String getEndLatitude() {
        return this.EndLatitude;
    }

    public void setEndLatitude(String str) {
        this.EndLatitude = str;
    }

    public String getEndLongitude() {
        return this.EndLongitude;
    }

    public void setEndLongitude(String str) {
        this.EndLongitude = str;
    }

    public String getStartLocationTime() {
        return this.StartLocationTime;
    }

    public void setStartLocationTime(String str) {
        this.StartLocationTime = str;
    }

    public String getEndLocationTime() {
        return this.EndLocationTime;
    }

    public void setEndLocationTime(String str) {
        this.EndLocationTime = str;
    }

    public String getTransId() {
        return this.TransId;
    }

    public void setTransId(String str) {
        this.TransId = str;
    }

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
