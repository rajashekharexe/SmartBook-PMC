package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class FavouriteFarmer {
    private int CreatedBy;
    private String CreatedDate;
    private int FavouriteStatus;
    private int IsFavourite;
    private String PDAID;
    private String RespondentNo;
    private int UpdatedBy;
    private String UpdatedDate;

    public String getRespondentNo() {
        return this.RespondentNo;
    }

    public void setRespondentNo(String str) {
        this.RespondentNo = str;
    }

    public int getIsFavourite() {
        return this.IsFavourite;
    }

    public void setIsFavourite(int i) {
        this.IsFavourite = i;
    }

    public String getPDAID() {
        return this.PDAID;
    }

    public void setPDAID(String str) {
        this.PDAID = str;
    }

    public int getCreatedBy() {
        return this.CreatedBy;
    }

    public void setCreatedBy(int i) {
        this.CreatedBy = i;
    }

    public String getCreatedDate() {
        return this.CreatedDate;
    }

    public void setCreatedDate(String str) {
        this.CreatedDate = str;
    }

    public int getUpdatedBy() {
        return this.UpdatedBy;
    }

    public void setUpdatedBy(int i) {
        this.UpdatedBy = i;
    }

    public String getUpdatedDate() {
        return this.UpdatedDate;
    }

    public void setUpdatedDate(String str) {
        this.UpdatedDate = str;
    }
}
