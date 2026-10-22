package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class ProductAndDistributorData {
    private String distributorname;
    private String productname;

    public ProductAndDistributorData(String str, String str2) {
        this.productname = str;
        this.distributorname = str2;
    }

    public boolean equals(Object obj) {
        ProductAndDistributorData productAndDistributorData = (ProductAndDistributorData) obj;
        return productAndDistributorData.distributorname.equals(this.distributorname) && productAndDistributorData.productname.equals(this.productname);
    }
}
