package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class ActivateUserDetails {
    private String DeviceModel;
    private String IMEINumber;
    private String MobileSwap;
    private String Mode;
    private String OSVersion;
    private String Status;
    private String enteredIMEI;
    private String strEmail;
    private String strMobile;
    private String strName;

    public String getMobileSwap() {
        return this.MobileSwap;
    }

    public void setMobileSwap(String str) {
        this.MobileSwap = str;
    }

    public String getMode() {
        return this.Mode;
    }

    public void setMode(String str) {
        this.Mode = str;
    }

    public String getDeviceModel() {
        return this.DeviceModel;
    }

    public void setDeviceModel(String str) {
        this.DeviceModel = str;
    }

    public String getOSVersion() {
        return this.OSVersion;
    }

    public void setOSVersion(String str) {
        this.OSVersion = str;
    }

    public String getEnteredIMEI() {
        return this.enteredIMEI;
    }

    public void setEnteredIMEI(String str) {
        this.enteredIMEI = str;
    }

    public String getEmail() {
        return this.strEmail;
    }

    public void setEmail(String str) {
        this.strEmail = str;
    }

    public String getIMEINumber() {
        return this.IMEINumber;
    }

    public void setIMEINumber(String str) {
        this.IMEINumber = str;
    }

    public String getStrName() {
        return this.strName;
    }

    public void setStrName(String str) {
        this.strName = str;
    }

    public String getStrMobile() {
        return this.strMobile;
    }

    public void setStrMobile(String str) {
        this.strMobile = str;
    }

    public String getStatus() {
        return this.Status;
    }

    public void setStatus(String str) {
        this.Status = str;
    }
}
