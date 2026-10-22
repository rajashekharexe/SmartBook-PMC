package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class RetailerMobileDetails {
    private String ImagePath;
    private String MobileNumber;
    private String RetailerShopName;
    private String TerritoryName;
    private String VillageName;

    public String getFarmerName() {
        return this.RetailerShopName;
    }

    public void setFarmerName(String str) {
        this.RetailerShopName = str;
    }

    public String getMobile() {
        return this.MobileNumber;
    }

    public void setMobile(String str) {
        this.MobileNumber = str;
    }

    public String getImagePath() {
        return this.ImagePath;
    }

    public void setImagePath(String str) {
        this.ImagePath = str;
    }

    public String getTerritoryName() {
        return this.TerritoryName;
    }

    public void setTerritoryName(String str) {
        this.TerritoryName = str;
    }

    public String getVillageName() {
        return this.VillageName;
    }

    public void setVillageName(String str) {
        this.VillageName = str;
    }
}
