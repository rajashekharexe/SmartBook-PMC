package com.conceptglobal.pmc.promotions.models;

/* loaded from: classes.dex */
public class ContentFaourites {
    private int ContentID;
    private int FavouriteId;
    private int ISFavourite;
    private String PdaID;

    public int getFavouriteId() {
        return this.FavouriteId;
    }

    public void setFavouriteId(int i) {
        this.FavouriteId = i;
    }

    public int getContentID() {
        return this.ContentID;
    }

    public void setContentID(int i) {
        this.ContentID = i;
    }

    public int getISFavourite() {
        return this.ISFavourite;
    }

    public void setISFavourite(int i) {
        this.ISFavourite = i;
    }

    public String getPdaID() {
        return this.PdaID;
    }

    public void setPdaID(String str) {
        this.PdaID = str;
    }
}
