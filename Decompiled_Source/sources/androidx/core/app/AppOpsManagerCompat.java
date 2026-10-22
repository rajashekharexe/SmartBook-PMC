package androidx.core.app;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Build;

/* loaded from: classes.dex */
public final class AppOpsManagerCompat {
    public static final int MODE_ALLOWED = 0;
    public static final int MODE_DEFAULT = 3;
    public static final int MODE_ERRORED = 2;
    public static final int MODE_IGNORED = 1;

    private AppOpsManagerCompat() {
    }

    public static String permissionToOp(String permission) {
        String permissionToOp;
        if (Build.VERSION.SDK_INT < 23) {
            return null;
        }
        permissionToOp = AppOpsManager.permissionToOp(permission);
        return permissionToOp;
    }

    public static int noteOp(Context context, String op, int uid, String packageName) {
        return ((AppOpsManager) context.getSystemService("appops")).noteOp(op, uid, packageName);
    }

    public static int noteOpNoThrow(Context context, String op, int uid, String packageName) {
        return ((AppOpsManager) context.getSystemService("appops")).noteOpNoThrow(op, uid, packageName);
    }

    public static int noteProxyOp(Context context, String op, String proxiedPackageName) {
        Object systemService;
        int noteProxyOp;
        if (Build.VERSION.SDK_INT < 23) {
            return 1;
        }
        systemService = context.getSystemService((Class<Object>) AppOpsManager.class);
        noteProxyOp = ((AppOpsManager) systemService).noteProxyOp(op, proxiedPackageName);
        return noteProxyOp;
    }

    public static int noteProxyOpNoThrow(Context context, String op, String proxiedPackageName) {
        Object systemService;
        int noteProxyOpNoThrow;
        if (Build.VERSION.SDK_INT < 23) {
            return 1;
        }
        systemService = context.getSystemService((Class<Object>) AppOpsManager.class);
        noteProxyOpNoThrow = ((AppOpsManager) systemService).noteProxyOpNoThrow(op, proxiedPackageName);
        return noteProxyOpNoThrow;
    }
}
