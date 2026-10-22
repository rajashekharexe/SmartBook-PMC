package com.conceptglobal.pmc.common;

import android.text.InputFilter;
import android.text.Spanned;

/* loaded from: classes.dex */
public class InputFloatFilterMinMax implements InputFilter {
    private float max;
    private float min;

    private boolean isInRange(float f, float f2, float f3) {
        if (f2 > f) {
            if (f3 >= f && f3 <= f2) {
                return true;
            }
        } else if (f3 >= f2 && f3 <= f) {
            return true;
        }
        return false;
    }

    public InputFloatFilterMinMax(float f, float f2) {
        this.min = f;
        this.max = f2;
    }

    public InputFloatFilterMinMax(String str, String str2) {
        this.min = Float.parseFloat(str);
        this.max = Float.parseFloat(str2);
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        try {
            if (isInRange(this.min, this.max, Float.parseFloat(spanned.toString() + charSequence.toString()))) {
                return null;
            }
            return "";
        } catch (NumberFormatException unused) {
            return "";
        }
    }
}
