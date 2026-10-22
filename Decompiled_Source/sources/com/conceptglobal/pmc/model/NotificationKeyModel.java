package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class NotificationKeyModel {
    private String FCMKey;
    private String PDAID;

    public String getPDAID() {
        return this.PDAID;
    }

    public void setPDAID(String str) {
        this.PDAID = str;
    }

    public String getFCMKey() {
        return this.FCMKey;
    }

    public void setFCMKey(String str) {
        this.FCMKey = str;
    }
}
