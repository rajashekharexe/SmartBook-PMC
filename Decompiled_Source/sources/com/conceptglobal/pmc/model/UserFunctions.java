package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class UserFunctions {
    private String Pdafunction;
    private int functionId;
    private String functionName;
    private String navigationUrl;

    public String getNavigationUrl() {
        return this.navigationUrl;
    }

    public void setNavigationUrl(String str) {
        this.navigationUrl = str;
    }

    public String getPdafunction() {
        return this.Pdafunction;
    }

    public void setPdafunction(String str) {
        this.Pdafunction = str;
    }

    public String getFunctionName() {
        return this.functionName;
    }

    public void setFunctionName(String str) {
        this.functionName = str;
    }

    public int getFunctionId() {
        return this.functionId;
    }

    public void setFunctionId(int i) {
        this.functionId = i;
    }
}
