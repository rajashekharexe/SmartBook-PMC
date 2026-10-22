package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class PatchUpdateQueryModel {
    private int PdaId;
    private String patchType;
    private int queryId;
    private String strQuery;
    private String strstatus;
    private String tableName;

    public String getStrQuery() {
        return this.strQuery;
    }

    public void setStrQuery(String str) {
        this.strQuery = str;
    }

    public String getStrstatus() {
        return this.strstatus;
    }

    public void setStrstatus(String str) {
        this.strstatus = str;
    }

    public int getQueryId() {
        return this.queryId;
    }

    public void setQueryId(int i) {
        this.queryId = i;
    }

    public int getPdaId() {
        return this.PdaId;
    }

    public void setPdaId(int i) {
        this.PdaId = i;
    }

    public String getPatchType() {
        return this.patchType;
    }

    public void setPatchType(String str) {
        this.patchType = str;
    }

    public String getTableName() {
        return this.tableName;
    }

    public void setTableName(String str) {
        this.tableName = str;
    }
}
