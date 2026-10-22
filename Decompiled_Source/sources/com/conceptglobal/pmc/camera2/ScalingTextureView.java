package com.conceptglobal.pmc.camera2;

import android.content.Context;
import android.opengl.Matrix;
import android.util.AttributeSet;
import android.view.ScaleGestureDetector;
import android.view.TextureView;
import android.view.View;

/* loaded from: classes.dex */
public class ScalingTextureView extends TextureView {
    Matrix mMartrix;
    int mRatioHeight;
    int mRatioWidth;
    ScaleGestureDetector mScaleGestureDetector;

    public ScalingTextureView(Context context) {
        super(context);
        this.mRatioWidth = 0;
        this.mRatioHeight = 0;
    }

    public ScalingTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mRatioWidth = 0;
        this.mRatioHeight = 0;
    }

    public ScalingTextureView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mRatioWidth = 0;
        this.mRatioHeight = 0;
    }

    public ScalingTextureView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mRatioWidth = 0;
        this.mRatioHeight = 0;
    }

    public void setAspectRatio(int i, int i2) {
        try {
            if (i < 0 || i2 < 0) {
                throw new IllegalArgumentException("size cannot be negative");
            }
            this.mRatioWidth = i;
            this.mRatioHeight = i2;
            requestLayout();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        try {
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            if (this.mRatioWidth == 0 || this.mRatioHeight == 0) {
                setMeasuredDimension(size, size2);
            }
            setMeasuredDimension(size, size2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void init(Context context) {
        this.mScaleGestureDetector = new ScaleGestureDetector(context, new ScaleGestureDetector.OnScaleGestureListener() { // from class: com.conceptglobal.pmc.camera2.ScalingTextureView.1
            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                return false;
            }

            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
                return false;
            }

            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            }
        });
    }
}
