package com.conceptglobal.pmc.model;

import java.util.List;

/* loaded from: classes.dex */
public class CustomListDisplayModel {
    private String Field1;
    private String Field2;
    private String Field3;
    private String VillageName;
    private List<String> data;
    private String latitude;
    private String longitude;
    private String typeId;
    private String typeName;

    public String getVillageName() {
        return this.VillageName;
    }

    public void setVillageName(String str) {
        this.VillageName = str;
    }

    public String getLatitude() {
        return this.latitude;
    }

    public void setLatitude(String str) {
        this.latitude = str;
    }

    public String getLongitude() {
        return this.longitude;
    }

    public void setLongitude(String str) {
        this.longitude = str;
    }

    public String getTypeId() {
        return this.typeId;
    }

    public void setTypeId(String str) {
        this.typeId = str;
    }

    public String getTypeName() {
        return this.typeName;
    }

    public void setTypeName(String str) {
        this.typeName = str;
    }

    public String getField1() {
        return this.Field1;
    }

    public void setField1(String str) {
        this.Field1 = str;
    }

    public String getField2() {
        return this.Field2;
    }

    public void setField2(String str) {
        this.Field2 = str;
    }

    public String getField3() {
        return this.Field3;
    }

    public void setField3(String str) {
        this.Field3 = str;
    }

    public List<String> getData() {
        return this.data;
    }

    public void setData(List<String> list) {
        this.data = list;
    }
}
