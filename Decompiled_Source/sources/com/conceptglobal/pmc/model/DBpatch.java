package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class DBpatch {
    private int DeviceId;
    private int LineId;
    private String QueryType;
    private boolean Status;
    private String query;
    private String tableName;

    public int getLineId() {
        return this.LineId;
    }

    public void setLineId(int i) {
        this.LineId = i;
    }

    public String getQuery() {
        return this.query;
    }

    public void setQuery(String str) {
        this.query = str;
    }

    public int getDeviceId() {
        return this.DeviceId;
    }

    public void setDeviceId(int i) {
        this.DeviceId = i;
    }

    public boolean isStatus() {
        return this.Status;
    }

    public void setStatus(boolean z) {
        this.Status = z;
    }

    public String getQueryType() {
        return this.QueryType;
    }

    public void setQueryType(String str) {
        this.QueryType = str;
    }

    public String getTableName() {
        return this.tableName;
    }

    public void setTableName(String str) {
        this.tableName = str;
    }
}
