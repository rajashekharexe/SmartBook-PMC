package com.conceptglobal.pmc.utils;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.Button;
import android.widget.RadioGroup;
import com.conceptglobal.pmcdeepakfertilizers.R;

/* loaded from: classes.dex */
public class SegmentedGroup extends RadioGroup {
    private int mCheckedTextColor;
    private int mTintColor;
    private int oneDP;
    private Resources resources;

    public SegmentedGroup(Context context) {
        super(context);
        this.mCheckedTextColor = -1;
        Resources resources = context.getResources();
        this.resources = resources;
        this.mTintColor = resources.getColor(R.color.radio_button_selected_color);
        this.oneDP = (int) TypedValue.applyDimension(1, 1.0f, this.resources.getDisplayMetrics());
    }

    public SegmentedGroup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCheckedTextColor = -1;
        Resources resources = getResources();
        this.resources = resources;
        this.mTintColor = resources.getColor(R.color.radio_button_selected_color);
        this.oneDP = (int) TypedValue.applyDimension(1, 1.0f, this.resources.getDisplayMetrics());
    }

    @Override // android.widget.RadioGroup, android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        updateBackground();
    }

    public void setTintColor(int i) {
        this.mTintColor = i;
        updateBackground();
    }

    public void setTintColor(int i, int i2) {
        this.mTintColor = i;
        this.mCheckedTextColor = i2;
        updateBackground();
    }

    public void updateBackground() {
        int childCount = super.getChildCount();
        if (childCount <= 1) {
            if (childCount == 1) {
                updateBackground(getChildAt(0), R.drawable.radio_checked_default, R.drawable.radio_unchecked_default);
                return;
            }
            return;
        }
        View childAt = getChildAt(0);
        RadioGroup.LayoutParams layoutParams = (RadioGroup.LayoutParams) childAt.getLayoutParams();
        RadioGroup.LayoutParams layoutParams2 = new RadioGroup.LayoutParams(layoutParams.width, layoutParams.height, layoutParams.weight);
        layoutParams2.setMargins(0, 0, -this.oneDP, 0);
        childAt.setLayoutParams(layoutParams2);
        updateBackground(getChildAt(0), R.drawable.radio_checked_left, R.drawable.radio_unchecked_left);
        int i = 1;
        while (true) {
            int i2 = childCount - 1;
            if (i < i2) {
                updateBackground(getChildAt(i), R.drawable.radio_checked_middle, R.drawable.radio_unchecked_middle);
                View childAt2 = getChildAt(i);
                RadioGroup.LayoutParams layoutParams3 = (RadioGroup.LayoutParams) childAt2.getLayoutParams();
                RadioGroup.LayoutParams layoutParams4 = new RadioGroup.LayoutParams(layoutParams3.width, layoutParams3.height, layoutParams3.weight);
                layoutParams4.setMargins(0, 0, -this.oneDP, 0);
                childAt2.setLayoutParams(layoutParams4);
                i++;
            } else {
                updateBackground(getChildAt(i2), R.drawable.radio_checked_right, R.drawable.radio_unchecked_right);
                return;
            }
        }
    }

    private void updateBackground(View view, int i, int i2) {
        ((Button) view).setTextColor(new ColorStateList(new int[][]{new int[]{android.R.attr.state_pressed}, new int[]{-16842919, -16842912}, new int[]{-16842919, android.R.attr.state_checked}}, new int[]{-7829368, this.mTintColor, this.mCheckedTextColor}));
        Drawable mutate = this.resources.getDrawable(i).mutate();
        Drawable mutate2 = this.resources.getDrawable(i2).mutate();
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{-16842912}, mutate2);
        stateListDrawable.addState(new int[]{android.R.attr.state_checked}, mutate);
        view.setBackground(stateListDrawable);
    }
}
