package com.conceptglobal.pmc.utils;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.GridView;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
public class ExpandableHeightGridView extends GridView {
    boolean expanded;

    public ExpandableHeightGridView(Context context) {
        super(context);
        this.expanded = false;
    }

    public ExpandableHeightGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.expanded = false;
    }

    public ExpandableHeightGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.expanded = false;
    }

    public boolean isExpanded() {
        return this.expanded;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i, int i2) {
        if (isExpanded()) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(ViewCompat.MEASURED_SIZE_MASK, Integer.MIN_VALUE));
            getLayoutParams().height = getMeasuredHeight();
            return;
        }
        super.onMeasure(i, i2);
    }

    public void setExpanded(boolean z) {
        this.expanded = z;
    }
}
