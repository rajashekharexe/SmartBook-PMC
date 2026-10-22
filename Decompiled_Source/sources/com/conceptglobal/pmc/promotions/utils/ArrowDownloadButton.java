package com.conceptglobal.pmc.promotions.utils;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ArrowDownloadButton extends View {
    private static final int ANGLE = 360;
    private static final float ARC_WIDTH = 20.0f;
    private static final String ARC_WIDTH_I = "arc_width";
    private static final float ARROW_WIDTH = 10.0f;
    private static final String ARROW_WIDTH_I = "arrow_width";
    private static final String BEZIER_I = "bezier";
    private static final int COMPLETE_DURATION = 20;
    private static final String COUNT_I = "count";
    private static final String CURRENT_TIME_I = "current_time";
    private static final float DOWN_STEP = 7.5f;
    private static final String DOWN_STEP_I = "down_step";
    private static final int DURATION = 20;
    private static final float ELASTICITY_STEP = 10.0f;
    private static final String ELASTICITY_STEP_I = "elasticity_step";
    private static final float HOOK_COUNT = 4.0f;
    private static final String HOOK_COUNT_I = "hook_count";
    private static final float HOOK_STEP_Y = 15.0f;
    private static final String HOOK_STEP_Y_I = "hook_step";
    private static final String INSTANCE_STATE = "instance_state";
    private static final String IS_ANIMATING_I = "is_animating";
    private static final String IS_COMPLETED_I = "is_completed";
    private static final String IS_END_I = "is_end";
    private static final String IS_FIRST_I = "is_first";
    private static final String IS_LOADING_I = "is_loading";
    private static final float JUMP_STEP = 45.0f;
    private static final String JUMP_STEP_I = "jump_step";
    private static final String LENGTH_I = "length";
    private static final String LENGTH_X_I = "length_x";
    private static final String LENGTH_Y_I = "length_y";
    private static final float LITTLE_STEP = 8.0f;
    private static final String LITTLE_STEP_I = "little_step";
    private static final float LOADING_WIDTH = 10.0f;
    private static final String LOADING_WIDTH_I = "loading_width";
    private static final float MAX_WAVE_HEIGHT = 10.0f;
    private static final String MAX_WAVE_HEIGHT_I = "max_wave_height";
    private static final float MIN_WAVE_HEIGHT = 5.0f;
    private static final String MIN_WAVE_HEIGHT_I = "min_wave_height";
    private static final float OFFSET = 10.0f;
    private static final int PROGRESS = 100;
    private static final String PROGRESS_I = "progress";
    private static final float RADIUS = 180.0f;
    private static final String RADIUS_I = "radius";
    private static final float ROPE_HEAD_STEP_Y = 17.0f;
    private static final String ROPE_HEAD_STEP_Y_I = "rope_head_step_y";
    private static final float ROPE_STEP_X = 30.0f;
    private static final String ROPE_STEP_X_I = "rope_step_x";
    private static final float ROPE_STEP_Y = 32.0f;
    private static final String ROPE_STEP_Y_I = "rope_step_y";
    private static final float SMALL_RADIUS = 5.0f;
    private static final String SMALL_RADIUS_I = "small_radius";
    private static final float STEP = 2.0f;
    private static final String STEP_I = "step";
    private static final float TEXT_SIZE = 40.0f;
    private static final String TEXT_SIZE_I = "text_size";
    private static final float TEXT_Y = 67.5f;
    private static final String TEXT_Y_I = "text_y";
    private static final float TIME_STEP = 20.0f;
    private static final int TRI_POINT_NUMBER = 17;
    private static final float TRI_STEP = 16.875f;
    private static final String TRI_STEP_I = "tri_step";
    private static final float TRI_WIDTH = 10.0f;
    private static final String TRI_WIDTH_I = "tri_width";
    private static final String WAVE_HEIGHT_I = "wave_height";
    private static final String X_I = "x";
    private static final String Y_I = "y";
    private Point a;
    private Paint arcPaint;
    private float arcWidth;
    private Paint arrowPaint;
    private Path arrowPath;
    private float arrowWidth;
    private Point b;
    private boolean bezier;
    private Point c;
    private int count;
    private int currentTime;
    private Point d;
    private float downStep;
    private Point e;
    private float elasticityStep;
    private int hookCount;
    private float hookStepY;
    private boolean isAnimating;
    private boolean isCompleted;
    private boolean isEnd;
    private boolean isFirst;
    private boolean isLoading;
    private Point jumpPoint;
    private float jumpStep;
    private float length;
    float lengthX;
    float lengthY;
    private float littleStep;
    private Paint loadingPaint;
    private float loadingWidth;
    private float maxWaveHeight;
    private float minWaveHeight;
    private RectF oval;
    private float progress;
    private float radius;
    private float ropeHeadStepY;
    private float ropeStepX;
    private float ropeStepY;
    private Paint smallPaint;
    private float smallRadius;
    private float step;
    private Paint textPaint;
    private Path textPath;
    private float textSize;
    private float textY;
    private Paint triPaint;
    private Path triPath;
    private List<Point> triPoints;
    private float triStep;
    private float triWidth;
    private float waveHeight;
    private float x;
    private float y;
    private static final int BLUE_ONE = Color.rgb(255, 255, 255);
    private static final int WHILE = Color.rgb(46, 164, 242);

    public float getProgress() {
        return this.progress;
    }

    public void setProgress(float f) {
        if (f > 100.0f) {
            this.progress = 100.0f;
        } else {
            this.progress = f;
        }
        if (f == 100.0f) {
            this.isLoading = false;
            this.isCompleted = true;
        }
    }

    public ArrowDownloadButton(Context context) {
        this(context, null);
    }

    public ArrowDownloadButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ArrowDownloadButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.x = 550.0f;
        this.y = 550.0f;
        this.radius = RADIUS;
        this.maxWaveHeight = 10.0f;
        this.minWaveHeight = 5.0f;
        this.textY = TEXT_Y;
        this.step = STEP;
        this.elasticityStep = 10.0f;
        this.ropeStepX = ROPE_STEP_X;
        this.ropeStepY = ROPE_STEP_Y;
        this.ropeHeadStepY = ROPE_HEAD_STEP_Y;
        this.jumpStep = JUMP_STEP;
        this.downStep = DOWN_STEP;
        this.triStep = TRI_STEP;
        this.hookStepY = HOOK_STEP_Y;
        this.littleStep = LITTLE_STEP;
        this.smallRadius = 5.0f;
        this.textSize = TEXT_SIZE;
        this.arcWidth = 20.0f;
        this.arrowWidth = 10.0f;
        this.triWidth = 10.0f;
        this.loadingWidth = 10.0f;
        this.triPoints = new ArrayList();
        this.isFirst = true;
        this.isAnimating = false;
        this.bezier = false;
        this.isLoading = false;
        this.isCompleted = false;
        this.isEnd = false;
        this.count = 0;
        this.currentTime = 0;
        this.waveHeight = 5.0f;
        this.progress = 0.0f;
        this.hookCount = 0;
        float f = this.radius;
        this.lengthX = (f * 3.0f) / HOOK_COUNT;
        this.lengthY = (f * 3.0f) / HOOK_COUNT;
        init();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(measure(i, true), measure(i2, false));
    }

    private int measure(int i, boolean z) {
        int paddingTop;
        int paddingBottom;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (z) {
            paddingTop = getPaddingLeft();
            paddingBottom = getPaddingRight();
        } else {
            paddingTop = getPaddingTop();
            paddingBottom = getPaddingBottom();
        }
        int i2 = paddingTop + paddingBottom;
        if (mode == 1073741824) {
            return size;
        }
        int suggestedMinimumWidth = (z ? getSuggestedMinimumWidth() : getSuggestedMinimumHeight()) + i2;
        if (mode != Integer.MIN_VALUE) {
            return suggestedMinimumWidth;
        }
        if (z) {
            return Math.max(suggestedMinimumWidth, size);
        }
        return Math.min(suggestedMinimumWidth, size);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.isFirst) {
            init();
            this.isFirst = false;
        }
        canvas.drawCircle(this.x, this.y, this.radius, this.arcPaint);
        drawArrow(canvas);
        if (this.isAnimating) {
            animating();
        }
        if (this.isLoading) {
            loading(canvas);
        }
        if (this.isCompleted) {
            afterCompleted(canvas);
        }
    }

    private void init() {
        float width = (getHeight() > getWidth() ? getWidth() : getHeight()) / 2;
        float f = (width * 10.0f) / RADIUS;
        this.radius = ((width - f) - f) - 6.0f;
        this.x = getPaddingLeft() + (getWidth() / 2);
        this.y = getPaddingTop() + (getHeight() / 2);
        this.maxWaveHeight = convert(10.0f);
        this.minWaveHeight = convert(5.0f);
        this.textY = convert(TEXT_Y);
        this.step = convert(STEP);
        this.elasticityStep = convert(10.0f);
        this.ropeStepX = convert(ROPE_STEP_X);
        this.ropeStepY = convert(ROPE_STEP_Y);
        this.ropeHeadStepY = convert(ROPE_HEAD_STEP_Y);
        this.jumpStep = convert(JUMP_STEP);
        this.downStep = convert(DOWN_STEP);
        this.triStep = convert(TRI_STEP);
        this.hookStepY = convert(HOOK_STEP_Y);
        this.littleStep = convert(LITTLE_STEP);
        this.smallRadius = convert(5.0f);
        this.textSize = convert(TEXT_SIZE);
        this.arcWidth = convert(20.0f);
        this.arrowWidth = convert(10.0f);
        this.triWidth = convert(10.0f);
        this.loadingWidth = convert(10.0f);
        float f2 = this.radius;
        this.lengthX = (f2 * 3.0f) / HOOK_COUNT;
        this.lengthY = (f2 * 3.0f) / HOOK_COUNT;
        this.arrowPath = new Path();
        this.triPath = new Path();
        this.textPath = new Path();
        RectF rectF = new RectF();
        this.oval = rectF;
        rectF.left = this.x - this.radius;
        this.oval.top = this.y - this.radius;
        this.oval.right = this.x + this.radius;
        this.oval.bottom = this.y + this.radius;
        this.length = this.radius / STEP;
        initializePaints();
        initializePoints();
    }

    public void startAnimating() {
        this.isAnimating = true;
        invalidate();
    }

    public void reset() {
        this.isAnimating = false;
        this.isLoading = false;
        this.bezier = false;
        this.isCompleted = false;
        this.isEnd = false;
        this.length = this.radius / STEP;
        this.count = 0;
        this.hookCount = 0;
        this.jumpPoint.x = -1.0f;
        this.progress = 0.0f;
        float f = this.radius;
        this.lengthX = (f * 3.0f) / HOOK_COUNT;
        this.lengthY = (f * 3.0f) / HOOK_COUNT;
        this.a.y = this.y + this.length;
        this.b.y = this.y - this.length;
        this.e.y = this.y + this.length;
        this.c.x = this.x - (this.length / STEP);
        this.c.y = this.y + (this.length / STEP);
        this.d.x = this.x + (this.length / STEP);
        this.d.y = this.y + (this.length / STEP);
        invalidate();
    }

    public void animating() {
        if (this.count < 19) {
            float f = (this.length * 3.0f) / HOOK_COUNT;
            this.length = f;
            this.a.y = this.y + f;
            this.b.y = this.y - this.length;
            int i = this.count;
            if ((i + 1) % 3 == 0 && i < 9) {
                this.e.y += this.step;
                this.c.y += this.step;
                this.d.y += this.step;
            }
            int i2 = this.count;
            if (i2 > 8 && i2 < 12) {
                this.jumpPoint.x = this.x;
                this.jumpPoint.y = this.y - (this.jumpStep * (this.count - 8));
                this.c.x -= this.ropeStepX;
                this.c.y -= this.ropeHeadStepY;
                this.d.x += this.ropeStepX;
                this.d.y -= this.ropeHeadStepY;
                this.e.y -= this.ropeStepY;
            }
            int i3 = this.count;
            if (i3 > 11) {
                this.bezier = true;
                if (i3 == 12) {
                    this.jumpPoint.y -= this.jumpStep * STEP;
                } else {
                    this.jumpPoint.y += this.downStep;
                    if (this.count < 16) {
                        this.e.y = this.y + ((15 - r0) * this.elasticityStep);
                    }
                }
            }
            this.count++;
            postInvalidateDelayed(20L);
            return;
        }
        this.isAnimating = false;
        this.bezier = false;
        if (this.progress != 100.0f) {
            this.isLoading = true;
        } else {
            this.isLoading = false;
            this.isCompleted = true;
        }
    }

    private void loading(Canvas canvas) {
        Point point = this.triPoints.get(0);
        for (int i = 0; i < 17; i++) {
            Point point2 = this.triPoints.get(i);
            float f = i;
            point2.x = (this.x - ((this.radius * 3.0f) / HOOK_COUNT)) + (this.triStep * f);
            point2.y = this.y + calculateTri(f * 20.0f, this.currentTime);
        }
        int i2 = 1;
        while (i2 < 17) {
            Point point3 = this.triPoints.get(i2);
            this.triPath.reset();
            this.triPath.moveTo(point.x, point.y);
            this.triPath.lineTo(point3.x, point3.y);
            canvas.drawCircle(point3.x, point3.y, this.smallRadius, this.smallPaint);
            canvas.drawPath(this.triPath, this.triPaint);
            i2++;
            point = point3;
        }
        this.textPath.moveTo(this.x - this.textSize, this.y + this.textY);
        this.textPath.lineTo(this.x + this.textSize, this.y + this.textY);
        canvas.drawTextOnPath(((int) this.progress) + "%", this.textPath, 0.0f, 0.0f, this.textPaint);
        this.currentTime = (int) (((float) this.currentTime) + 20.0f);
        canvas.drawArc(this.oval, 270.0f, 0.0f - ((this.progress / 100.0f) * 360.0f), false, this.loadingPaint);
        postInvalidateDelayed(20L);
    }

    protected void drawArrow(Canvas canvas) {
        if (this.jumpPoint.x != -1.0f) {
            canvas.drawCircle(this.jumpPoint.x, this.jumpPoint.y, this.smallRadius, this.smallPaint);
        }
        if (this.bezier) {
            this.arrowPath.reset();
            this.arrowPath.moveTo(this.c.x, this.c.y);
            this.arrowPath.quadTo(this.e.x, this.e.y, this.d.x, this.d.y);
            canvas.drawPath(this.arrowPath, this.arrowPaint);
            return;
        }
        if (this.isLoading || this.isCompleted) {
            return;
        }
        if (this.isEnd) {
            canvas.drawCircle(this.x, this.y, this.radius, this.loadingPaint);
            drawArrowOrHook(canvas);
            return;
        }
        this.arrowPath.reset();
        this.arrowPath.moveTo(this.a.x, this.a.y);
        this.arrowPath.lineTo(this.b.x, this.b.y);
        canvas.drawPath(this.arrowPath, this.arrowPaint);
        canvas.drawCircle(this.a.x, this.a.y, this.smallRadius, this.smallPaint);
        canvas.drawCircle(this.b.x, this.b.y, this.smallRadius, this.smallPaint);
        drawArrowOrHook(canvas);
    }

    private void drawArrowOrHook(Canvas canvas) {
        this.arrowPath.reset();
        this.arrowPath.moveTo(this.e.x, this.e.y);
        this.arrowPath.lineTo(this.c.x, this.c.y);
        canvas.drawPath(this.arrowPath, this.arrowPaint);
        this.arrowPath.reset();
        this.arrowPath.moveTo(this.e.x, this.e.y);
        this.arrowPath.lineTo(this.d.x, this.d.y);
        canvas.drawPath(this.arrowPath, this.arrowPaint);
        canvas.drawCircle(this.c.x, this.c.y, this.smallRadius, this.smallPaint);
        canvas.drawCircle(this.d.x, this.d.y, this.smallRadius, this.smallPaint);
        canvas.drawCircle(this.e.x, this.e.y, this.smallRadius, this.smallPaint);
    }

    private void afterCompleted(Canvas canvas) {
        canvas.drawCircle(this.x, this.y, this.radius, this.loadingPaint);
        if (this.hookCount == 3.0f) {
            this.e.y += this.littleStep;
            this.c.x -= this.littleStep;
            this.d.x += this.littleStep;
            this.d.y -= this.littleStep;
            this.isCompleted = false;
            this.isEnd = true;
        } else {
            this.e.x = this.x;
            this.e.y = this.y + (this.hookStepY * (this.hookCount + 1));
            float f = (this.lengthX * 3.0f) / HOOK_COUNT;
            this.lengthX = f;
            this.c.x = this.x - ((f * 3.0f) / HOOK_COUNT);
            this.c.y = this.y;
            this.d.x = (this.x + this.lengthY) - ((this.radius / LITTLE_STEP) * (this.hookCount + 1));
            this.d.y = this.y - (this.hookStepY * (this.hookCount + 1));
            this.hookCount++;
        }
        drawArrowOrHook(canvas);
        postInvalidateDelayed(20L);
    }

    protected void initializePaints() {
        Paint paint = new Paint();
        this.arcPaint = paint;
        paint.setAntiAlias(true);
        this.arcPaint.setStyle(Paint.Style.STROKE);
        this.arcPaint.setStrokeWidth(this.arcWidth);
        this.arcPaint.setColor(BLUE_ONE);
        Paint paint2 = new Paint();
        this.arrowPaint = paint2;
        paint2.setAntiAlias(true);
        this.arrowPaint.setStyle(Paint.Style.STROKE);
        this.arrowPaint.setStrokeWidth(this.arrowWidth);
        Paint paint3 = this.arrowPaint;
        int i = WHILE;
        paint3.setColor(i);
        Paint paint4 = new Paint();
        this.smallPaint = paint4;
        paint4.setAntiAlias(true);
        this.smallPaint.setStyle(Paint.Style.FILL);
        this.smallPaint.setColor(i);
        Paint paint5 = new Paint();
        this.triPaint = paint5;
        paint5.setAntiAlias(true);
        this.triPaint.setStyle(Paint.Style.STROKE);
        this.triPaint.setStrokeWidth(this.triWidth);
        this.triPaint.setColor(i);
        Paint paint6 = new Paint();
        this.loadingPaint = paint6;
        paint6.setAntiAlias(true);
        this.loadingPaint.setStyle(Paint.Style.STROKE);
        this.loadingPaint.setStrokeWidth(this.loadingWidth);
        this.loadingPaint.setColor(i);
        Paint paint7 = new Paint();
        this.textPaint = paint7;
        paint7.setAntiAlias(true);
        this.textPaint.setStyle(Paint.Style.FILL);
        this.textPaint.setStrokeWidth(1.0f);
        this.textPaint.setColor(i);
        this.textPaint.setTextSize(this.textSize);
    }

    protected void initializePoints() {
        this.a = new Point(this.x, this.y + (this.radius / STEP));
        this.b = new Point(this.x, this.y - (this.radius / STEP));
        float f = this.x;
        float f2 = this.radius;
        this.c = new Point(f - (f2 / HOOK_COUNT), this.y + (f2 / HOOK_COUNT));
        float f3 = this.x;
        float f4 = this.radius;
        this.d = new Point(f3 + (f4 / HOOK_COUNT), this.y + (f4 / HOOK_COUNT));
        this.e = new Point(this.x, this.y + (this.radius / STEP));
        this.jumpPoint = new Point();
        for (int i = 0; i < 17; i++) {
            Point point = new Point();
            float f5 = i;
            point.x = (this.x - ((this.radius * 3.0f) / HOOK_COUNT)) + (this.triStep * f5);
            point.y = this.y + calculateTri(f5 * 20.0f, 0.0f);
            this.triPoints.add(point);
        }
    }

    private float calculateTri(float f, float f2) {
        float f3 = this.progress;
        if (f3 < 33.0f) {
            this.waveHeight = 5.0f;
        } else if (f3 < 66.0f) {
            this.waveHeight = this.maxWaveHeight;
        } else {
            this.waveHeight = this.minWaveHeight;
        }
        return (float) (this.waveHeight * Math.sin((f + f2) * 0.039269908169872414d));
    }

    private float convert(float f) {
        return (this.radius * f) / RADIUS;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable(INSTANCE_STATE, super.onSaveInstanceState());
        bundle.putFloat(X_I, this.x);
        bundle.putFloat(Y_I, this.y);
        bundle.putFloat(RADIUS_I, this.radius);
        bundle.putFloat(MAX_WAVE_HEIGHT_I, this.maxWaveHeight);
        bundle.putFloat(MIN_WAVE_HEIGHT_I, this.minWaveHeight);
        bundle.putFloat(TEXT_Y_I, this.textY);
        bundle.putFloat(STEP_I, this.step);
        bundle.putFloat(ELASTICITY_STEP_I, this.elasticityStep);
        bundle.putFloat(ROPE_STEP_X_I, this.ropeStepX);
        bundle.putFloat(ROPE_STEP_Y_I, this.ropeStepY);
        bundle.putFloat(ROPE_HEAD_STEP_Y_I, this.ropeHeadStepY);
        bundle.putFloat(JUMP_STEP_I, this.jumpStep);
        bundle.putFloat(DOWN_STEP_I, this.downStep);
        bundle.putFloat(TRI_STEP_I, this.triStep);
        bundle.putFloat(HOOK_STEP_Y_I, this.hookStepY);
        bundle.putFloat(LITTLE_STEP_I, this.littleStep);
        bundle.putFloat(SMALL_RADIUS_I, this.smallRadius);
        bundle.putFloat(TEXT_SIZE_I, this.textSize);
        bundle.putFloat(ARC_WIDTH_I, this.arcWidth);
        bundle.putFloat(ARROW_WIDTH_I, this.arrowWidth);
        bundle.putFloat(TRI_WIDTH_I, this.triWidth);
        bundle.putFloat(LOADING_WIDTH_I, this.loadingWidth);
        bundle.putBoolean(IS_FIRST_I, this.isFirst);
        bundle.putBoolean(IS_ANIMATING_I, this.isAnimating);
        bundle.putBoolean(BEZIER_I, this.bezier);
        bundle.putBoolean(IS_LOADING_I, this.isLoading);
        bundle.putBoolean(IS_COMPLETED_I, this.isCompleted);
        bundle.putBoolean(IS_END_I, this.isEnd);
        bundle.putInt(COUNT_I, this.count);
        bundle.putFloat(LENGTH_I, this.length);
        bundle.putInt(CURRENT_TIME_I, this.currentTime);
        bundle.putFloat(WAVE_HEIGHT_I, this.waveHeight);
        bundle.putFloat("progress", this.progress);
        bundle.putInt(HOOK_COUNT_I, this.hookCount);
        bundle.putFloat(LENGTH_X_I, this.lengthX);
        bundle.putFloat(LENGTH_Y_I, this.lengthY);
        return bundle;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.x = bundle.getFloat(X_I);
            this.y = bundle.getFloat(Y_I);
            this.radius = bundle.getFloat(RADIUS_I);
            this.maxWaveHeight = bundle.getFloat(MAX_WAVE_HEIGHT_I);
            this.minWaveHeight = bundle.getFloat(MIN_WAVE_HEIGHT_I);
            this.textY = bundle.getFloat(TEXT_Y_I);
            this.step = bundle.getFloat(STEP_I);
            this.elasticityStep = bundle.getFloat(ELASTICITY_STEP_I);
            this.ropeStepX = bundle.getFloat(ROPE_STEP_X_I);
            this.ropeStepY = bundle.getFloat(ROPE_STEP_Y_I);
            this.ropeHeadStepY = bundle.getFloat(ROPE_HEAD_STEP_Y_I);
            this.jumpStep = bundle.getFloat(JUMP_STEP_I);
            this.downStep = bundle.getFloat(DOWN_STEP_I);
            this.triStep = bundle.getFloat(TRI_STEP_I);
            this.hookStepY = bundle.getFloat(HOOK_STEP_Y_I);
            this.littleStep = bundle.getFloat(LITTLE_STEP_I);
            this.smallRadius = bundle.getFloat(SMALL_RADIUS_I);
            this.textSize = bundle.getFloat(TEXT_SIZE_I);
            this.arcWidth = bundle.getFloat(ARC_WIDTH_I);
            this.arrowWidth = bundle.getFloat(ARROW_WIDTH_I);
            this.triWidth = bundle.getFloat(TRI_WIDTH_I);
            this.loadingWidth = bundle.getFloat(LOADING_WIDTH_I);
            this.isFirst = bundle.getBoolean(IS_FIRST_I);
            this.isAnimating = bundle.getBoolean(IS_ANIMATING_I);
            this.bezier = bundle.getBoolean(BEZIER_I);
            this.isLoading = bundle.getBoolean(IS_LOADING_I);
            this.isCompleted = bundle.getBoolean(IS_COMPLETED_I);
            this.isEnd = bundle.getBoolean(IS_END_I);
            this.count = bundle.getInt(COUNT_I);
            this.length = bundle.getFloat(LENGTH_I);
            this.currentTime = bundle.getInt(CURRENT_TIME_I);
            this.waveHeight = bundle.getFloat(WAVE_HEIGHT_I);
            this.progress = bundle.getFloat("progress");
            this.hookCount = bundle.getInt(HOOK_COUNT_I);
            this.lengthX = bundle.getFloat(LENGTH_X_I);
            this.lengthY = bundle.getFloat(LENGTH_Y_I);
        }
        super.onRestoreInstanceState(parcelable);
    }

    static class Point {
        public float x;
        public float y;

        public Point(float f, float f2) {
            this.x = f;
            this.y = f2;
        }

        public Point() {
            this.x = -1.0f;
            this.y = -1.0f;
        }
    }
}
