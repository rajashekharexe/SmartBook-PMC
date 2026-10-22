package com.conceptglobal.pmc.promotions.models;

/* loaded from: classes.dex */
public class CategoryMaster {
    private int CategoryId;
    private String CategoryName;
    private String Description;
    private int IsActive;
    private int ParentCategoryID;
    private int Sequence;
    private int childCount;

    public int getChildCount() {
        return this.childCount;
    }

    public void setChildCount(int i) {
        this.childCount = i;
    }

    public int getCategoryId() {
        return this.CategoryId;
    }

    public void setCategoryId(int i) {
        this.CategoryId = i;
    }

    public String getCategoryName() {
        return this.CategoryName;
    }

    public void setCategoryName(String str) {
        this.CategoryName = str;
    }

    public String getDescription() {
        return this.Description;
    }

    public void setDescription(String str) {
        this.Description = str;
    }

    public int getParentCategoryID() {
        return this.ParentCategoryID;
    }

    public void setParentCategoryID(int i) {
        this.ParentCategoryID = i;
    }

    public int getSequence() {
        return this.Sequence;
    }

    public void setSequence(int i) {
        this.Sequence = i;
    }

    public int getIsActive() {
        return this.IsActive;
    }

    public void setIsActive(int i) {
        this.IsActive = i;
    }
}
