package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class SendAckList {
    private String PDAID;
    private SendAcknowledge ackList = new SendAcknowledge();

    public SendAcknowledge getAckList() {
        return this.ackList;
    }

    public void setAckList(SendAcknowledge sendAcknowledge) {
        this.ackList = sendAcknowledge;
    }

    public String getPDAID() {
        return this.PDAID;
    }

    public void setPDAID(String str) {
        this.PDAID = str;
    }
}
