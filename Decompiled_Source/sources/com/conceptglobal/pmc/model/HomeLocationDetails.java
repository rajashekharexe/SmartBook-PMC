package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class HomeLocationDetails {
    private String HomeAddress;
    private String Lattitude;
    private String Longitude;
    private String PdaId;
    private String homelocationupdateddate;

    public String getPdaId() {
        return this.PdaId;
    }

    public void setPdaId(String str) {
        this.PdaId = str;
    }

    public String getLattitude() {
        return this.Lattitude;
    }

    public void setLattitude(String str) {
        this.Lattitude = str;
    }

    public String getLongitude() {
        return this.Longitude;
    }

    public void setLongitude(String str) {
        this.Longitude = str;
    }

    public String getHomeAddress() {
        return this.HomeAddress;
    }

    public void setHomeAddress(String str) {
        this.HomeAddress = str;
    }

    public String getHomelocationupdateddate() {
        return this.homelocationupdateddate;
    }

    public void setHomelocationupdateddate(String str) {
        this.homelocationupdateddate = str;
    }
}
