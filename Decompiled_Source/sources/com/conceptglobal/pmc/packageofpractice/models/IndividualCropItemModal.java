package com.conceptglobal.pmc.packageofpractice.models;

/* loaded from: classes.dex */
public class IndividualCropItemModal {
    private String cropName;
    private int deviceVersionNo;
    private String htmlStartPage;
    private String htmlZipURL;
    private String localHTMLZIPURL;
    private String localThumnailpath;
    private int popID;
    private String thumbnailURL;
    private int versionNo;

    public IndividualCropItemModal() {
    }

    public IndividualCropItemModal(int i, String str, String str2, String str3, String str4, String str5, String str6, int i2, int i3) {
        this.popID = i;
        this.cropName = str;
        this.thumbnailURL = str2;
        this.htmlZipURL = str3;
        this.localThumnailpath = str4;
        this.localHTMLZIPURL = str5;
        this.htmlStartPage = str6;
        this.versionNo = i2;
        this.deviceVersionNo = i3;
    }

    public String getCropName() {
        return this.cropName;
    }

    public void setCropName(String str) {
        this.cropName = str;
    }

    public String getThumbnailURL() {
        return this.thumbnailURL;
    }

    public void setThumbnailURL(String str) {
        this.thumbnailURL = str;
    }

    public String getHtmlZipURL() {
        return this.htmlZipURL;
    }

    public void setHtmlZipURL(String str) {
        this.htmlZipURL = str;
    }

    public String getLocalThumnailpath() {
        return this.localThumnailpath;
    }

    public void setLocalThumnailpath(String str) {
        this.localThumnailpath = str;
    }

    public String getLocalHTMLZIPURL() {
        return this.localHTMLZIPURL;
    }

    public void setLocalHTMLZIPURL(String str) {
        this.localHTMLZIPURL = str;
    }

    public String getHtmlStartPage() {
        return this.htmlStartPage;
    }

    public void setHtmlStartPage(String str) {
        this.htmlStartPage = str;
    }

    public int getVersionNo() {
        return this.versionNo;
    }

    public void setVersionNo(int i) {
        this.versionNo = i;
    }

    public int getDeviceVersionNo() {
        return this.deviceVersionNo;
    }

    public void setDeviceVersionNo(int i) {
        this.deviceVersionNo = i;
    }

    public int getPopID() {
        return this.popID;
    }

    public void setPopID(int i) {
        this.popID = i;
    }
}
