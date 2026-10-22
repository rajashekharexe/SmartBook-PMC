package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class ResponseModel {
    private Object data;
    private String status;
    private String statusMessage;

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public String getStatusMessage() {
        return this.statusMessage;
    }

    public void setStatusMessage(String str) {
        this.statusMessage = str;
    }

    public Object getData() {
        return this.data;
    }

    public void setData(String str) {
        this.data = str;
    }
}
