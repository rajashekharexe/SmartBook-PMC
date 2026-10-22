package com.conceptglobal.pmc.textdrawable;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.util.TypedValue;
import com.conceptglobal.pmc.textdrawable.TextDrawable;

/* loaded from: classes.dex */
public class DrawableProvider {
    public static final int SAMPLE_ANIMATION = 10;
    public static final int SAMPLE_FONT = 8;
    public static final int SAMPLE_MISC = 11;
    public static final int SAMPLE_MULTIPLE_LETTERS = 7;
    public static final int SAMPLE_RECT = 1;
    public static final int SAMPLE_RECT_BORDER = 4;
    public static final int SAMPLE_ROUND = 3;
    public static final int SAMPLE_ROUND_BORDER = 6;
    public static final int SAMPLE_ROUND_RECT = 2;
    public static final int SAMPLE_ROUND_RECT_BORDER = 5;
    public static final int SAMPLE_SIZE = 9;
    private final Context mContext;
    private final ColorGenerator mGenerator = ColorGenerator.DEFAULT;

    public DrawableProvider(Context context) {
        this.mContext = context;
    }

    public TextDrawable getRect(String str) {
        return TextDrawable.builder().buildRect(str, this.mGenerator.getColor(str));
    }

    public TextDrawable getRound(String str) {
        return TextDrawable.builder().buildRound(str, this.mGenerator.getColor(str));
    }

    public TextDrawable getRoundRect(String str) {
        return TextDrawable.builder().buildRoundRect(str, this.mGenerator.getColor(str), toPx(10));
    }

    public TextDrawable getRectWithBorder(String str) {
        return TextDrawable.builder().beginConfig().withBorder(toPx(2)).endConfig().buildRect(str, this.mGenerator.getColor(str));
    }

    public TextDrawable getRoundWithBorder(String str) {
        return TextDrawable.builder().beginConfig().withBorder(toPx(2)).endConfig().buildRound(str, this.mGenerator.getColor(str));
    }

    public TextDrawable getRoundRectWithBorder(String str) {
        return TextDrawable.builder().beginConfig().withBorder(toPx(2)).endConfig().buildRoundRect(str, this.mGenerator.getColor(str), toPx(10));
    }

    public TextDrawable getRectWithMultiLetter() {
        return TextDrawable.builder().beginConfig().fontSize(toPx(20)).toUpperCase().endConfig().buildRect("AK", this.mGenerator.getColor("AK"));
    }

    public TextDrawable getRoundWithCustomFont() {
        return TextDrawable.builder().beginConfig().useFont(Typeface.DEFAULT).fontSize(toPx(15)).textColor(-686759).bold().endConfig().buildRect("Bold", -12303292);
    }

    public Drawable getRectWithCustomSize() {
        TextDrawable.IBuilder rect = TextDrawable.builder().beginConfig().width(toPx(29)).withBorder(toPx(2)).endConfig().rect();
        return new LayerDrawable(new Drawable[]{new InsetDrawable((Drawable) rect.build("I", this.mGenerator.getColor("I")), 0, 0, toPx(31), 0), new InsetDrawable((Drawable) rect.build("J", this.mGenerator.getColor("J")), toPx(31), 0, 0, 0)});
    }

    public Drawable getRectWithAnimation() {
        TextDrawable.IBuilder rect = TextDrawable.builder().rect();
        AnimationDrawable animationDrawable = new AnimationDrawable();
        for (int i = 10; i > 0; i--) {
            animationDrawable.addFrame(rect.build(String.valueOf(i), this.mGenerator.getRandomColor()), 1200);
        }
        animationDrawable.setOneShot(false);
        animationDrawable.start();
        return animationDrawable;
    }

    public int toPx(int i) {
        return (int) TypedValue.applyDimension(1, i, this.mContext.getResources().getDisplayMetrics());
    }
}
