package androidx.core.view;

import android.graphics.Rect;
import android.os.Build;
import android.view.DisplayCutout;
import androidx.core.graphics.Insets;
import androidx.core.os.BuildCompat;
import androidx.core.os.TraceCompat$$ExternalSyntheticApiModelOutline0;
import androidx.core.util.ObjectsCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class DisplayCutoutCompat {
    private final Object mDisplayCutout;

    public DisplayCutoutCompat(Rect safeInsets, List<Rect> boundingRects) {
        this(Build.VERSION.SDK_INT >= 28 ? TraceCompat$$ExternalSyntheticApiModelOutline0.m(safeInsets, boundingRects) : null);
    }

    public DisplayCutoutCompat(Insets safeInsets, Rect boundLeft, Rect boundTop, Rect boundRight, Rect boundBottom, Insets waterfallInsets) {
        this(constructDisplayCutout(safeInsets, boundLeft, boundTop, boundRight, boundBottom, waterfallInsets));
    }

    private static DisplayCutout constructDisplayCutout(Insets safeInsets, Rect boundLeft, Rect boundTop, Rect boundRight, Rect boundBottom, Insets waterfallInsets) {
        if (BuildCompat.isAtLeastR()) {
            TraceCompat$$ExternalSyntheticApiModelOutline0.m124m();
            return TraceCompat$$ExternalSyntheticApiModelOutline0.m(safeInsets.toPlatformInsets(), boundLeft, boundTop, boundRight, boundBottom, waterfallInsets.toPlatformInsets());
        }
        if (Build.VERSION.SDK_INT >= 29) {
            TraceCompat$$ExternalSyntheticApiModelOutline0.m124m();
            return TraceCompat$$ExternalSyntheticApiModelOutline0.m(safeInsets.toPlatformInsets(), boundLeft, boundTop, boundRight, boundBottom);
        }
        if (Build.VERSION.SDK_INT < 28) {
            return null;
        }
        Rect rect = new Rect(safeInsets.left, safeInsets.top, safeInsets.right, safeInsets.bottom);
        ArrayList arrayList = new ArrayList();
        if (boundLeft != null) {
            arrayList.add(boundLeft);
        }
        if (boundTop != null) {
            arrayList.add(boundTop);
        }
        if (boundRight != null) {
            arrayList.add(boundRight);
        }
        if (boundBottom != null) {
            arrayList.add(boundBottom);
        }
        return TraceCompat$$ExternalSyntheticApiModelOutline0.m(rect, arrayList);
    }

    private DisplayCutoutCompat(Object displayCutout) {
        this.mDisplayCutout = displayCutout;
    }

    public int getSafeInsetTop() {
        int safeInsetTop;
        if (Build.VERSION.SDK_INT < 28) {
            return 0;
        }
        safeInsetTop = TraceCompat$$ExternalSyntheticApiModelOutline0.m114m(this.mDisplayCutout).getSafeInsetTop();
        return safeInsetTop;
    }

    public int getSafeInsetBottom() {
        int safeInsetBottom;
        if (Build.VERSION.SDK_INT < 28) {
            return 0;
        }
        safeInsetBottom = TraceCompat$$ExternalSyntheticApiModelOutline0.m114m(this.mDisplayCutout).getSafeInsetBottom();
        return safeInsetBottom;
    }

    public int getSafeInsetLeft() {
        int safeInsetLeft;
        if (Build.VERSION.SDK_INT < 28) {
            return 0;
        }
        safeInsetLeft = TraceCompat$$ExternalSyntheticApiModelOutline0.m114m(this.mDisplayCutout).getSafeInsetLeft();
        return safeInsetLeft;
    }

    public int getSafeInsetRight() {
        int safeInsetRight;
        if (Build.VERSION.SDK_INT < 28) {
            return 0;
        }
        safeInsetRight = TraceCompat$$ExternalSyntheticApiModelOutline0.m114m(this.mDisplayCutout).getSafeInsetRight();
        return safeInsetRight;
    }

    public List<Rect> getBoundingRects() {
        List<Rect> boundingRects;
        if (Build.VERSION.SDK_INT >= 28) {
            boundingRects = TraceCompat$$ExternalSyntheticApiModelOutline0.m114m(this.mDisplayCutout).getBoundingRects();
            return boundingRects;
        }
        return Collections.emptyList();
    }

    public Insets getWaterfallInsets() {
        android.graphics.Insets waterfallInsets;
        if (BuildCompat.isAtLeastR()) {
            waterfallInsets = TraceCompat$$ExternalSyntheticApiModelOutline0.m114m(this.mDisplayCutout).getWaterfallInsets();
            return Insets.toCompatInsets(waterfallInsets);
        }
        return Insets.NONE;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        return ObjectsCompat.equals(this.mDisplayCutout, ((DisplayCutoutCompat) o).mDisplayCutout);
    }

    public int hashCode() {
        Object obj = this.mDisplayCutout;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public String toString() {
        return "DisplayCutoutCompat{" + this.mDisplayCutout + "}";
    }

    static DisplayCutoutCompat wrap(Object displayCutout) {
        if (displayCutout == null) {
            return null;
        }
        return new DisplayCutoutCompat(displayCutout);
    }

    DisplayCutout unwrap() {
        return TraceCompat$$ExternalSyntheticApiModelOutline0.m114m(this.mDisplayCutout);
    }
}
