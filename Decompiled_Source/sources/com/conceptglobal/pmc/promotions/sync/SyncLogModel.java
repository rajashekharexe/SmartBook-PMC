package com.conceptglobal.pmc.promotions.sync;

/* loaded from: classes.dex */
public class SyncLogModel {
    private String columnName;
    private String createdBy;
    private String createdDate;
    private String errorMessage;
    private String errorStackTrace;
    private String isSolved;
    private String pdaId;
    private String query;
    private String remarks;
    private Integer sourceID;
    private String syncType;
    private String tableName;
    private String updatedBy;
    private String updatedDate;

    public void setSourceID(Integer num) {
        this.sourceID = num;
    }

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

    public int getSourceID() {
        return this.sourceID.intValue();
    }
}
