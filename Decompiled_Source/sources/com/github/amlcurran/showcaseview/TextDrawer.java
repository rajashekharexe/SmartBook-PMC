package com.github.amlcurran.showcaseview;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.text.DynamicLayout;
import android.text.Layout;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import android.text.style.TextAppearanceSpan;

/* loaded from: classes.dex */
class TextDrawer {
    private static final int INDEX_TEXT_START_X = 0;
    private static final int INDEX_TEXT_START_Y = 1;
    private static final int INDEX_TEXT_WIDTH = 2;
    private final float actionBarOffset;
    private final Context context;
    private boolean hasRecalculated;
    private final float padding;
    private DynamicLayout textLayout;
    private final TextPaint textPaint;
    private MetricAffectingSpan textSpan;
    private SpannableString textString;
    private DynamicLayout titleLayout;
    private final TextPaint titlePaint;
    private MetricAffectingSpan titleSpan;
    private SpannableString titleString;
    private Layout.Alignment textAlignment = Layout.Alignment.ALIGN_NORMAL;
    private Layout.Alignment titleAlignment = Layout.Alignment.ALIGN_NORMAL;
    private float[] mBestTextPosition = new float[3];
    private int forcedTextPosition = -1;

    public TextDrawer(Resources resources, Context context) {
        this.padding = resources.getDimension(R.dimen.text_padding);
        this.actionBarOffset = resources.getDimension(R.dimen.action_bar_offset);
        this.context = context;
        TextPaint textPaint = new TextPaint();
        this.titlePaint = textPaint;
        textPaint.setAntiAlias(true);
        TextPaint textPaint2 = new TextPaint();
        this.textPaint = textPaint2;
        textPaint2.setAntiAlias(true);
    }

    public void draw(Canvas canvas) {
        if (shouldDrawText()) {
            float[] bestTextPosition = getBestTextPosition();
            int max = Math.max(0, (int) this.mBestTextPosition[2]);
            if (!TextUtils.isEmpty(this.titleString)) {
                canvas.save();
                if (this.hasRecalculated) {
                    this.titleLayout = new DynamicLayout(this.titleString, this.titlePaint, max, this.titleAlignment, 1.0f, 1.0f, true);
                }
                if (this.titleLayout != null) {
                    canvas.translate(bestTextPosition[0], bestTextPosition[1]);
                    this.titleLayout.draw(canvas);
                    canvas.restore();
                }
            }
            if (!TextUtils.isEmpty(this.textString)) {
                canvas.save();
                if (this.hasRecalculated) {
                    this.textLayout = new DynamicLayout(this.textString, this.textPaint, max, this.textAlignment, 1.2f, 1.0f, true);
                }
                float height = this.titleLayout != null ? r2.getHeight() : 0.0f;
                if (this.textLayout != null) {
                    canvas.translate(bestTextPosition[0], bestTextPosition[1] + height);
                    this.textLayout.draw(canvas);
                    canvas.restore();
                }
            }
        }
        this.hasRecalculated = false;
    }

    public void setContentText(CharSequence charSequence) {
        if (charSequence != null) {
            SpannableString spannableString = new SpannableString(charSequence);
            spannableString.setSpan(this.textSpan, 0, spannableString.length(), 0);
            this.textString = spannableString;
            this.hasRecalculated = true;
        }
    }

    public void setContentTitle(CharSequence charSequence) {
        if (charSequence != null) {
            SpannableString spannableString = new SpannableString(charSequence);
            spannableString.setSpan(this.titleSpan, 0, spannableString.length(), 0);
            this.titleString = spannableString;
            this.hasRecalculated = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x009a, code lost:
    
        if (r4 != 3) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void calculateTextPosition(int r11, int r12, boolean r13, android.graphics.Rect r14) {
        /*
            Method dump skipped, instructions count: 199
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.amlcurran.showcaseview.TextDrawer.calculateTextPosition(int, int, boolean, android.graphics.Rect):void");
    }

    public void setTitleStyling(int i) {
        this.titleSpan = new TextAppearanceSpan(this.context, i);
        setContentTitle(this.titleString);
    }

    public void setDetailStyling(int i) {
        this.textSpan = new TextAppearanceSpan(this.context, i);
        setContentText(this.textString);
    }

    public float[] getBestTextPosition() {
        return this.mBestTextPosition;
    }

    public boolean shouldDrawText() {
        return (TextUtils.isEmpty(this.titleString) && TextUtils.isEmpty(this.textString)) ? false : true;
    }

    public void setContentPaint(TextPaint textPaint) {
        this.textPaint.set(textPaint);
        SpannableString spannableString = this.textString;
        if (spannableString != null) {
            spannableString.removeSpan(this.textSpan);
        }
        this.textSpan = new NoOpSpan();
        setContentText(this.textString);
    }

    public void setTitlePaint(TextPaint textPaint) {
        this.titlePaint.set(textPaint);
        SpannableString spannableString = this.titleString;
        if (spannableString != null) {
            spannableString.removeSpan(this.titleSpan);
        }
        this.titleSpan = new NoOpSpan();
        setContentTitle(this.titleString);
    }

    public void setDetailTextAlignment(Layout.Alignment alignment) {
        this.textAlignment = alignment;
    }

    public void setTitleTextAlignment(Layout.Alignment alignment) {
        this.titleAlignment = alignment;
    }

    public void forceTextPosition(int i) {
        if (i > 3 || i < -1) {
            throw new IllegalArgumentException("ShowcaseView text was forced with an invalid position");
        }
        this.forcedTextPosition = i;
    }

    private static class NoOpSpan extends MetricAffectingSpan {
        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
        }

        @Override // android.text.style.MetricAffectingSpan
        public void updateMeasureState(TextPaint textPaint) {
        }

        private NoOpSpan() {
        }
    }
}
