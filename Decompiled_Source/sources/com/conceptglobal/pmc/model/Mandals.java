package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class Mandals {
    private int Districtid;
    private String ETLCode;
    private boolean IsActive;
    private int MandalId;
    private String MandalName;
    private String Mandalshortcode;
    private String Pincode;

    public boolean isActive() {
        return this.IsActive;
    }

    public void setIsActive(boolean z) {
        this.IsActive = z;
    }

    public int getMandalId() {
        return this.MandalId;
    }

    public void setMandalId(int i) {
        this.MandalId = i;
    }

    public String getMandalName() {
        return this.MandalName;
    }

    public void setMandalName(String str) {
        this.MandalName = str;
    }

    public String getMandalshortcode() {
        return this.Mandalshortcode;
    }

    public void setMandalshortcode(String str) {
        this.Mandalshortcode = str;
    }

    public int getDistrictid() {
        return this.Districtid;
    }

    public void setDistrictid(int i) {
        this.Districtid = i;
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
}
