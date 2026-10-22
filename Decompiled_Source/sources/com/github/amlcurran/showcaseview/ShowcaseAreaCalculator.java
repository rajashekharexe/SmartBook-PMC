package com.github.amlcurran.showcaseview;

import android.graphics.Rect;
import android.util.Log;

/* loaded from: classes.dex */
class ShowcaseAreaCalculator {
    private final Rect mShowcaseRect = new Rect();

    ShowcaseAreaCalculator() {
    }

    public boolean calculateShowcaseRect(float f, float f2, ShowcaseDrawer showcaseDrawer) {
        int i = (int) f;
        int i2 = (int) f2;
        int showcaseWidth = showcaseDrawer.getShowcaseWidth();
        int showcaseHeight = showcaseDrawer.getShowcaseHeight();
        int i3 = showcaseWidth / 2;
        int i4 = i - i3;
        if (this.mShowcaseRect.left == i4 && this.mShowcaseRect.top == i2 - (showcaseHeight / 2)) {
            return false;
        }
        Log.d("ShowcaseView", "Recalculated");
        this.mShowcaseRect.left = i4;
        int i5 = showcaseHeight / 2;
        this.mShowcaseRect.top = i2 - i5;
        this.mShowcaseRect.right = i + i3;
        this.mShowcaseRect.bottom = i2 + i5;
        return true;
    }

    public Rect getShowcaseRect() {
        return this.mShowcaseRect;
    }
}
