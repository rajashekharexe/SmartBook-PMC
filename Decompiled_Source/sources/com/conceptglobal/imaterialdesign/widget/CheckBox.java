package com.conceptglobal.imaterialdesign.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.conceptglobal.imaterialdesign.drawable.CheckBoxDrawable;

/* loaded from: classes.dex */
public class CheckBox extends CompoundButton {
    public CheckBox(Context context) {
        super(context);
    }

    public CheckBox(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CheckBox(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public CheckBox(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // com.conceptglobal.imaterialdesign.widget.CompoundButton
    protected void applyStyle(Context context, AttributeSet attributeSet, int i, int i2) {
        super.applyStyle(context, attributeSet, i, i2);
        CheckBoxDrawable build = new CheckBoxDrawable.Builder(context, attributeSet, i, i2).build();
        build.setInEditMode(isInEditMode());
        build.setAnimEnable(false);
        setButtonDrawable(build);
        build.setAnimEnable(true);
    }

    public void setCheckedImmediately(boolean z) {
        if (getButtonDrawable() instanceof CheckBoxDrawable) {
            CheckBoxDrawable checkBoxDrawable = (CheckBoxDrawable) getButtonDrawable();
            checkBoxDrawable.setAnimEnable(false);
            setChecked(z);
            checkBoxDrawable.setAnimEnable(true);
            return;
        }
        setChecked(z);
    }
}
