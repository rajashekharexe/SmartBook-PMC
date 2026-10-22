package com.conceptglobal.pmc.utils;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.TextView;

/* loaded from: classes.dex */
public class Itext extends TextView {
    public Itext(Context context) {
        super(context);
        init();
    }

    public Itext(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    public Itext(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    private void init() {
        setTypeface(Typeface.createFromAsset(getContext().getAssets(), "Gotham-Book.ttf"));
    }
}
