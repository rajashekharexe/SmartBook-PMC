package com.conceptglobal.pmc.packageofpractice.models;

/* loaded from: classes.dex */
public class LibraryDetails {
    private int DeviceVersionNo;
    private String HTMLZIPURL;
    private String LocalHTMLZIPURL;
    private int POPID;
    private int VersionNo;

    public LibraryDetails() {
    }

    public LibraryDetails(int i, String str, String str2, int i2, int i3) {
        this.POPID = i;
        this.HTMLZIPURL = str;
        this.LocalHTMLZIPURL = str2;
        this.VersionNo = i2;
        this.DeviceVersionNo = i3;
    }

    public String getLocalHTMLZIPURL() {
        return this.LocalHTMLZIPURL;
    }

    public void setLocalHTMLZIPURL(String str) {
        this.LocalHTMLZIPURL = str;
    }

    public int getVersionNo() {
        return this.VersionNo;
    }

    public void setVersionNo(int i) {
        this.VersionNo = i;
    }

    public int getDeviceVersionNo() {
        return this.DeviceVersionNo;
    }

    public void setDeviceVersionNo(int i) {
        this.DeviceVersionNo = i;
    }

    public int getPOPID() {
        return this.POPID;
    }

    public void setPOPID(int i) {
        this.POPID = i;
    }

    public String getHTMLZIPURL() {
        return this.HTMLZIPURL;
    }

    public void setHTMLZIPURL(String str) {
        this.HTMLZIPURL = str;
    }
}
