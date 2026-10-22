package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class SendChangePasswordRequest {
    private int PdaId;
    private String currentPassword;
    private String newPassword;

    public int getPdaid() {
        return this.PdaId;
    }

    public void setPdaid(int i) {
        this.PdaId = i;
    }

    public String getOldPassword() {
        return this.currentPassword;
    }

    public void setOldPassword(String str) {
        this.currentPassword = str;
    }

    public String getNewPassword() {
        return this.newPassword;
    }

    public void setNewPassword(String str) {
        this.newPassword = str;
    }
}
