package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class SpecificMasterSync {
    private String PDAID;
    private SendAcknowledgeSDTV ackList = new SendAcknowledgeSDTV();
    private SendFailedAcknowledgeSDTV failedackList = new SendFailedAcknowledgeSDTV();

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
        return this.failedackList;
    }

    public void setFailedAckList(SendFailedAcknowledgeSDTV sendFailedAcknowledgeSDTV) {
        this.failedackList = sendFailedAcknowledgeSDTV;
    }

    public String getPdaId() {
        return this.PDAID;
    }

    public void setPdaId(String str) {
        this.PDAID = str;
    }
}
