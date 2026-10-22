package com.conceptglobal.pmc.camera2;

/* loaded from: classes.dex */
public class CameraSettingModel {
    private String mImageQuality;
    private String mImageResolution;
    private String mVideoQuality;
    private String mVideoResolution;

    public String getmVideoQuality() {
        return this.mVideoQuality;
    }

    public void setmVideoQuality(String str) {
        this.mVideoQuality = str;
    }

    public String getmVideoResolution() {
        return this.mVideoResolution;
    }

    public void setmVideoResolution(String str) {
        this.mVideoResolution = str;
    }

    public String getmImageQuality() {
        return this.mImageQuality;
    }

    public void setmImageQuality(String str) {
        this.mImageQuality = str;
    }

    public String getmImageResolution() {
        return this.mImageResolution;
    }

    public void setmImageResolution(String str) {
        this.mImageResolution = str;
    }

    public CameraSettingModel(String str, String str2, String str3, String str4) {
        this.mVideoQuality = str;
        this.mVideoResolution = str2;
        this.mImageQuality = str3;
        this.mImageResolution = str4;
    }
}
