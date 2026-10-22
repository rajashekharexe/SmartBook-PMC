package androidx.core.view;

import android.graphics.Insets;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.WindowInsetsAnimationController;
import android.view.WindowInsetsController;
import android.view.animation.Interpolator;

/* compiled from: D8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class ViewCompat$$ExternalSyntheticApiModelOutline2 {
    public static /* bridge */ /* synthetic */ View.OnUnhandledKeyEventListener m(Object obj) {
        return (View.OnUnhandledKeyEventListener) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ WindowInsets.Builder m143m() {
        return new WindowInsets.Builder();
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ WindowInsets.Builder m144m(WindowInsets windowInsets) {
        return new WindowInsets.Builder(windowInsets);
    }

    public static /* synthetic */ WindowInsetsAnimation.Bounds m(Insets insets, Insets insets2) {
        return new WindowInsetsAnimation.Bounds(insets, insets2);
    }

    public static /* synthetic */ WindowInsetsAnimation m(int i, Interpolator interpolator, long j) {
        return new WindowInsetsAnimation(i, interpolator, j);
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ WindowInsetsAnimation m147m(Object obj) {
        return (WindowInsetsAnimation) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ WindowInsetsController.OnControllableInsetsChangedListener m148m(Object obj) {
        return (WindowInsetsController.OnControllableInsetsChangedListener) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Class m151m() {
        return WindowInsetsAnimationController.class;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ void m152m() {
    }
}
