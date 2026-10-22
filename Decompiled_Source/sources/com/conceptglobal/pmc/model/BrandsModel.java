package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class BrandsModel implements Comparable<BrandsModel> {
    private String brandId;
    private String brandName;
    private String brandSelected;

    public String getBrandId() {
        return this.brandId;
    }

    public void setBrandId(String str) {
        this.brandId = str;
    }

    public String getBrandName() {
        return this.brandName;
    }

    public void setBrandName(String str) {
        this.brandName = str;
    }

    public String getBrandSelected() {
        return this.brandSelected;
    }

    public void setBrandSelected(String str) {
        this.brandSelected = str;
    }

    @Override // java.lang.Comparable
    public int compareTo(BrandsModel brandsModel) {
        return brandsModel.brandId.compareTo(this.brandId);
    }
}
