package com.github.amlcurran.showcaseview;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
public class MaterialShowcaseDrawer implements ShowcaseDrawer {
    private int backgroundColor;
    private final Paint basicPaint;
    private final Paint eraserPaint;
    private final float radius;

    @Override // com.github.amlcurran.showcaseview.ShowcaseDrawer
    public void setShowcaseColour(int i) {
    }

    public MaterialShowcaseDrawer(Resources resources) {
        this.radius = resources.getDimension(R.dimen.showcase_radius_material);
        Paint paint = new Paint();
        this.eraserPaint = paint;
        paint.setColor(ViewCompat.MEASURED_SIZE_MASK);
        paint.setAlpha(0);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.MULTIPLY));
        paint.setAntiAlias(true);
        this.basicPaint = new Paint();
    }

    @Override // com.github.amlcurran.showcaseview.ShowcaseDrawer
    public void drawShowcase(Bitmap bitmap, float f, float f2, float f3) {
        new Canvas(bitmap).drawCircle(f, f2, this.radius, this.eraserPaint);
    }

    @Override // com.github.amlcurran.showcaseview.ShowcaseDrawer
    public int getShowcaseWidth() {
        return (int) (this.radius * 2.0f);
    }

    @Override // com.github.amlcurran.showcaseview.ShowcaseDrawer
    public int getShowcaseHeight() {
        return (int) (this.radius * 2.0f);
    }

    @Override // com.github.amlcurran.showcaseview.ShowcaseDrawer
    public float getBlockedRadius() {
        return this.radius;
    }

    @Override // com.github.amlcurran.showcaseview.ShowcaseDrawer
    public void setBackgroundColour(int i) {
        this.backgroundColor = i;
    }

    @Override // com.github.amlcurran.showcaseview.ShowcaseDrawer
    public void erase(Bitmap bitmap) {
        bitmap.eraseColor(this.backgroundColor);
    }

    @Override // com.github.amlcurran.showcaseview.ShowcaseDrawer
    public void drawToCanvas(Canvas canvas, Bitmap bitmap) {
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.basicPaint);
    }
}
