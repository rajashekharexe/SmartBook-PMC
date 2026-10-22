package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class StatusActObj {
    private String acount;
    private String activityname;
    private int approvependingcount;
    private String fcount;
    private int fopendingcount;

    public String getFcount() {
        return this.fcount;
    }

    public void setFcount(String str) {
        this.fcount = str;
    }

    public String getAcount() {
        return this.acount;
    }

    public void setAcount(String str) {
        this.acount = str;
    }

    public String getActivityname() {
        return this.activityname;
    }

    public void setActivityname(String str) {
        this.activityname = str;
    }

    public int getFopendingcount() {
        return this.fopendingcount;
    }

    public void setFopendingcount(int i) {
        this.fopendingcount = i;
    }

    public int getApprovependingcount() {
        return this.approvependingcount;
    }

    public void setApprovependingcount(int i) {
        this.approvependingcount = i;
    }
}
