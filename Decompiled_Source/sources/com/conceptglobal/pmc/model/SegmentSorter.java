package com.conceptglobal.pmc.model;

import com.conceptglobal.pmc.common.ConstantsPMC;
import java.util.Comparator;
import java.util.function.Function;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* loaded from: classes.dex */
public class SegmentSorter implements Comparator<DashboardListModel> {
    private String segmentType;

    @Override // java.util.Comparator
    public Comparator<DashboardListModel> reversed() {
        return null;
    }

    @Override // java.util.Comparator
    public Comparator<DashboardListModel> thenComparing(Comparator<? super DashboardListModel> comparator) {
        return null;
    }

    @Override // java.util.Comparator
    public <U extends Comparable<? super U>> Comparator<DashboardListModel> thenComparing(Function<? super DashboardListModel, ? extends U> function) {
        return null;
    }

    @Override // java.util.Comparator
    public <U> Comparator<DashboardListModel> thenComparing(Function<? super DashboardListModel, ? extends U> function, Comparator<? super U> comparator) {
        return null;
    }

    @Override // java.util.Comparator
    public Comparator<DashboardListModel> thenComparingDouble(ToDoubleFunction<? super DashboardListModel> toDoubleFunction) {
        return null;
    }

    @Override // java.util.Comparator
    public Comparator<DashboardListModel> thenComparingInt(ToIntFunction<? super DashboardListModel> toIntFunction) {
        return null;
    }

    @Override // java.util.Comparator
    public Comparator<DashboardListModel> thenComparingLong(ToLongFunction<? super DashboardListModel> toLongFunction) {
        return null;
    }

    public SegmentSorter(String str) {
        this.segmentType = str;
    }

    @Override // java.util.Comparator
    public int compare(DashboardListModel dashboardListModel, DashboardListModel dashboardListModel2) {
        int compareTo;
        if (ConstantsPMC.TYPE_Retailer.equalsIgnoreCase(this.segmentType)) {
            compareTo = String.valueOf(dashboardListModel.getBalance_Points()).compareTo(String.valueOf(dashboardListModel2.getBalance_Points()));
        } else {
            compareTo = String.valueOf(dashboardListModel.getOutStandingValue()).compareTo(String.valueOf(dashboardListModel2.getOutStandingValue()));
        }
        return compareTo == 0 ? dashboardListModel.getData().get(0).toUpperCase().compareTo(dashboardListModel2.getData().get(0).toUpperCase()) : compareTo;
    }
}
