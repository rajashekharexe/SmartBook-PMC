package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class FarmerCropCollection {
    private float acreages;
    private int cropId;
    private String dos;
    private int farmerId;
    private int mappingID;
    private String pdaId;

    public int getFarmerId() {
        return this.farmerId;
    }

    public void setFarmerId(int i) {
        this.farmerId = i;
    }

    public int getCropId() {
        return this.cropId;
    }

    public void setCropId(int i) {
        this.cropId = i;
    }

    public float getAcreages() {
        return this.acreages;
    }

    public void setAcreages(float f) {
        this.acreages = f;
    }

    public int getMappingID() {
        return this.mappingID;
    }

    public void setMappingID(int i) {
        this.mappingID = i;
    }

    public String getPdaId() {
        return this.pdaId;
    }

    public void setPdaId(String str) {
        this.pdaId = str;
    }

    public String getDos() {
        return this.dos;
    }

    public void setDos(String str) {
        this.dos = str;
    }
}
