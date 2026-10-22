package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class Logger {
    private String ClassName;
    private String ExecutionTime;
    private String LogTime;
    private String MethodName;
    private String MethodResult;
    private String Params;
    private String PdaId;
    private String ServerUpdatedStatus;
    private int id;

    public String getExecutionTime() {
        return this.ExecutionTime;
    }

    public void setExecutionTime(String str) {
        this.ExecutionTime = str;
    }

    public String getServerUpdatedStatus() {
        return this.ServerUpdatedStatus;
    }

    public void setServerUpdatedStatus(String str) {
        this.ServerUpdatedStatus = str;
    }

    public String getMethodResult() {
        return this.MethodResult;
    }

    public void setMethodResult(String str) {
        this.MethodResult = str;
    }

    public String getLogTime() {
        return this.LogTime;
    }

    public void setLogTime(String str) {
        this.LogTime = str;
    }

    public String getParams() {
        return this.Params;
    }

    public void setParams(String str) {
        this.Params = str;
    }

    public String getMethodName() {
        return this.MethodName;
    }

    public void setMethodName(String str) {
        this.MethodName = str;
    }

    public String getClassName() {
        return this.ClassName;
    }

    public void setClassName(String str) {
        this.ClassName = str;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
    }

    public String getPdaId() {
        return this.PdaId;
    }

    public void setPdaId(String str) {
        this.PdaId = str;
    }
}
