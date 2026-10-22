package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class SyncErrorLogModel {
    private String columnName;
    private String createdBy;
    private String createdDate;
    private String errorMessage;
    private String errorStackTrace;
    private int id;
    private String isSolved;
    private String pdaId;
    private String query;
    private String remarks;
    private String sourceID;
    private String syncType;
    private String tableName;
    private String updatedBy;
    private String updatedDate;

    public String getPdaId() {
        return this.pdaId;
    }

    public void setPdaId(String str) {
        this.pdaId = str;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }

    public void setErrorMessage(String str) {
        this.errorMessage = str;
    }

    public String getErrorStackTrace() {
        return this.errorStackTrace;
    }

    public void setErrorStackTrace(String str) {
        this.errorStackTrace = str;
    }

    public String getSyncType() {
        return this.syncType;
    }

    public void setSyncType(String str) {
        this.syncType = str;
    }

    public String getColumnName() {
        return this.columnName;
    }

    public void setColumnName(String str) {
        this.columnName = str;
    }

    public String getSourceID() {
        return this.sourceID;
    }

    public void setSourceID(String str) {
        this.sourceID = str;
    }

    public String getTableName() {
        return this.tableName;
    }

    public void setTableName(String str) {
        this.tableName = str;
    }

    public String getQuery() {
        return this.query;
    }

    public void setQuery(String str) {
        this.query = str;
    }

    public String getCreatedBy() {
        return this.createdBy;
    }

    public void setCreatedBy(String str) {
        this.createdBy = str;
    }

    public String getCreatedDate() {
        return this.createdDate;
    }

    public void setCreatedDate(String str) {
        this.createdDate = str;
    }

    public String getUpdatedBy() {
        return this.updatedBy;
    }

    public void setUpdatedBy(String str) {
        this.updatedBy = str;
    }

    public String getUpdatedDate() {
        return this.updatedDate;
    }

    public void setUpdatedDate(String str) {
        this.updatedDate = str;
    }

    public String getRemarks() {
        return this.remarks;
    }

    public void setRemarks(String str) {
        this.remarks = str;
    }

    public String getIsSolved() {
        return this.isSolved;
    }

    public void setIsSolved(String str) {
        this.isSolved = str;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
    }
}
