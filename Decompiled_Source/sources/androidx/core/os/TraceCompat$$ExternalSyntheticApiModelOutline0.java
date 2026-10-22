package androidx.core.os;

import android.graphics.Insets;
import android.graphics.Rect;
import android.os.LocaleList;
import android.text.PrecomputedText;
import android.text.TextPaint;
import android.view.DisplayCutout;
import android.view.DragAndDropPermissions;
import android.view.PointerIcon;
import java.util.List;
import java.util.Locale;

/* compiled from: D8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class TraceCompat$$ExternalSyntheticApiModelOutline0 {
    public static /* synthetic */ LocaleList m(Locale[] localeArr) {
        return new LocaleList(localeArr);
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ PrecomputedText.Params.Builder m111m(TextPaint textPaint) {
        return new PrecomputedText.Params.Builder(textPaint);
    }

    public static /* bridge */ /* synthetic */ PrecomputedText m(Object obj) {
        return (PrecomputedText) obj;
    }

    public static /* synthetic */ DisplayCutout m(Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4) {
        return new DisplayCutout(insets, rect, rect2, rect3, rect4);
    }

    public static /* synthetic */ DisplayCutout m(Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4, Insets insets2) {
        return new DisplayCutout(insets, rect, rect2, rect3, rect4, insets2);
    }

    public static /* synthetic */ DisplayCutout m(Rect rect, List list) {
        return new DisplayCutout(rect, list);
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ DisplayCutout m114m(Object obj) {
        return (DisplayCutout) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ DragAndDropPermissions m115m(Object obj) {
        return (DragAndDropPermissions) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ PointerIcon m116m(Object obj) {
        return (PointerIcon) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ void m124m() {
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ boolean m131m(Object obj) {
        return obj instanceof PrecomputedText;
    }
}
