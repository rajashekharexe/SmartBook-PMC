package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CompoundButton;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.CompoundButtonCompat;

/* loaded from: classes.dex */
class AppCompatCompoundButtonHelper {
    private ColorStateList mButtonTintList = null;
    private PorterDuff.Mode mButtonTintMode = null;
    private boolean mHasButtonTint = false;
    private boolean mHasButtonTintMode = false;
    private boolean mSkipNextApply;
    private final CompoundButton mView;

    interface DirectSetButtonDrawableInterface {
        void setButtonDrawable(Drawable drawable);
    }

    int getCompoundPaddingLeft(int i) {
        return i;
    }

    AppCompatCompoundButtonHelper(CompoundButton compoundButton) {
        this.mView = compoundButton;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0050 A[Catch: all -> 0x0078, TryCatch #1 {all -> 0x0078, blocks: (B:3:0x000d, B:5:0x0015, B:8:0x001d, B:9:0x0048, B:11:0x0050, B:12:0x005b, B:14:0x0063, B:21:0x002b, B:23:0x0033, B:25:0x003b), top: B:2:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0063 A[Catch: all -> 0x0078, TRY_LEAVE, TryCatch #1 {all -> 0x0078, blocks: (B:3:0x000d, B:5:0x0015, B:8:0x001d, B:9:0x0048, B:11:0x0050, B:12:0x005b, B:14:0x0063, B:21:0x002b, B:23:0x0033, B:25:0x003b), top: B:2:0x000d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void loadFromAttributes(android.util.AttributeSet r4, int r5) {
        /*
            r3 = this;
            android.widget.CompoundButton r0 = r3.mView
            android.content.Context r0 = r0.getContext()
            int[] r1 = androidx.appcompat.R.styleable.CompoundButton
            r2 = 0
            android.content.res.TypedArray r4 = r0.obtainStyledAttributes(r4, r1, r5, r2)
            int r5 = androidx.appcompat.R.styleable.CompoundButton_buttonCompat     // Catch: java.lang.Throwable -> L78
            boolean r5 = r4.hasValue(r5)     // Catch: java.lang.Throwable -> L78
            if (r5 == 0) goto L2b
            int r5 = androidx.appcompat.R.styleable.CompoundButton_buttonCompat     // Catch: java.lang.Throwable -> L78
            int r5 = r4.getResourceId(r5, r2)     // Catch: java.lang.Throwable -> L78
            if (r5 == 0) goto L2b
            android.widget.CompoundButton r0 = r3.mView     // Catch: android.content.res.Resources.NotFoundException -> L2b java.lang.Throwable -> L78
            android.content.Context r1 = r0.getContext()     // Catch: android.content.res.Resources.NotFoundException -> L2b java.lang.Throwable -> L78
            android.graphics.drawable.Drawable r5 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r1, r5)     // Catch: android.content.res.Resources.NotFoundException -> L2b java.lang.Throwable -> L78
            r0.setButtonDrawable(r5)     // Catch: android.content.res.Resources.NotFoundException -> L2b java.lang.Throwable -> L78
            goto L48
        L2b:
            int r5 = androidx.appcompat.R.styleable.CompoundButton_android_button     // Catch: java.lang.Throwable -> L78
            boolean r5 = r4.hasValue(r5)     // Catch: java.lang.Throwable -> L78
            if (r5 == 0) goto L48
            int r5 = androidx.appcompat.R.styleable.CompoundButton_android_button     // Catch: java.lang.Throwable -> L78
            int r5 = r4.getResourceId(r5, r2)     // Catch: java.lang.Throwable -> L78
            if (r5 == 0) goto L48
            android.widget.CompoundButton r0 = r3.mView     // Catch: java.lang.Throwable -> L78
            android.content.Context r1 = r0.getContext()     // Catch: java.lang.Throwable -> L78
            android.graphics.drawable.Drawable r5 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r1, r5)     // Catch: java.lang.Throwable -> L78
            r0.setButtonDrawable(r5)     // Catch: java.lang.Throwable -> L78
        L48:
            int r5 = androidx.appcompat.R.styleable.CompoundButton_buttonTint     // Catch: java.lang.Throwable -> L78
            boolean r5 = r4.hasValue(r5)     // Catch: java.lang.Throwable -> L78
            if (r5 == 0) goto L5b
            android.widget.CompoundButton r5 = r3.mView     // Catch: java.lang.Throwable -> L78
            int r0 = androidx.appcompat.R.styleable.CompoundButton_buttonTint     // Catch: java.lang.Throwable -> L78
            android.content.res.ColorStateList r0 = r4.getColorStateList(r0)     // Catch: java.lang.Throwable -> L78
            androidx.core.widget.CompoundButtonCompat.setButtonTintList(r5, r0)     // Catch: java.lang.Throwable -> L78
        L5b:
            int r5 = androidx.appcompat.R.styleable.CompoundButton_buttonTintMode     // Catch: java.lang.Throwable -> L78
            boolean r5 = r4.hasValue(r5)     // Catch: java.lang.Throwable -> L78
            if (r5 == 0) goto L74
            android.widget.CompoundButton r5 = r3.mView     // Catch: java.lang.Throwable -> L78
            int r0 = androidx.appcompat.R.styleable.CompoundButton_buttonTintMode     // Catch: java.lang.Throwable -> L78
            r1 = -1
            int r0 = r4.getInt(r0, r1)     // Catch: java.lang.Throwable -> L78
            r1 = 0
            android.graphics.PorterDuff$Mode r0 = androidx.appcompat.widget.DrawableUtils.parseTintMode(r0, r1)     // Catch: java.lang.Throwable -> L78
            androidx.core.widget.CompoundButtonCompat.setButtonTintMode(r5, r0)     // Catch: java.lang.Throwable -> L78
        L74:
            r4.recycle()
            return
        L78:
            r5 = move-exception
            r4.recycle()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatCompoundButtonHelper.loadFromAttributes(android.util.AttributeSet, int):void");
    }

    void setSupportButtonTintList(ColorStateList colorStateList) {
        this.mButtonTintList = colorStateList;
        this.mHasButtonTint = true;
        applyButtonTint();
    }

    ColorStateList getSupportButtonTintList() {
        return this.mButtonTintList;
    }

    void setSupportButtonTintMode(PorterDuff.Mode mode) {
        this.mButtonTintMode = mode;
        this.mHasButtonTintMode = true;
        applyButtonTint();
    }

    PorterDuff.Mode getSupportButtonTintMode() {
        return this.mButtonTintMode;
    }

    void onSetButtonDrawable() {
        if (this.mSkipNextApply) {
            this.mSkipNextApply = false;
        } else {
            this.mSkipNextApply = true;
            applyButtonTint();
        }
    }

    void applyButtonTint() {
        Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(this.mView);
        if (buttonDrawable != null) {
            if (this.mHasButtonTint || this.mHasButtonTintMode) {
                Drawable mutate = DrawableCompat.wrap(buttonDrawable).mutate();
                if (this.mHasButtonTint) {
                    DrawableCompat.setTintList(mutate, this.mButtonTintList);
                }
                if (this.mHasButtonTintMode) {
                    DrawableCompat.setTintMode(mutate, this.mButtonTintMode);
                }
                if (mutate.isStateful()) {
                    mutate.setState(this.mView.getDrawableState());
                }
                this.mView.setButtonDrawable(mutate);
            }
        }
    }
}
