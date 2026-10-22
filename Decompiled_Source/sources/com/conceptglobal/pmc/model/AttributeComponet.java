package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class AttributeComponet {
    String attributeName;
    String controlType;
    boolean isActive;

    public String getAttributeName() {
        return this.attributeName;
    }

    public void setAttributeName(String str) {
        this.attributeName = str;
    }

    public String getControlType() {
        return this.controlType;
    }

    public void setControlType(String str) {
        this.controlType = str;
    }

    public boolean isActive() {
        return this.isActive;
    }

    public void setActive(boolean z) {
        this.isActive = z;
    }

    public AttributeComponet(String str, String str2, boolean z) {
        this.attributeName = str;
        this.controlType = str2;
        this.isActive = z;
    }

    public AttributeComponet() {
    }

    public String toString() {
        return "AttributeComponet [attributeName=" + this.attributeName + ", controlType=" + this.controlType + ", isActive=" + this.isActive + "]";
    }
}
