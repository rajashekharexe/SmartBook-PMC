package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class Districts {
    private int DistrictId;
    private String DistrictName;
    private String DistrictShortCode;
    private String ETLCode;
    private String IsActive;
    private String Pincode;
    private int StateId;

    public int getDistrictId() {
        return this.DistrictId;
    }

    public void setDistrictId(int i) {
        this.DistrictId = i;
    }

    public String getDistrictName() {
        return this.DistrictName;
    }

    public void setDistrictName(String str) {
        this.DistrictName = str;
    }

    public String getDistrictShortCode() {
        return this.DistrictShortCode;
    }

    public void setDistrictShortCode(String str) {
        this.DistrictShortCode = str;
    }

    public int getStateId() {
        return this.StateId;
    }

    public void setStateId(int i) {
        this.StateId = i;
    }

    public String getPincode() {
        return this.Pincode;
    }

    public void setPincode(String str) {
        this.Pincode = str;
    }

    public String getETLCode() {
        return this.ETLCode;
    }

    public void setETLCode(String str) {
        this.ETLCode = str;
    }

    public String getIsActive() {
        return this.IsActive;
    }

    public void setIsActive(String str) {
        this.IsActive = str;
    }
}
