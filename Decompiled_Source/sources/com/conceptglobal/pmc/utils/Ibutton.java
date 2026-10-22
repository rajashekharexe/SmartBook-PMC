package com.conceptglobal.pmc.utils;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.Button;

/* loaded from: classes.dex */
public class Ibutton extends Button {
    public Ibutton(Context context) {
        super(context);
        init();
    }

    public Ibutton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    public Ibutton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    private void init() {
        setTypeface(Typeface.createFromAsset(getContext().getAssets(), "Gotham-Book.ttf"));
    }
}
