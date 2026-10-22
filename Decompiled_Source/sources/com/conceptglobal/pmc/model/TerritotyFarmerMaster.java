package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class TerritotyFarmerMaster {
    private int FarmerID;
    private String FarmerName;
    private String Mobile;
    private String RespondentNo;
    private String Territory;
    private String Village;

    public String getRespondentNo() {
        return this.RespondentNo;
    }

    public void setRespondentNo(String str) {
        this.RespondentNo = str;
    }

    public int getFarmerID() {
        return this.FarmerID;
    }

    public void setFarmerID(int i) {
        this.FarmerID = i;
    }

    public String getMobile() {
        return this.Mobile;
    }

    public void setMobile(String str) {
        this.Mobile = str;
    }

    public String getFarmerName() {
        return this.FarmerName;
    }

    public void setFarmerName(String str) {
        this.FarmerName = str;
    }

    public String getTerritory() {
        return this.Territory;
    }

    public void setTerritory(String str) {
        this.Territory = str;
    }

    public String getVillage() {
        return this.Village;
    }

    public void setVillage(String str) {
        this.Village = str;
    }
}
