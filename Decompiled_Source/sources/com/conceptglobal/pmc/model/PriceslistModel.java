package com.conceptglobal.pmc.model;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class PriceslistModel {
    private List<TableBean> Table = new ArrayList();

    public List<TableBean> getTable() {
        return this.Table;
    }

    public void setTable(List<TableBean> list) {
        this.Table = list;
    }
}
