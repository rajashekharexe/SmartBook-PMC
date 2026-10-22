package com.conceptglobal.pmc.model;

import com.conceptglobal.pmc.common.ConstantsPMC;
import java.util.Comparator;
import java.util.function.Function;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* loaded from: classes.dex */
public class FarmerTotalSalesSorter implements Comparator<DashboardListModel> {
    private String segmentType;

    public FarmerTotalSalesSorter(String str) {
        this.segmentType = str;
    }

    @Override // java.util.Comparator
    public int compare(DashboardListModel dashboardListModel, DashboardListModel dashboardListModel2) {
        int compare;
        if (ConstantsPMC.TYPE_Retailer.equalsIgnoreCase(this.segmentType)) {
            compare = Double.compare(dashboardListModel2.getBalance_Points(), dashboardListModel.getBalance_Points());
        } else {
            compare = Double.compare(dashboardListModel2.getOutStandingValue(), dashboardListModel.getOutStandingValue());
        }
        return compare == 0 ? dashboardListModel.getData().get(0).toUpperCase().compareTo(dashboardListModel2.getData().get(0).toUpperCase()) : compare;
    }

    @Override // java.util.Comparator
    public Comparator<DashboardListModel> reversed() {
        return super.reversed();
    }

    @Override // java.util.Comparator
    public Comparator<DashboardListModel> thenComparing(Comparator<? super DashboardListModel> comparator) {
        return super.thenComparing(comparator);
    }

    @Override // java.util.Comparator
    public <U> Comparator<DashboardListModel> thenComparing(Function<? super DashboardListModel, ? extends U> function, Comparator<? super U> comparator) {
        return super.thenComparing(function, comparator);
    }

    @Override // java.util.Comparator
    public <U extends Comparable<? super U>> Comparator<DashboardListModel> thenComparing(Function<? super DashboardListModel, ? extends U> function) {
        return super.thenComparing(function);
    }

    @Override // java.util.Comparator
    public Comparator<DashboardListModel> thenComparingInt(ToIntFunction<? super DashboardListModel> toIntFunction) {
        return super.thenComparingInt(toIntFunction);
    }

    @Override // java.util.Comparator
    public Comparator<DashboardListModel> thenComparingLong(ToLongFunction<? super DashboardListModel> toLongFunction) {
        return super.thenComparingLong(toLongFunction);
    }

    @Override // java.util.Comparator
    public Comparator<DashboardListModel> thenComparingDouble(ToDoubleFunction<? super DashboardListModel> toDoubleFunction) {
        return super.thenComparingDouble(toDoubleFunction);
    }
}
