package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class Log4Trace {
    private String Action;
    private String ActivityID;
    private String CreatedDate;
    private int CreatedID;
    private String Name;
    private int PdaId;
    private int UserId;
    private String isFrom;

    public int getCreatedID() {
        return this.CreatedID;
    }

    public void setCreatedID(int i) {
        this.CreatedID = i;
    }

    public String getName() {
        return this.Name;
    }

    public void setName(String str) {
        this.Name = str;
    }

    public int getPdaId() {
        return this.PdaId;
    }

    public void setPdaId(int i) {
        this.PdaId = i;
    }

    public String getCreatedDate() {
        return this.CreatedDate;
    }

    public void setCreatedDate(String str) {
        this.CreatedDate = str;
    }

    public String getActivityID() {
        return this.ActivityID;
    }

    public void setActivityID(String str) {
        this.ActivityID = str;
    }

    public String getAction() {
        return this.Action;
    }

    public void setAction(String str) {
        this.Action = str;
    }

    public String getIsFrom() {
        return this.isFrom;
    }

    public void setIsFrom(String str) {
        this.isFrom = str;
    }

    public int getUserId() {
        return this.UserId;
    }

    public void setUserId(int i) {
        this.UserId = i;
    }
}
