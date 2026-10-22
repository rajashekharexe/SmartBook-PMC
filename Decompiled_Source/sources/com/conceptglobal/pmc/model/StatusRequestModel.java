package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class StatusRequestModel {
    private String supervisorName;
    private int svpdaid;

    public int getSupervisorId() {
        return this.svpdaid;
    }

    public void setSupervisorId(int i) {
        this.svpdaid = i;
    }

    public String getSupervisorName() {
        return this.supervisorName;
    }

    public void setSupervisorName(String str) {
        this.supervisorName = str;
    }
}
