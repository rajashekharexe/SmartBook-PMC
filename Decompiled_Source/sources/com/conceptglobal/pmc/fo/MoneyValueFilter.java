package com.conceptglobal.pmc.fo;

import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.method.DigitsKeyListener;

/* loaded from: classes.dex */
public class MoneyValueFilter extends DigitsKeyListener {
    private int digits;

    public MoneyValueFilter() {
        super(false, true);
        this.digits = 2;
    }

    public void setDigits(int i) {
        this.digits = i;
    }

    @Override // android.text.method.DigitsKeyListener, android.text.method.NumberKeyListener, android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        CharSequence filter = super.filter(charSequence, i, i2, spanned, i3, i4);
        if (filter != null) {
            i2 = filter.length();
            charSequence = filter;
            i = 0;
        }
        int i5 = i2 - i;
        if (i5 == 0) {
            return charSequence;
        }
        int length = spanned.length();
        for (int i6 = 0; i6 < i3; i6++) {
            if (spanned.charAt(i6) == '.') {
                if ((length - (i6 + 1)) + i5 > this.digits) {
                    return "";
                }
                return new SpannableStringBuilder(charSequence, i, i2);
            }
        }
        int i7 = i;
        while (true) {
            if (i7 >= i2) {
                break;
            }
            if (charSequence.charAt(i7) != '.') {
                i7++;
            } else if ((length - i4) + (i2 - (i7 + 1)) > this.digits) {
                return "";
            }
        }
        return new SpannableStringBuilder(charSequence, i, i2);
    }
}
