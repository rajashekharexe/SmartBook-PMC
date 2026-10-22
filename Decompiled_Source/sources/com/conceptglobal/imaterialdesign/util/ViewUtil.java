package com.conceptglobal.imaterialdesign.util;

import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import com.conceptglobal.imaterialdesign.R;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class ViewUtil {
    public static final long FRAME_DURATION = 16;
    private static final AtomicInteger sNextGeneratedId = new AtomicInteger(1);

    public static int generateViewId() {
        return View.generateViewId();
    }

    public static boolean hasState(int[] iArr, int i) {
        if (iArr == null) {
            return false;
        }
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public static void setBackground(View view, Drawable drawable) {
        view.setBackground(drawable);
    }

    public static void applyStyle(View view, int i) {
        applyStyle(view, (AttributeSet) null, 0, i);
    }

    public static void applyStyle(View view, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = view.getContext().obtainStyledAttributes(attributeSet, R.styleable.View, i, i2);
        int indexCount = obtainStyledAttributes.getIndexCount();
        int i3 = -1;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i4 = Integer.MIN_VALUE;
        boolean z4 = false;
        int i5 = -1;
        int i6 = Integer.MIN_VALUE;
        int i7 = -1;
        int i8 = -1;
        int i9 = -1;
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = obtainStyledAttributes.getIndex(i10);
            if (index == R.styleable.View_android_background) {
                setBackground(view, obtainStyledAttributes.getDrawable(index));
            } else if (index == R.styleable.View_android_backgroundTint) {
                view.setBackgroundTintList(obtainStyledAttributes.getColorStateList(index));
            } else if (index == R.styleable.View_android_backgroundTintMode) {
                int i11 = obtainStyledAttributes.getInt(index, 3);
                if (i11 != 3) {
                    if (i11 != 5) {
                        if (i11 == 9) {
                            view.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
                        } else {
                            switch (i11) {
                                case 14:
                                    view.setBackgroundTintMode(PorterDuff.Mode.MULTIPLY);
                                    break;
                                case 15:
                                    view.setBackgroundTintMode(PorterDuff.Mode.SCREEN);
                                    break;
                                case 16:
                                    view.setBackgroundTintMode(PorterDuff.Mode.ADD);
                                    break;
                            }
                        }
                    } else {
                        view.setBackgroundTintMode(PorterDuff.Mode.SRC_IN);
                    }
                } else {
                    view.setBackgroundTintMode(PorterDuff.Mode.SRC_OVER);
                }
            } else if (index == R.styleable.View_android_elevation) {
                view.setElevation(obtainStyledAttributes.getDimensionPixelOffset(index, 0));
            } else {
                if (index == R.styleable.View_android_padding) {
                    i3 = obtainStyledAttributes.getDimensionPixelSize(index, -1);
                    z = true;
                } else {
                    if (index == R.styleable.View_android_paddingLeft) {
                        i5 = obtainStyledAttributes.getDimensionPixelSize(index, -1);
                        z = true;
                    } else if (index == R.styleable.View_android_paddingTop) {
                        i7 = obtainStyledAttributes.getDimensionPixelSize(index, -1);
                    } else if (index == R.styleable.View_android_paddingRight) {
                        i8 = obtainStyledAttributes.getDimensionPixelSize(index, -1);
                    } else if (index == R.styleable.View_android_paddingBottom) {
                        i9 = obtainStyledAttributes.getDimensionPixelSize(index, -1);
                    } else if (index == R.styleable.View_android_paddingStart) {
                        i4 = obtainStyledAttributes.getDimensionPixelSize(index, Integer.MIN_VALUE);
                        z2 = i4 != Integer.MIN_VALUE;
                    } else if (index == R.styleable.View_android_paddingEnd) {
                        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(index, Integer.MIN_VALUE);
                        z4 = dimensionPixelSize != Integer.MIN_VALUE;
                        i6 = dimensionPixelSize;
                    } else if (index == R.styleable.View_android_fadeScrollbars) {
                        view.setScrollbarFadingEnabled(obtainStyledAttributes.getBoolean(index, true));
                    } else if (index == R.styleable.View_android_fadingEdgeLength) {
                        view.setFadingEdgeLength(obtainStyledAttributes.getDimensionPixelOffset(index, 0));
                    } else if (index == R.styleable.View_android_minHeight) {
                        view.setMinimumHeight(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                    } else if (index == R.styleable.View_android_minWidth) {
                        view.setMinimumWidth(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                    } else if (index == R.styleable.View_android_requiresFadingEdge) {
                        view.setVerticalFadingEdgeEnabled(obtainStyledAttributes.getBoolean(index, true));
                    } else if (index == R.styleable.View_android_scrollbarDefaultDelayBeforeFade) {
                        view.setScrollBarDefaultDelayBeforeFade(obtainStyledAttributes.getInteger(index, 0));
                    } else if (index == R.styleable.View_android_scrollbarFadeDuration) {
                        view.setScrollBarFadeDuration(obtainStyledAttributes.getInteger(index, 0));
                    } else if (index == R.styleable.View_android_scrollbarSize) {
                        view.setScrollBarSize(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                    } else if (index == R.styleable.View_android_scrollbarStyle) {
                        int integer = obtainStyledAttributes.getInteger(index, 0);
                        if (integer == 0) {
                            view.setScrollBarStyle(0);
                        } else if (integer == 16777216) {
                            view.setScrollBarStyle(16777216);
                        } else if (integer == 33554432) {
                            view.setScrollBarStyle(33554432);
                        } else if (integer == 50331648) {
                            view.setScrollBarStyle(50331648);
                        }
                    } else if (index == R.styleable.View_android_soundEffectsEnabled) {
                        view.setSoundEffectsEnabled(obtainStyledAttributes.getBoolean(index, true));
                    } else if (index == R.styleable.View_android_textAlignment) {
                        switch (obtainStyledAttributes.getInteger(index, 0)) {
                            case 0:
                                view.setTextAlignment(0);
                                continue;
                            case 1:
                                view.setTextAlignment(1);
                                break;
                            case 2:
                                view.setTextAlignment(2);
                                break;
                            case 3:
                                view.setTextAlignment(3);
                                break;
                            case 4:
                                view.setTextAlignment(4);
                                break;
                            case 5:
                                view.setTextAlignment(5);
                                break;
                            case 6:
                                view.setTextAlignment(6);
                                break;
                        }
                    } else if (index == R.styleable.View_android_textDirection) {
                        int integer2 = obtainStyledAttributes.getInteger(index, 0);
                        if (integer2 == 0) {
                            view.setTextDirection(0);
                        } else if (integer2 == 1) {
                            view.setTextDirection(1);
                        } else if (integer2 == 2) {
                            view.setTextDirection(2);
                        } else if (integer2 == 3) {
                            view.setTextDirection(3);
                        } else if (integer2 == 4) {
                            view.setTextDirection(4);
                        } else if (integer2 == 5) {
                            view.setTextDirection(5);
                        }
                    } else if (index == R.styleable.View_android_visibility) {
                        int integer3 = obtainStyledAttributes.getInteger(index, 0);
                        if (integer3 == 0) {
                            view.setVisibility(0);
                        } else if (integer3 == 1) {
                            view.setVisibility(4);
                        } else if (integer3 == 2) {
                            view.setVisibility(8);
                        }
                    } else if (index == R.styleable.View_android_layoutDirection) {
                        int integer4 = obtainStyledAttributes.getInteger(index, 0);
                        if (integer4 == 0) {
                            view.setLayoutDirection(0);
                        } else if (integer4 == 1) {
                            view.setLayoutDirection(1);
                        } else if (integer4 == 2) {
                            view.setLayoutDirection(2);
                        } else if (integer4 == 3) {
                            view.setLayoutDirection(3);
                        }
                    } else if (index == R.styleable.View_android_src && (view instanceof ImageView)) {
                        ((ImageView) view).setImageResource(obtainStyledAttributes.getResourceId(index, 0));
                    }
                }
                z3 = true;
            }
        }
        if (i3 >= 0) {
            view.setPadding(i3, i3, i3, i3);
        } else {
            if (z || z3) {
                if (!z) {
                    i5 = view.getPaddingLeft();
                }
                int i12 = i5;
                int paddingTop = i7 >= 0 ? i7 : view.getPaddingTop();
                if (!z3) {
                    i8 = view.getPaddingRight();
                }
                view.setPadding(i12, paddingTop, i8, i9 >= 0 ? i9 : view.getPaddingBottom());
            }
            if (z2 || z4) {
                if (!z2) {
                    i4 = view.getPaddingStart();
                }
                if (i7 < 0) {
                    i7 = view.getPaddingTop();
                }
                int i13 = i7;
                if (!z4) {
                    i6 = view.getPaddingEnd();
                }
                int i14 = i6;
                if (i9 < 0) {
                    i9 = view.getPaddingBottom();
                }
                view.setPaddingRelative(i4, i13, i14, i9);
            }
        }
        obtainStyledAttributes.recycle();
        if (view instanceof TextView) {
            applyStyle((TextView) view, attributeSet, i, i2);
        }
    }

    public static void applyFont(TextView textView, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = textView.getContext().obtainStyledAttributes(attributeSet, new int[]{R.attr.tv_fontFamily}, i, i2);
        String string = obtainStyledAttributes.getString(0);
        if (string != null) {
            textView.setTypeface(TypefaceUtil.load(textView.getContext(), string, 0));
        }
        obtainStyledAttributes.recycle();
    }

    public static void applyTextAppearance(TextView textView, int i) {
        String str;
        float f;
        float f2;
        int i2;
        Typeface typeface;
        if (i == 0) {
            return;
        }
        TypedArray obtainStyledAttributes = textView.getContext().obtainStyledAttributes(i, R.styleable.TextAppearance);
        int i3 = -1;
        float f3 = 0.0f;
        int i4 = 0;
        if (obtainStyledAttributes != null) {
            int indexCount = obtainStyledAttributes.getIndexCount();
            str = null;
            int i5 = -1;
            int i6 = 0;
            f = 0.0f;
            f2 = 0.0f;
            float f4 = 0.0f;
            i2 = -1;
            for (int i7 = 0; i7 < indexCount; i7++) {
                int index = obtainStyledAttributes.getIndex(i7);
                if (index == R.styleable.TextAppearance_android_textColorHighlight) {
                    textView.setHighlightColor(obtainStyledAttributes.getColor(index, 0));
                } else if (index == R.styleable.TextAppearance_android_textColor) {
                    textView.setTextColor(obtainStyledAttributes.getColorStateList(index));
                } else if (index == R.styleable.TextAppearance_android_textColorHint) {
                    textView.setHintTextColor(obtainStyledAttributes.getColorStateList(index));
                } else if (index == R.styleable.TextAppearance_android_textColorLink) {
                    textView.setLinkTextColor(obtainStyledAttributes.getColorStateList(index));
                } else if (index == R.styleable.TextAppearance_android_textSize) {
                    textView.setTextSize(0, obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.TextAppearance_android_typeface) {
                    i2 = obtainStyledAttributes.getInt(index, -1);
                } else if (index == R.styleable.TextAppearance_android_fontFamily) {
                    str = obtainStyledAttributes.getString(index);
                } else if (index == R.styleable.TextAppearance_tv_fontFamily) {
                    str = obtainStyledAttributes.getString(index);
                } else if (index == R.styleable.TextAppearance_android_textStyle) {
                    i5 = obtainStyledAttributes.getInt(index, -1);
                } else if (index == R.styleable.TextAppearance_android_textAllCaps) {
                    textView.setAllCaps(obtainStyledAttributes.getBoolean(index, false));
                } else if (index == R.styleable.TextAppearance_android_shadowColor) {
                    i6 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == R.styleable.TextAppearance_android_shadowDx) {
                    f = obtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == R.styleable.TextAppearance_android_shadowDy) {
                    f2 = obtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == R.styleable.TextAppearance_android_shadowRadius) {
                    f4 = obtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == R.styleable.TextAppearance_android_elegantTextHeight) {
                    textView.setElegantTextHeight(obtainStyledAttributes.getBoolean(index, false));
                } else if (index == R.styleable.TextAppearance_android_letterSpacing) {
                    textView.setLetterSpacing(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R.styleable.TextAppearance_android_fontFeatureSettings) {
                    textView.setFontFeatureSettings(obtainStyledAttributes.getString(index));
                }
            }
            obtainStyledAttributes.recycle();
            i3 = i5;
            i4 = i6;
            f3 = f4;
        } else {
            str = null;
            f = 0.0f;
            f2 = 0.0f;
            i2 = -1;
        }
        if (i4 != 0) {
            textView.setShadowLayer(f3, f, f2, i4);
        }
        if (str != null) {
            typeface = TypefaceUtil.load(textView.getContext(), str, i3);
            if (typeface != null) {
                textView.setTypeface(typeface);
            }
        } else {
            typeface = null;
        }
        if (typeface != null) {
            if (i2 == 1) {
                typeface = Typeface.SANS_SERIF;
            } else if (i2 == 2) {
                typeface = Typeface.SERIF;
            } else if (i2 == 3) {
                typeface = Typeface.MONOSPACE;
            }
            textView.setTypeface(typeface, i3);
        }
    }

    private static void applyStyle(TextView textView, AttributeSet attributeSet, int i, int i2) {
        int i3;
        float f;
        float f2;
        float f3;
        String str;
        int i4;
        int i5;
        char c;
        Typeface typeface;
        String string;
        TypedArray obtainStyledAttributes = textView.getContext().obtainStyledAttributes(attributeSet, R.styleable.TextViewAppearance, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.TextViewAppearance_android_textAppearance, 0);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = resourceId != 0 ? textView.getContext().obtainStyledAttributes(resourceId, R.styleable.TextAppearance) : null;
        int i6 = -1;
        if (obtainStyledAttributes2 != null) {
            int indexCount = obtainStyledAttributes2.getIndexCount();
            int i7 = 0;
            i3 = 0;
            f = 0.0f;
            f2 = 0.0f;
            f3 = 0.0f;
            str = null;
            i4 = -1;
            i5 = -1;
            while (i7 < indexCount) {
                int index = obtainStyledAttributes2.getIndex(i7);
                if (index == R.styleable.TextAppearance_android_textColorHighlight) {
                    textView.setHighlightColor(obtainStyledAttributes2.getColor(index, 0));
                } else if (index == R.styleable.TextAppearance_android_textColor) {
                    textView.setTextColor(obtainStyledAttributes2.getColorStateList(index));
                } else if (index == R.styleable.TextAppearance_android_textColorHint) {
                    textView.setHintTextColor(obtainStyledAttributes2.getColorStateList(index));
                } else if (index == R.styleable.TextAppearance_android_textColorLink) {
                    textView.setLinkTextColor(obtainStyledAttributes2.getColorStateList(index));
                } else if (index == R.styleable.TextAppearance_android_textSize) {
                    textView.setTextSize(0, obtainStyledAttributes2.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.TextAppearance_android_typeface) {
                    i4 = obtainStyledAttributes2.getInt(index, i6);
                } else if (index == R.styleable.TextAppearance_android_fontFamily) {
                    str = obtainStyledAttributes2.getString(index);
                } else if (index == R.styleable.TextAppearance_tv_fontFamily) {
                    str = obtainStyledAttributes2.getString(index);
                } else if (index == R.styleable.TextAppearance_android_textStyle) {
                    i5 = obtainStyledAttributes2.getInt(index, i6);
                } else if (index == R.styleable.TextAppearance_android_textAllCaps) {
                    textView.setAllCaps(obtainStyledAttributes2.getBoolean(index, false));
                } else if (index == R.styleable.TextAppearance_android_shadowColor) {
                    i3 = obtainStyledAttributes2.getInt(index, 0);
                } else if (index == R.styleable.TextAppearance_android_shadowDx) {
                    f = obtainStyledAttributes2.getFloat(index, 0.0f);
                } else if (index == R.styleable.TextAppearance_android_shadowDy) {
                    f2 = obtainStyledAttributes2.getFloat(index, 0.0f);
                } else if (index == R.styleable.TextAppearance_android_shadowRadius) {
                    f3 = obtainStyledAttributes2.getFloat(index, 0.0f);
                } else if (index == R.styleable.TextAppearance_android_elegantTextHeight) {
                    textView.setElegantTextHeight(obtainStyledAttributes2.getBoolean(index, false));
                } else if (index == R.styleable.TextAppearance_android_letterSpacing) {
                    textView.setLetterSpacing(obtainStyledAttributes2.getFloat(index, 0.0f));
                } else if (index == R.styleable.TextAppearance_android_fontFeatureSettings) {
                    textView.setFontFeatureSettings(obtainStyledAttributes2.getString(index));
                }
                i7++;
                i6 = -1;
            }
            obtainStyledAttributes2.recycle();
        } else {
            i3 = 0;
            f = 0.0f;
            f2 = 0.0f;
            f3 = 0.0f;
            str = null;
            i4 = -1;
            i5 = -1;
        }
        TypedArray obtainStyledAttributes3 = textView.getContext().obtainStyledAttributes(attributeSet, R.styleable.TextView, i, i2);
        int indexCount2 = obtainStyledAttributes3.getIndexCount();
        int i8 = i4;
        int i9 = i5;
        int i10 = 0;
        boolean z = false;
        Drawable drawable = null;
        Drawable drawable2 = null;
        Drawable drawable3 = null;
        Drawable drawable4 = null;
        Drawable drawable5 = null;
        Drawable drawable6 = null;
        boolean z2 = false;
        while (i10 < indexCount2) {
            int index2 = obtainStyledAttributes3.getIndex(i10);
            int i11 = indexCount2;
            if (index2 == R.styleable.TextView_android_drawableLeft) {
                drawable2 = obtainStyledAttributes3.getDrawable(index2);
            } else if (index2 == R.styleable.TextView_android_drawableTop) {
                drawable3 = obtainStyledAttributes3.getDrawable(index2);
            } else if (index2 == R.styleable.TextView_android_drawableRight) {
                drawable5 = obtainStyledAttributes3.getDrawable(index2);
            } else if (index2 == R.styleable.TextView_android_drawableBottom) {
                drawable6 = obtainStyledAttributes3.getDrawable(index2);
            } else {
                if (index2 == R.styleable.TextView_android_drawableStart) {
                    drawable = obtainStyledAttributes3.getDrawable(index2);
                } else if (index2 == R.styleable.TextView_android_drawableEnd) {
                    drawable4 = obtainStyledAttributes3.getDrawable(index2);
                } else {
                    if (index2 == R.styleable.TextView_android_drawablePadding) {
                        textView.setCompoundDrawablePadding(obtainStyledAttributes3.getDimensionPixelSize(index2, 0));
                    } else if (index2 == R.styleable.TextView_android_maxLines) {
                        textView.setMaxLines(obtainStyledAttributes3.getInt(index2, -1));
                    } else if (index2 == R.styleable.TextView_android_maxHeight) {
                        textView.setMaxHeight(obtainStyledAttributes3.getDimensionPixelSize(index2, -1));
                    } else if (index2 == R.styleable.TextView_android_lines) {
                        textView.setLines(obtainStyledAttributes3.getInt(index2, -1));
                    } else if (index2 == R.styleable.TextView_android_height) {
                        textView.setHeight(obtainStyledAttributes3.getDimensionPixelSize(index2, -1));
                    } else if (index2 == R.styleable.TextView_android_minLines) {
                        textView.setMinLines(obtainStyledAttributes3.getInt(index2, -1));
                    } else if (index2 == R.styleable.TextView_android_minHeight) {
                        textView.setMinHeight(obtainStyledAttributes3.getDimensionPixelSize(index2, -1));
                    } else if (index2 == R.styleable.TextView_android_maxEms) {
                        textView.setMaxEms(obtainStyledAttributes3.getInt(index2, -1));
                    } else if (index2 == R.styleable.TextView_android_maxWidth) {
                        textView.setMaxWidth(obtainStyledAttributes3.getDimensionPixelSize(index2, -1));
                    } else if (index2 == R.styleable.TextView_android_ems) {
                        textView.setEms(obtainStyledAttributes3.getInt(index2, -1));
                    } else if (index2 == R.styleable.TextView_android_width) {
                        textView.setWidth(obtainStyledAttributes3.getDimensionPixelSize(index2, -1));
                    } else if (index2 == R.styleable.TextView_android_minEms) {
                        textView.setMinEms(obtainStyledAttributes3.getInt(index2, -1));
                    } else if (index2 == R.styleable.TextView_android_minWidth) {
                        textView.setMinWidth(obtainStyledAttributes3.getDimensionPixelSize(index2, -1));
                    } else if (index2 == R.styleable.TextView_android_gravity) {
                        textView.setGravity(obtainStyledAttributes3.getInt(index2, -1));
                    } else if (index2 == R.styleable.TextView_android_scrollHorizontally) {
                        textView.setHorizontallyScrolling(obtainStyledAttributes3.getBoolean(index2, false));
                    } else if (index2 == R.styleable.TextView_android_includeFontPadding) {
                        textView.setIncludeFontPadding(obtainStyledAttributes3.getBoolean(index2, true));
                    } else if (index2 == R.styleable.TextView_android_cursorVisible) {
                        textView.setCursorVisible(obtainStyledAttributes3.getBoolean(index2, true));
                    } else if (index2 == R.styleable.TextView_android_textScaleX) {
                        textView.setTextScaleX(obtainStyledAttributes3.getFloat(index2, 1.0f));
                    } else if (index2 == R.styleable.TextView_android_shadowColor) {
                        i3 = obtainStyledAttributes3.getInt(index2, 0);
                    } else {
                        if (index2 == R.styleable.TextView_android_shadowDx) {
                            f = obtainStyledAttributes3.getFloat(index2, 0.0f);
                        } else if (index2 == R.styleable.TextView_android_shadowDy) {
                            f2 = obtainStyledAttributes3.getFloat(index2, 0.0f);
                        } else if (index2 == R.styleable.TextView_android_shadowRadius) {
                            f3 = obtainStyledAttributes3.getFloat(index2, 0.0f);
                        } else if (index2 == R.styleable.TextView_android_textColorHighlight) {
                            textView.setHighlightColor(obtainStyledAttributes3.getColor(index2, 0));
                        } else if (index2 == R.styleable.TextView_android_textColor) {
                            textView.setTextColor(obtainStyledAttributes3.getColorStateList(index2));
                        } else if (index2 == R.styleable.TextView_android_textColorHint) {
                            textView.setHintTextColor(obtainStyledAttributes3.getColorStateList(index2));
                        } else if (index2 == R.styleable.TextView_android_textColorLink) {
                            textView.setLinkTextColor(obtainStyledAttributes3.getColorStateList(index2));
                        } else if (index2 == R.styleable.TextView_android_textSize) {
                            textView.setTextSize(0, obtainStyledAttributes3.getDimensionPixelSize(index2, 0));
                        } else if (index2 == R.styleable.TextView_android_typeface) {
                            i8 = obtainStyledAttributes3.getInt(index2, -1);
                        } else if (index2 == R.styleable.TextView_android_textStyle) {
                            i9 = obtainStyledAttributes3.getInt(index2, -1);
                        } else {
                            if (index2 == R.styleable.TextView_android_fontFamily) {
                                string = obtainStyledAttributes3.getString(index2);
                            } else if (index2 == R.styleable.TextView_tv_fontFamily) {
                                string = obtainStyledAttributes3.getString(index2);
                            } else if (index2 == R.styleable.TextView_android_textAllCaps) {
                                textView.setAllCaps(obtainStyledAttributes3.getBoolean(index2, false));
                            } else if (index2 == R.styleable.TextView_android_elegantTextHeight) {
                                textView.setElegantTextHeight(obtainStyledAttributes3.getBoolean(index2, false));
                            } else if (index2 == R.styleable.TextView_android_letterSpacing) {
                                textView.setLetterSpacing(obtainStyledAttributes3.getFloat(index2, 0.0f));
                            } else if (index2 == R.styleable.TextView_android_fontFeatureSettings) {
                                textView.setFontFeatureSettings(obtainStyledAttributes3.getString(index2));
                            }
                            str = string;
                        }
                        i10++;
                        indexCount2 = i11;
                    }
                    i10++;
                    indexCount2 = i11;
                }
                z2 = true;
                i10++;
                indexCount2 = i11;
            }
            z = true;
            i10++;
            indexCount2 = i11;
        }
        obtainStyledAttributes3.recycle();
        if (i3 != 0) {
            textView.setShadowLayer(f3, f, f2, i3);
        }
        if (z) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            if (drawable != null) {
                compoundDrawables[0] = drawable;
            } else if (drawable2 != null) {
                compoundDrawables[0] = drawable2;
            }
            if (drawable3 != null) {
                compoundDrawables[1] = drawable3;
            }
            if (drawable4 != null) {
                compoundDrawables[2] = drawable4;
            } else if (drawable5 != null) {
                compoundDrawables[2] = drawable5;
            }
            if (drawable6 != null) {
                compoundDrawables[3] = drawable6;
            }
            c = 0;
            textView.setCompoundDrawablesWithIntrinsicBounds(compoundDrawables[0], compoundDrawables[1], compoundDrawables[2], compoundDrawables[3]);
        } else {
            c = 0;
        }
        if (z2) {
            Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
            if (drawable != null) {
                compoundDrawablesRelative[c] = drawable;
            }
            if (drawable4 != null) {
                compoundDrawablesRelative[2] = drawable4;
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(compoundDrawablesRelative[c], compoundDrawablesRelative[1], compoundDrawablesRelative[2], compoundDrawablesRelative[3]);
        }
        if (str != null) {
            Typeface load = TypefaceUtil.load(textView.getContext(), str, i9);
            if (load != null) {
                textView.setTypeface(load);
            }
            typeface = load;
        } else {
            typeface = null;
        }
        if (typeface != null) {
            if (i8 == 1) {
                typeface = Typeface.SANS_SERIF;
            } else if (i8 == 2) {
                typeface = Typeface.SERIF;
            } else if (i8 == 3) {
                typeface = Typeface.MONOSPACE;
            }
            textView.setTypeface(typeface, i9);
        }
        if (textView instanceof AutoCompleteTextView) {
            applyStyle((AutoCompleteTextView) textView, attributeSet, i, i2);
        }
    }

    private static void applyStyle(AutoCompleteTextView autoCompleteTextView, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = autoCompleteTextView.getContext().obtainStyledAttributes(attributeSet, R.styleable.AutoCompleteTextView, i, i2);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = obtainStyledAttributes.getIndex(i3);
            if (index == R.styleable.AutoCompleteTextView_android_completionHint) {
                autoCompleteTextView.setCompletionHint(obtainStyledAttributes.getString(index));
            } else if (index == R.styleable.AutoCompleteTextView_android_completionThreshold) {
                autoCompleteTextView.setThreshold(obtainStyledAttributes.getInteger(index, 0));
            } else if (index == R.styleable.AutoCompleteTextView_android_dropDownAnchor) {
                autoCompleteTextView.setDropDownAnchor(obtainStyledAttributes.getResourceId(index, 0));
            } else if (index == R.styleable.AutoCompleteTextView_android_dropDownHeight) {
                autoCompleteTextView.setDropDownHeight(obtainStyledAttributes.getLayoutDimension(index, -2));
            } else if (index == R.styleable.AutoCompleteTextView_android_dropDownWidth) {
                autoCompleteTextView.setDropDownWidth(obtainStyledAttributes.getLayoutDimension(index, -2));
            } else if (index == R.styleable.AutoCompleteTextView_android_dropDownHorizontalOffset) {
                autoCompleteTextView.setDropDownHorizontalOffset(obtainStyledAttributes.getDimensionPixelSize(index, 0));
            } else if (index == R.styleable.AutoCompleteTextView_android_dropDownVerticalOffset) {
                autoCompleteTextView.setDropDownVerticalOffset(obtainStyledAttributes.getDimensionPixelSize(index, 0));
            } else if (index == R.styleable.AutoCompleteTextView_android_popupBackground) {
                autoCompleteTextView.setDropDownBackgroundDrawable(obtainStyledAttributes.getDrawable(index));
            }
        }
        obtainStyledAttributes.recycle();
    }
}
