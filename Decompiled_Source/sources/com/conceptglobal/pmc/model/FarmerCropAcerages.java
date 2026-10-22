package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class FarmerCropAcerages {
    private String aceragesNew;
    private String aceragesOld;
    private int cropId;
    private String cropName;
    private int farmerId;
    private String newRecordFlag;
    private String oldRecordFlag;

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

    public String getCropName() {
        return this.cropName;
    }

    public void setCropName(String str) {
        this.cropName = str;
    }

    public String getAceragesOld() {
        return this.aceragesOld;
    }

    public void setAceragesOld(String str) {
        this.aceragesOld = str;
    }

    public String getAceragesNew() {
        return this.aceragesNew;
    }

    public void setAceragesNew(String str) {
        this.aceragesNew = str;
    }

    public String getOldRecordFlag() {
        return this.oldRecordFlag;
    }

    public void setOldRecordFlag(String str) {
        this.oldRecordFlag = str;
    }

    public String getNewRecordFlag() {
        return this.newRecordFlag;
    }

    public void setNewRecordFlag(String str) {
        this.newRecordFlag = str;
    }
}
