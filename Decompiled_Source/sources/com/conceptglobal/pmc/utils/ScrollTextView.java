package com.conceptglobal.pmc.utils;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.animation.LinearInterpolator;
import android.widget.Scroller;
import android.widget.TextView;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import io.fabric.sdk.android.services.common.AbstractSpiCall;

/* loaded from: classes.dex */
public class ScrollTextView extends TextView {
    Context context;
    private boolean mPaused;
    private int mRndDuration;
    private Scroller mSlr;
    private int mXPaused;
    int val;

    public ScrollTextView(Context context) {
        this(context, null);
        this.context = context;
        setSingleLine();
        setEllipsize(null);
        setVisibility(4);
    }

    public ScrollTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
        setSingleLine();
        setEllipsize(null);
        setVisibility(4);
    }

    public ScrollTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mRndDuration = AbstractSpiCall.DEFAULT_TIMEOUT;
        this.mXPaused = 0;
        this.mPaused = true;
        this.val = 0;
        setSingleLine();
        setEllipsize(null);
        setVisibility(4);
    }

    public void startScroll() {
        this.mXPaused = getWidth() * (-1);
        this.mPaused = true;
        resumeScroll();
    }

    public int getVal() {
        int i = this.val;
        this.val = i + 1;
        return i;
    }

    public void setVal(int i) {
        this.val = i;
    }

    private void resumeScroll() {
        double d;
        if (this.mPaused) {
            setHorizontallyScrolling(true);
            Scroller scroller = new Scroller(getContext(), new LinearInterpolator());
            this.mSlr = scroller;
            setScroller(scroller);
            int calculateScrollingLen = calculateScrollingLen();
            int width = calculateScrollingLen - (getWidth() + this.mXPaused);
            if (calculateScrollingLen <= 10000) {
                this.mRndDuration = AbstractSpiCall.DEFAULT_TIMEOUT;
                d = 2.0d;
            } else if (calculateScrollingLen <= 50000) {
                this.mRndDuration = 30000;
                d = 5.0d;
            } else {
                double d2 = 50.0d;
                if (calculateScrollingLen >= 50000 && calculateScrollingLen < 100000) {
                    this.mRndDuration = 20000;
                } else if (calculateScrollingLen >= 100000 && calculateScrollingLen < 150000) {
                    this.mRndDuration = 50000;
                } else if (calculateScrollingLen < 150000 || calculateScrollingLen >= 190000) {
                    d2 = 115.0d;
                    if (calculateScrollingLen >= 190000) {
                        this.mRndDuration = AbstractSpiCall.DEFAULT_TIMEOUT;
                    } else if (calculateScrollingLen >= 190000) {
                        this.mRndDuration = AbstractSpiCall.DEFAULT_TIMEOUT;
                    } else {
                        d = 1.0d;
                    }
                } else {
                    this.mRndDuration = 60000;
                    d = 75.0d;
                }
                d = d2;
            }
            double d3 = calculateScrollingLen;
            new Double(((this.mRndDuration * width) * d) / d3).intValue();
            int intValue = new Double(((this.mRndDuration * width) * d) / d3).intValue();
            setVisibility(0);
            this.mSlr.startScroll(this.mXPaused, 0, width, 0, intValue);
            invalidate();
            this.mPaused = false;
        }
    }

    private int calculateScrollingLen() {
        TextPaint paint = getPaint();
        Rect rect = new Rect();
        String charSequence = getText().toString();
        paint.getTextBounds(charSequence, 0, charSequence.length(), rect);
        return rect.width() + getWidth();
    }

    public void pauseScroll() {
        Scroller scroller = this.mSlr;
        if (scroller == null || this.mPaused) {
            return;
        }
        this.mPaused = true;
        this.mXPaused = scroller.getCurrX();
        this.mSlr.abortAnimation();
    }

    @Override // android.widget.TextView, android.view.View
    public void computeScroll() {
        super.computeScroll();
        Scroller scroller = this.mSlr;
        if (scroller == null || !scroller.isFinished() || this.mPaused) {
            return;
        }
        pauseScroll();
        this.val++;
        Intent intent = new Intent("gettickercall");
        intent.putExtra("tickerpos", this.val);
        LocalBroadcastManager.getInstance(this.context).sendBroadcast(intent);
    }

    public int getRndDuration() {
        return this.mRndDuration;
    }

    public void setRndDuration(int i) {
        this.mRndDuration = i;
    }

    public boolean isPaused() {
        return this.mPaused;
    }
}
