package androidx.core.content.pm;

import android.content.pm.PermissionInfo;
import android.os.Build;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class PermissionInfoCompat {

    @Retention(RetentionPolicy.SOURCE)
    public @interface Protection {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ProtectionFlags {
    }

    private PermissionInfoCompat() {
    }

    public static int getProtection(PermissionInfo permissionInfo) {
        int protection;
        if (Build.VERSION.SDK_INT >= 28) {
            protection = permissionInfo.getProtection();
            return protection;
        }
        return permissionInfo.protectionLevel & 15;
    }

    public static int getProtectionFlags(PermissionInfo permissionInfo) {
        int protectionFlags;
        if (Build.VERSION.SDK_INT >= 28) {
            protectionFlags = permissionInfo.getProtectionFlags();
            return protectionFlags;
        }
        return permissionInfo.protectionLevel & (-16);
    }
}
