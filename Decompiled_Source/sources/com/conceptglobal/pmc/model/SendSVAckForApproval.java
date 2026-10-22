package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class SendSVAckForApproval {
    private String PDAID;
    private SendAcknowledgeSV ackList = new SendAcknowledgeSV();

    public SendAcknowledgeSV getAckList() {
        return this.ackList;
    }

    public void setAckList(SendAcknowledgeSV sendAcknowledgeSV) {
        this.ackList = sendAcknowledgeSV;
    }

    public String getPDAID() {
        return this.PDAID;
    }

    public void setPDAID(String str) {
        this.PDAID = str;
    }
}
