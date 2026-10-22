package de.keyboardsurfer.android.widget.crouton;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import androidx.collection.LruCache;

/* loaded from: classes2.dex */
public class TypefaceSpan extends MetricAffectingSpan {
    private static LruCache<String, Typeface> sTypefaceCache = new LruCache<>(5);
    private Typeface mTypeface;

    public TypefaceSpan(Context context, String str) {
        Typeface typeface = sTypefaceCache.get(str);
        this.mTypeface = typeface;
        if (typeface == null) {
            Typeface createFromAsset = Typeface.createFromAsset(context.getApplicationContext().getAssets(), String.format("%s", str));
            this.mTypeface = createFromAsset;
            sTypefaceCache.put(str, createFromAsset);
        }
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        textPaint.setTypeface(this.mTypeface);
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setTypeface(this.mTypeface);
    }
}
