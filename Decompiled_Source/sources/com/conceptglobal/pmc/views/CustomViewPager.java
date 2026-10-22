package com.conceptglobal.pmc.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.viewpager.widget.ViewPager;
import com.conceptglobal.imaterialdesign.widget.Slider;
import com.conceptglobal.imaterialdesign.widget.Switch;

/* loaded from: classes.dex */
public class CustomViewPager extends ViewPager {
    public CustomViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CustomViewPager(Context context) {
        super(context);
    }

    @Override // androidx.viewpager.widget.ViewPager
    protected boolean canScroll(View view, boolean z, int i, int i2, int i3) {
        return super.canScroll(view, z, i, i2, i3) || (z && customCanScroll(view));
    }

    protected boolean customCanScroll(View view) {
        return (view instanceof Slider) || (view instanceof Switch);
    }
}
