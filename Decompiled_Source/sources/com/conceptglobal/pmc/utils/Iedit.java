package com.conceptglobal.pmc.utils;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.EditText;

/* loaded from: classes.dex */
public class Iedit extends EditText {
    public Iedit(Context context) {
        super(context);
        init();
    }

    public Iedit(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    public Iedit(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    private void init() {
        setTypeface(Typeface.createFromAsset(getContext().getAssets(), "Gotham-Book.ttf"));
    }
}
