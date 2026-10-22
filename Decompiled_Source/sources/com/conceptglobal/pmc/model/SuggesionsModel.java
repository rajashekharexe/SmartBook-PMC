package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class SuggesionsModel {
    private String attributeId;
    private String attributeName;
    private String attributeValue;
    private String suggestedValueIds;

    public String getSuggestedValueIds() {
        return this.suggestedValueIds;
    }

    public void setSuggestedValueIds(String str) {
        this.suggestedValueIds = str;
    }

    public String getAttributeId() {
        return this.attributeId;
    }

    public void setAttributeId(String str) {
        this.attributeId = str;
    }

    public String getAttributeName() {
        return this.attributeName;
    }

    public void setAttributeName(String str) {
        this.attributeName = str;
    }

    public String getAttributeValue() {
        return this.attributeValue;
    }

    public void setAttributeValue(String str) {
        this.attributeValue = str;
    }
}
