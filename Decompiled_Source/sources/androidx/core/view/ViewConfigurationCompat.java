package androidx.core.view;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.TypedValue;
import android.view.ViewConfiguration;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class ViewConfigurationCompat {
    private static final String TAG = "ViewConfigCompat";
    private static Method sGetScaledScrollFactorMethod;

    static {
        if (Build.VERSION.SDK_INT == 25) {
            try {
                sGetScaledScrollFactorMethod = ViewConfiguration.class.getDeclaredMethod("getScaledScrollFactor", null);
            } catch (Exception unused) {
                Log.i(TAG, "Could not find method getScaledScrollFactor() on ViewConfiguration");
            }
        }
    }

    @Deprecated
    public static int getScaledPagingTouchSlop(ViewConfiguration config) {
        return config.getScaledPagingTouchSlop();
    }

    @Deprecated
    public static boolean hasPermanentMenuKey(ViewConfiguration config) {
        return config.hasPermanentMenuKey();
    }

    public static float getScaledHorizontalScrollFactor(ViewConfiguration config, Context context) {
        float scaledHorizontalScrollFactor;
        if (Build.VERSION.SDK_INT >= 26) {
            scaledHorizontalScrollFactor = config.getScaledHorizontalScrollFactor();
            return scaledHorizontalScrollFactor;
        }
        return getLegacyScrollFactor(config, context);
    }

    public static float getScaledVerticalScrollFactor(ViewConfiguration config, Context context) {
        float scaledVerticalScrollFactor;
        if (Build.VERSION.SDK_INT >= 26) {
            scaledVerticalScrollFactor = config.getScaledVerticalScrollFactor();
            return scaledVerticalScrollFactor;
        }
        return getLegacyScrollFactor(config, context);
    }

    private static float getLegacyScrollFactor(ViewConfiguration config, Context context) {
        Method method;
        if (Build.VERSION.SDK_INT >= 25 && (method = sGetScaledScrollFactorMethod) != null) {
            try {
                return ((Integer) method.invoke(config, null)).intValue();
            } catch (Exception unused) {
                Log.i(TAG, "Could not find method getScaledScrollFactor() on ViewConfiguration");
            }
        }
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
            return typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return 0.0f;
    }

    public static int getScaledHoverSlop(ViewConfiguration config) {
        int scaledHoverSlop;
        if (Build.VERSION.SDK_INT >= 28) {
            scaledHoverSlop = config.getScaledHoverSlop();
            return scaledHoverSlop;
        }
        return config.getScaledTouchSlop() / 2;
    }

    public static boolean shouldShowMenuShortcutsWhenKeyboardPresent(ViewConfiguration config, Context context) {
        boolean shouldShowMenuShortcutsWhenKeyboardPresent;
        if (Build.VERSION.SDK_INT >= 28) {
            shouldShowMenuShortcutsWhenKeyboardPresent = config.shouldShowMenuShortcutsWhenKeyboardPresent();
            return shouldShowMenuShortcutsWhenKeyboardPresent;
        }
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_showMenuShortcutsWhenKeyboardPresent", "bool", AbstractSpiCall.ANDROID_CLIENT_TYPE);
        return identifier != 0 && resources.getBoolean(identifier);
    }

    private ViewConfigurationCompat() {
    }
}
