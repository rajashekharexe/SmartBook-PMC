package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class DataCountModel {
    private String LogDate;
    private int PdaId;
    private int count;
    private int draftCount;
    private String tableName;

    public String getTableName() {
        return this.tableName;
    }

    public void setTableName(String str) {
        this.tableName = str;
    }

    public int getPdaId() {
        return this.PdaId;
    }

    public void setPdaId(int i) {
        this.PdaId = i;
    }

    public int getCount() {
        return this.count;
    }

    public void setCount(int i) {
        this.count = i;
    }

    public int getDraftCount() {
        return this.draftCount;
    }

    public void setDraftCount(int i) {
        this.draftCount = i;
    }

    public String getLogDate() {
        return this.LogDate;
    }

    public void setLogDate(String str) {
        this.LogDate = str;
    }
}
