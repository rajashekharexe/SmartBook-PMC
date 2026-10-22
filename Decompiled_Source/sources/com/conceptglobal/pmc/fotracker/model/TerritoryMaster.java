package com.conceptglobal.pmc.fotracker.model;

/* loaded from: classes.dex */
public class TerritoryMaster {
    private int isActive;
    private int regionId;
    private int territoryId;
    private String territoryName;

    public int getTerritoryId() {
        return this.territoryId;
    }

    public void setTerritoryId(int i) {
        this.territoryId = i;
    }

    public String getTerritoryName() {
        return this.territoryName;
    }

    public void setTerritoryName(String str) {
        this.territoryName = str;
    }

    public int getRegionId() {
        return this.regionId;
    }

    public void setRegionId(int i) {
        this.regionId = i;
    }

    public int getIsActive() {
        return this.isActive;
    }

    public void setIsActive(int i) {
        this.isActive = i;
    }
}
