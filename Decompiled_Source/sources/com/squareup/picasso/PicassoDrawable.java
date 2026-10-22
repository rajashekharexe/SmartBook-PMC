package com.squareup.picasso;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.widget.ImageView;
import com.squareup.picasso.Picasso;

/* loaded from: classes2.dex */
final class PicassoDrawable extends Drawable {
    private static final Paint DEBUG_PAINT = new Paint();
    private static final float FADE_DURATION = 200.0f;
    int alpha = 255;
    boolean animating;
    private final boolean debugging;
    private final float density;
    final BitmapDrawable image;
    private final Picasso.LoadedFrom loadedFrom;
    Drawable placeholder;
    long startTimeMillis;

    static void setBitmap(ImageView imageView, Context context, Bitmap bitmap, Picasso.LoadedFrom loadedFrom, boolean z, boolean z2) {
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof AnimationDrawable) {
            ((AnimationDrawable) drawable).stop();
        }
        imageView.setImageDrawable(new PicassoDrawable(context, drawable, bitmap, loadedFrom, z, z2));
    }

    static void setPlaceholder(ImageView imageView, int i, Drawable drawable) {
        if (i != 0) {
            imageView.setImageResource(i);
        } else {
            imageView.setImageDrawable(drawable);
        }
        if (imageView.getDrawable() instanceof AnimationDrawable) {
            ((AnimationDrawable) imageView.getDrawable()).start();
        }
    }

    PicassoDrawable(Context context, Drawable drawable, Bitmap bitmap, Picasso.LoadedFrom loadedFrom, boolean z, boolean z2) {
        Resources resources = context.getResources();
        this.debugging = z2;
        this.density = resources.getDisplayMetrics().density;
        this.loadedFrom = loadedFrom;
        this.image = new BitmapDrawable(resources, bitmap);
        if (loadedFrom == Picasso.LoadedFrom.MEMORY || z) {
            return;
        }
        this.placeholder = drawable;
        this.animating = true;
        this.startTimeMillis = SystemClock.uptimeMillis();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (!this.animating) {
            this.image.draw(canvas);
        } else {
            float uptimeMillis = (SystemClock.uptimeMillis() - this.startTimeMillis) / FADE_DURATION;
            if (uptimeMillis >= 1.0f) {
                this.animating = false;
                this.placeholder = null;
                this.image.draw(canvas);
            } else {
                Drawable drawable = this.placeholder;
                if (drawable != null) {
                    drawable.draw(canvas);
                }
                this.image.setAlpha((int) (this.alpha * uptimeMillis));
                this.image.draw(canvas);
                this.image.setAlpha(this.alpha);
                invalidateSelf();
            }
        }
        if (this.debugging) {
            drawDebugIndicator(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.image.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.image.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.alpha = i;
        Drawable drawable = this.placeholder;
        if (drawable != null) {
            drawable.setAlpha(i);
        }
        this.image.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.placeholder;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
        this.image.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.image.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.image.setBounds(rect);
        Drawable drawable = this.placeholder;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    private void drawDebugIndicator(Canvas canvas) {
        Paint paint = DEBUG_PAINT;
        paint.setColor(-1);
        canvas.drawPath(getTrianglePath(new Point(0, 0), (int) (this.density * 16.0f)), paint);
        paint.setColor(this.loadedFrom.debugColor);
        canvas.drawPath(getTrianglePath(new Point(0, 0), (int) (this.density * 15.0f)), paint);
    }

    private static Path getTrianglePath(Point point, int i) {
        Point point2 = new Point(point.x + i, point.y);
        Point point3 = new Point(point.x, point.y + i);
        Path path = new Path();
        path.moveTo(point.x, point.y);
        path.lineTo(point2.x, point2.y);
        path.lineTo(point3.x, point3.y);
        return path;
    }
}
