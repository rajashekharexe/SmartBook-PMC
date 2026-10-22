package com.conceptglobal.pmc.packageofpractice.models;

import java.util.ArrayList;

/* loaded from: classes.dex */
public class CropCategoryModal {
    private String cropCategory;
    private int deviceVersionNo;
    private ArrayList<IndividualCropItemModal> individualCropItemModalArrayList;
    private boolean isExpanded;
    private String localThumnailpath;
    private int popID;
    private String thumbnailURL;
    private int versionNo;

    public CropCategoryModal(int i, String str, String str2, String str3, int i2, int i3, ArrayList<IndividualCropItemModal> arrayList) {
        this.popID = i;
        this.cropCategory = str;
        this.thumbnailURL = str2;
        this.localThumnailpath = str3;
        this.versionNo = i2;
        this.deviceVersionNo = i3;
        this.individualCropItemModalArrayList = arrayList;
        this.isExpanded = false;
    }

    public String getCropCategory() {
        return this.cropCategory;
    }

    public void setCropCategory(String str) {
        this.cropCategory = str;
    }

    public String getThumbnailURL() {
        return this.thumbnailURL;
    }

    public void setThumbnailURL(String str) {
        this.thumbnailURL = str;
    }

    public boolean isExpanded() {
        return this.isExpanded;
    }

    public void setExpanded(boolean z) {
        this.isExpanded = z;
    }

    public CropCategoryModal() {
    }

    public ArrayList<IndividualCropItemModal> getIndividualCropItemModalArrayList() {
        return this.individualCropItemModalArrayList;
    }

    public void setIndividualCropItemModalArrayList(ArrayList<IndividualCropItemModal> arrayList) {
        this.individualCropItemModalArrayList = arrayList;
    }

    public int getPopID() {
        return this.popID;
    }

    public void setPopID(int i) {
        this.popID = i;
    }

    public String getLocalThumnailpath() {
        return this.localThumnailpath;
    }

    public void setLocalThumnailpath(String str) {
        this.localThumnailpath = str;
    }

    public int getVersionNo() {
        return this.versionNo;
    }

    public void setVersionNo(int i) {
        this.versionNo = i;
    }

    public int getDeviceVersionNo() {
        return this.deviceVersionNo;
    }

    public void setDeviceVersionNo(int i) {
        this.deviceVersionNo = i;
    }
}
