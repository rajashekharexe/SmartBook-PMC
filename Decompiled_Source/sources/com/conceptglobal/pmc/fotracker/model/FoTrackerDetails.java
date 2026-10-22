package com.conceptglobal.pmc.fotracker.model;

/* loaded from: classes.dex */
public class FoTrackerDetails {
    private int CreatedBy;
    private String CreatedDate;
    private int DetailsId;
    private String Latitude;
    private String Longitude;
    private int PdaId;
    private int SyncStatus;
    private int TrackId;
    private int UpdatedBy;
    private String UpdatedDate;

    public int getDetailsId() {
        return this.DetailsId;
    }

    public void setDetailsId(int i) {
        this.DetailsId = i;
    }

    public int getTrackId() {
        return this.TrackId;
    }

    public void setTrackId(int i) {
        this.TrackId = i;
    }

    public String getLatitude() {
        return this.Latitude;
    }

    public void setLatitude(String str) {
        this.Latitude = str;
    }

    public String getLongitude() {
        return this.Longitude;
    }

    public void setLongitude(String str) {
        this.Longitude = str;
    }

    public int getPdaId() {
        return this.PdaId;
    }

    public void setPdaId(int i) {
        this.PdaId = i;
    }

    public int getSyncStatus() {
        return this.SyncStatus;
    }

    public void setSyncStatus(int i) {
        this.SyncStatus = i;
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
