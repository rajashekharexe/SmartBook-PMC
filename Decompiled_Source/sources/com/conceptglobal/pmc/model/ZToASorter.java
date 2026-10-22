package com.conceptglobal.pmc.model;

import android.util.Log;
import java.util.Comparator;

/* loaded from: classes.dex */
public class ZToASorter implements Comparator<DashboardListModel> {
    @Override // java.util.Comparator
    public int compare(DashboardListModel dashboardListModel, DashboardListModel dashboardListModel2) {
        Log.d("SortTime", System.currentTimeMillis() + "");
        return dashboardListModel2.getData().get(0).toUpperCase().compareTo(dashboardListModel.getData().get(0).toUpperCase());
    }
}
