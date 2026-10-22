package com.conceptglobal.pmc.model.otp;

/* loaded from: classes.dex */
public class GetOTPResponse {
    private Data data;
    private String status;
    private String statusMessage;

    public Data getData() {
        return this.data;
    }

    public void setData(Data data) {
        this.data = data;
    }

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
}
