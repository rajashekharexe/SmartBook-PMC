package com.conceptglobal.pmc.promotions.utils;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import com.icsssd0328.promotions.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class FlowLayout extends ViewGroup {
    private static final int DEFAULT_CHILD_SPACING = 0;
    private static final int DEFAULT_CHILD_SPACING_FOR_LAST_ROW = -65538;
    private static final boolean DEFAULT_FLOW = true;
    private static final int DEFAULT_MAX_ROWS = Integer.MAX_VALUE;
    private static final float DEFAULT_ROW_SPACING = 0.0f;
    private static final boolean DEFAULT_RTL = false;
    private static final String LOG_TAG = "FlowLayout";
    public static final int SPACING_ALIGN = -65537;
    public static final int SPACING_AUTO = -65536;
    private static final int SPACING_UNDEFINED = -65538;
    private float mAdjustedRowSpacing;
    private List<Integer> mChildNumForRow;
    private int mChildSpacing;
    private int mChildSpacingForLastRow;
    private boolean mFlow;
    private List<Integer> mHeightForRow;
    private List<Float> mHorizontalSpacingForRow;
    private int mMaxRows;
    private float mRowSpacing;
    private boolean mRtl;

    public FlowLayout(Context context) {
        this(context, null);
    }

    public FlowLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mFlow = true;
        this.mChildSpacing = 0;
        this.mChildSpacingForLastRow = -65538;
        this.mRowSpacing = 0.0f;
        this.mAdjustedRowSpacing = 0.0f;
        this.mRtl = false;
        this.mMaxRows = Integer.MAX_VALUE;
        this.mHorizontalSpacingForRow = new ArrayList();
        this.mHeightForRow = new ArrayList();
        this.mChildNumForRow = new ArrayList();
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.FlowLayout, 0, 0);
        try {
            this.mFlow = obtainStyledAttributes.getBoolean(2, true);
            try {
                this.mChildSpacing = obtainStyledAttributes.getInt(0, 0);
            } catch (NumberFormatException unused) {
                this.mChildSpacing = obtainStyledAttributes.getDimensionPixelSize(0, (int) dpToPx(0.0f));
            }
            try {
                this.mChildSpacingForLastRow = obtainStyledAttributes.getInt(1, -65538);
            } catch (NumberFormatException unused2) {
                this.mChildSpacingForLastRow = obtainStyledAttributes.getDimensionPixelSize(1, (int) dpToPx(0.0f));
            }
            try {
                this.mRowSpacing = obtainStyledAttributes.getInt(4, 0);
            } catch (NumberFormatException unused3) {
                this.mRowSpacing = obtainStyledAttributes.getDimension(4, dpToPx(0.0f));
            }
            this.mMaxRows = obtainStyledAttributes.getInt(3, Integer.MAX_VALUE);
            this.mRtl = obtainStyledAttributes.getBoolean(5, false);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int min;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        float f;
        View view;
        int i12;
        int i13;
        int i14;
        int i15;
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        this.mHorizontalSpacingForRow.clear();
        this.mChildNumForRow.clear();
        this.mHeightForRow.clear();
        int childCount = getChildCount();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        boolean z = mode != 0 && this.mFlow;
        int i16 = this.mChildSpacing;
        int i17 = (i16 == -65536 && mode == 0) ? 0 : i16;
        float f2 = i17 == -65536 ? 0.0f : i17;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        while (i19 < childCount) {
            View childAt = getChildAt(i19);
            int i24 = i18;
            if (childAt.getVisibility() == 8) {
                i14 = i17;
                i6 = size;
                i7 = size2;
                i8 = mode2;
                i9 = childCount;
                i15 = i24;
                i11 = i19;
                f = f2;
            } else {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    i9 = childCount;
                    i10 = i24;
                    i11 = i19;
                    i7 = size2;
                    f = f2;
                    i8 = mode2;
                    view = childAt;
                    i5 = i17;
                    i6 = size;
                    measureChildWithMargins(childAt, i, 0, i2, i22);
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i12 = marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                    i13 = marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                } else {
                    i5 = i17;
                    i6 = size;
                    i7 = size2;
                    i8 = mode2;
                    i9 = childCount;
                    i10 = i24;
                    i11 = i19;
                    f = f2;
                    view = childAt;
                    measureChild(view, i, i2);
                    i12 = 0;
                    i13 = 0;
                }
                int measuredWidth = view.getMeasuredWidth() + i12;
                int measuredHeight = view.getMeasuredHeight() + i13;
                if (z && i10 + measuredWidth > paddingLeft) {
                    i14 = i5;
                    this.mHorizontalSpacingForRow.add(Float.valueOf(getSpacingForRow(i14, paddingLeft, i10, i21)));
                    this.mChildNumForRow.add(Integer.valueOf(i21));
                    this.mHeightForRow.add(Integer.valueOf(i23));
                    if (this.mHorizontalSpacingForRow.size() <= this.mMaxRows) {
                        i22 += i23;
                    }
                    i20 = Math.max(i20, i10);
                    i15 = ((int) f) + measuredWidth;
                    i23 = measuredHeight;
                    i21 = 1;
                } else {
                    i14 = i5;
                    i21++;
                    i23 = Math.max(i23, measuredHeight);
                    i15 = (int) (i10 + measuredWidth + f);
                }
            }
            i19 = i11 + 1;
            i18 = i15;
            i17 = i14;
            f2 = f;
            mode2 = i8;
            size = i6;
            childCount = i9;
            size2 = i7;
        }
        int i25 = i18;
        int i26 = i17;
        int i27 = size;
        int i28 = size2;
        int i29 = mode2;
        int i30 = i23;
        int i31 = this.mChildSpacingForLastRow;
        if (i31 == -65537) {
            if (this.mHorizontalSpacingForRow.size() >= 1) {
                List<Float> list = this.mHorizontalSpacingForRow;
                list.add(list.get(list.size() - 1));
            } else {
                this.mHorizontalSpacingForRow.add(Float.valueOf(getSpacingForRow(i26, paddingLeft, i25, i21)));
            }
        } else if (i31 != -65538) {
            this.mHorizontalSpacingForRow.add(Float.valueOf(getSpacingForRow(i31, paddingLeft, i25, i21)));
        } else {
            this.mHorizontalSpacingForRow.add(Float.valueOf(getSpacingForRow(i26, paddingLeft, i25, i21)));
        }
        this.mChildNumForRow.add(Integer.valueOf(i21));
        this.mHeightForRow.add(Integer.valueOf(i30));
        if (this.mHorizontalSpacingForRow.size() <= this.mMaxRows) {
            i22 += i30;
        }
        int max = Math.max(i20, i25);
        if (i26 == -65536) {
            min = i27;
            i3 = min;
        } else if (mode == 0) {
            min = max + getPaddingLeft() + getPaddingRight();
            i3 = i27;
        } else {
            i3 = i27;
            min = Math.min(max + getPaddingLeft() + getPaddingRight(), i3);
        }
        int paddingTop = i22 + getPaddingTop() + getPaddingBottom();
        int min2 = Math.min(this.mHorizontalSpacingForRow.size(), this.mMaxRows);
        float f3 = this.mRowSpacing;
        if (f3 == -65536.0f && i29 == 0) {
            f3 = 0.0f;
        }
        if (f3 == -65536.0f) {
            if (min2 > 1) {
                this.mAdjustedRowSpacing = (i28 - paddingTop) / (min2 - 1);
            } else {
                this.mAdjustedRowSpacing = 0.0f;
            }
            paddingTop = i28;
            i4 = paddingTop;
        } else {
            this.mAdjustedRowSpacing = f3;
            if (min2 > 1) {
                if (i29 == 0) {
                    paddingTop = (int) (paddingTop + (f3 * (min2 - 1)));
                } else {
                    int i32 = (int) (paddingTop + (f3 * (min2 - 1)));
                    i4 = i28;
                    paddingTop = Math.min(i32, i4);
                }
            }
            i4 = i28;
        }
        setMeasuredDimension(mode == 1073741824 ? i3 : min, i29 == 1073741824 ? i4 : paddingTop);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        float f;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int width = this.mRtl ? getWidth() - paddingRight : paddingLeft;
        int size = this.mChildNumForRow.size();
        int i11 = 0;
        int i12 = 0;
        while (i11 < size) {
            int intValue = this.mChildNumForRow.get(i11).intValue();
            int intValue2 = this.mHeightForRow.get(i11).intValue();
            float floatValue = this.mHorizontalSpacingForRow.get(i11).floatValue();
            int i13 = 0;
            while (i13 < intValue && i12 < getChildCount()) {
                int i14 = i12 + 1;
                View childAt = getChildAt(i12);
                if (childAt.getVisibility() != 8) {
                    int i15 = i13 + 1;
                    ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        i8 = marginLayoutParams.leftMargin;
                        i6 = marginLayoutParams.rightMargin;
                        i7 = marginLayoutParams.topMargin;
                        i5 = paddingLeft;
                    } else {
                        i5 = paddingLeft;
                        i6 = 0;
                        i7 = 0;
                        i8 = 0;
                    }
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    int i16 = size;
                    if (this.mRtl) {
                        int i17 = width - i6;
                        i9 = intValue;
                        int i18 = i7 + paddingTop;
                        i10 = i15;
                        childAt.layout(i17 - measuredWidth, i18, i17, i18 + measuredHeight);
                        f = width - (((measuredWidth + floatValue) + i8) + i6);
                    } else {
                        i9 = intValue;
                        i10 = i15;
                        int i19 = width + i8;
                        int i20 = i7 + paddingTop;
                        childAt.layout(i19, i20, i19 + measuredWidth, i20 + measuredHeight);
                        f = width + measuredWidth + floatValue + i8 + i6;
                    }
                    width = (int) f;
                    paddingLeft = i5;
                    size = i16;
                    intValue = i9;
                    i13 = i10;
                }
                i12 = i14;
            }
            int i21 = paddingLeft;
            int i22 = size;
            width = this.mRtl ? getWidth() - paddingRight : i21;
            paddingTop = (int) (paddingTop + intValue2 + this.mAdjustedRowSpacing);
            i11++;
            paddingLeft = i21;
            size = i22;
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public boolean isFlow() {
        return this.mFlow;
    }

    public void setFlow(boolean z) {
        this.mFlow = z;
        requestLayout();
    }

    public int getChildSpacing() {
        return this.mChildSpacing;
    }

    public void setChildSpacing(int i) {
        this.mChildSpacing = i;
        requestLayout();
    }

    public int getChildSpacingForLastRow() {
        return this.mChildSpacingForLastRow;
    }

    public void setChildSpacingForLastRow(int i) {
        this.mChildSpacingForLastRow = i;
        requestLayout();
    }

    public float getRowSpacing() {
        return this.mRowSpacing;
    }

    public void setRowSpacing(float f) {
        this.mRowSpacing = f;
        requestLayout();
    }

    public int getMaxRows() {
        return this.mMaxRows;
    }

    public void setMaxRows(int i) {
        this.mMaxRows = i;
        requestLayout();
    }

    private float getSpacingForRow(int i, int i2, int i3, int i4) {
        if (i != -65536) {
            return i;
        }
        if (i4 > 1) {
            return (i2 - i3) / (i4 - 1);
        }
        return 0.0f;
    }

    private float dpToPx(float f) {
        return TypedValue.applyDimension(1, f, getResources().getDisplayMetrics());
    }
}
