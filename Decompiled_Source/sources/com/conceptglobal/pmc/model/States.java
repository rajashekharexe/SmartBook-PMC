package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class States {
    private String ETLCode;
    private String IsActive;
    private int StateId;
    private String StateName;
    private String StateShortCode;

    public int getStateId() {
        return this.StateId;
    }

    public void setStateId(int i) {
        this.StateId = i;
    }

    public String getStateName() {
        return this.StateName;
    }

    public void setStateName(String str) {
        this.StateName = str;
    }

    public String getStateShortCode() {
        return this.StateShortCode;
    }

    public void setStateShortCode(String str) {
        this.StateShortCode = str;
    }

    public String getETLCode() {
        return this.ETLCode;
    }

    public void setETLCode(String str) {
        this.ETLCode = str;
    }

    public String getIsActive() {
        return this.IsActive;
    }

    public void setIsActive(String str) {
        this.IsActive = str;
    }
}
