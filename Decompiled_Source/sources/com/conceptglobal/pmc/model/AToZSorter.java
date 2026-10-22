package com.conceptglobal.pmc.model;

import android.util.Log;
import java.util.Comparator;

/* loaded from: classes.dex */
public class AToZSorter implements Comparator<DashboardListModel> {
    @Override // java.util.Comparator
    public int compare(DashboardListModel dashboardListModel, DashboardListModel dashboardListModel2) {
        Log.d("SortTime", System.currentTimeMillis() + "");
        return dashboardListModel.getData().get(0).toUpperCase().compareTo(dashboardListModel2.getData().get(0).toUpperCase());
    }
}
