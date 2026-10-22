package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class FarmerVisitCollection {
    private String BrandName;
    private String CropName;
    private String LastvisitDate;
    private String activityName;
    private int farmerId;
    private String visitDescription;
    public int visitId;

    public int getVisitId() {
        return this.visitId;
    }

    public void setVisitId(int i) {
        this.visitId = i;
    }

    public int getFarmerId() {
        return this.farmerId;
    }

    public void setFarmerId(int i) {
        this.farmerId = i;
    }

    public String getCropName() {
        return this.CropName;
    }

    public void setCropName(String str) {
        this.CropName = str;
    }

    public String getBrandName() {
        return this.BrandName;
    }

    public void setBrandName(String str) {
        this.BrandName = str;
    }

    public String getActivityName() {
        return this.activityName;
    }

    public void setActivityName(String str) {
        this.activityName = str;
    }

    public String getVisitDescription() {
        return this.visitDescription;
    }

    public void setVisitDescription(String str) {
        this.visitDescription = str;
    }

    public String getLastvisitDate() {
        return this.LastvisitDate;
    }

    public void setLastvisitDate(String str) {
        this.LastvisitDate = str;
    }
}
