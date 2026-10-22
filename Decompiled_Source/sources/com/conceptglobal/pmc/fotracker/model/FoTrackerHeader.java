package com.conceptglobal.pmc.fotracker.model;

/* loaded from: classes.dex */
public class FoTrackerHeader {
    private String ActualEndDate;
    private int CreatedBy;
    private String CreatedDate;
    private String EndDate;
    private int FoDistance;
    private int PdaId;
    private String ReasonType;
    private String Remarks;
    private String StartDate;
    private int TrackId;
    private int UpdatedBy;
    private String UpdatedDate;
    private int UserId;

    public int getFODistance() {
        return this.FoDistance;
    }

    public void setFODistance(int i) {
        this.FoDistance = i;
    }

    public int getTrackId() {
        return this.TrackId;
    }

    public void setTrackId(int i) {
        this.TrackId = i;
    }

    public int getUserId() {
        return this.UserId;
    }

    public void setUserId(int i) {
        this.UserId = i;
    }

    public int getPdaId() {
        return this.PdaId;
    }

    public void setPdaId(int i) {
        this.PdaId = i;
    }

    public String getStartDate() {
        return this.StartDate;
    }

    public void setStartDate(String str) {
        this.StartDate = str;
    }

    public String getEndDate() {
        return this.EndDate;
    }

    public void setEndDate(String str) {
        this.EndDate = str;
    }

    public String getRemarks() {
        return this.Remarks;
    }

    public void setRemarks(String str) {
        this.Remarks = str;
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

    public int getFoDistance() {
        return this.FoDistance;
    }

    public void setFoDistance(int i) {
        this.FoDistance = i;
    }

    public String getActualEndDate() {
        return this.ActualEndDate;
    }

    public void setActualEndDate(String str) {
        this.ActualEndDate = str;
    }

    public String getReasonType() {
        return this.ReasonType;
    }

    public void setReasonType(String str) {
        this.ReasonType = str;
    }
}
