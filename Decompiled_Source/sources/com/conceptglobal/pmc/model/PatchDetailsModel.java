package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class PatchDetailsModel {
    private String diffDays;
    private String patchPath;
    private String patchType;
    private String status;

    public String getDiffDays() {
        return this.diffDays;
    }

    public void setDiffDays(String str) {
        this.diffDays = str;
    }

    public String getPatchType() {
        return this.patchType;
    }

    public void setPatchType(String str) {
        this.patchType = str;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public String getPatchPath() {
        return this.patchPath;
    }

    public void setPatchPath(String str) {
        this.patchPath = str;
    }
}
