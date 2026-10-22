package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class SendAckSdtv {
    private String PDAID;
    private SendAcknowledgeSDTV ackList = new SendAcknowledgeSDTV();
    private SendFailedAcknowledgeSDTV failedAckList = new SendFailedAcknowledgeSDTV();

    public String getPDAID() {
        return this.PDAID;
    }

    public void setPDAID(String str) {
        this.PDAID = str;
    }

    public SendAcknowledgeSDTV getAckList() {
        return this.ackList;
    }

    public void setAckList(SendAcknowledgeSDTV sendAcknowledgeSDTV) {
        this.ackList = sendAcknowledgeSDTV;
    }

    public SendFailedAcknowledgeSDTV getFailedAckList() {
        return this.failedAckList;
    }

    public void setFailedAckList(SendFailedAcknowledgeSDTV sendFailedAcknowledgeSDTV) {
        this.failedAckList = sendFailedAcknowledgeSDTV;
    }
}
