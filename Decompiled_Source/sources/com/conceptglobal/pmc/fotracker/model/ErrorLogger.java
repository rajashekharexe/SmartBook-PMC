package com.conceptglobal.pmc.fotracker.model;

/* loaded from: classes.dex */
public class ErrorLogger {
    private String CreatedDate;
    private String ErrorMessage;
    private int Id;
    private int PDAID;
    private int ServerStatus;

    public int getId() {
        return this.Id;
    }

    public void setId(int i) {
        this.Id = i;
    }

    public String getErrorMessage() {
        return this.ErrorMessage;
    }

    public void setErrorMessage(String str) {
        this.ErrorMessage = str;
    }

    public String getCreatedDate() {
        return this.CreatedDate;
    }

    public void setCreatedDate(String str) {
        this.CreatedDate = str;
    }

    public int getPDAID() {
        return this.PDAID;
    }

    public void setPDAID(int i) {
        this.PDAID = i;
    }

    public int getServerStatus() {
        return this.ServerStatus;
    }

    public void setServerStatus(int i) {
        this.ServerStatus = i;
    }
}
