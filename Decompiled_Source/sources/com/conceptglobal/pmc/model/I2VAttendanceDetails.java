package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class I2VAttendanceDetails {
    private int AttendanceID;
    private int CreatedBy;
    private String CreatedDate;
    private String Date;
    private int DistanceTravelled;
    private String FOName;
    private String NightHalt;
    private int UpdatedBy;
    private String UpdatedDate;

    public int getAttendanceID() {
        return this.AttendanceID;
    }

    public void setAttendanceID(int i) {
        this.AttendanceID = i;
    }

    public String getDate() {
        return this.Date;
    }

    public void setDate(String str) {
        this.Date = str;
    }

    public int getDistanceTravelled() {
        return this.DistanceTravelled;
    }

    public void setDistanceTravelled(int i) {
        this.DistanceTravelled = i;
    }

    public String getNightHalt() {
        return this.NightHalt;
    }

    public void setNightHalt(String str) {
        this.NightHalt = str;
    }

    public String getFOName() {
        return this.FOName;
    }

    public void setFOName(String str) {
        this.FOName = str;
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
