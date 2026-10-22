package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class SupervisorFOMapping {
    public int Active;
    public String FOName;
    public int FOPDAID;
    public int FOUserID;
    public int MappingID;
    public int SupervisorID;

    public int getFopdaid() {
        return this.FOPDAID;
    }

    public void setFopdaid(int i) {
        this.FOPDAID = i;
    }

    public int getMappingID() {
        return this.MappingID;
    }

    public void setMappingID(int i) {
        this.MappingID = i;
    }

    public int getSupervisorID() {
        return this.SupervisorID;
    }

    public void setSupervisorID(int i) {
        this.SupervisorID = i;
    }

    public int getFOUserID() {
        return this.FOUserID;
    }

    public void setFOUserID(int i) {
        this.FOUserID = i;
    }

    public String getFOName() {
        return this.FOName;
    }

    public void setFOName(String str) {
        this.FOName = str;
    }

    public int getActive() {
        return this.Active;
    }

    public void setActive(int i) {
        this.Active = i;
    }
}
