package androidx.core.os;

import android.content.Context;
import android.os.Build;
import android.os.UserManager;

/* loaded from: classes.dex */
public class UserManagerCompat {
    private UserManagerCompat() {
    }

    public static boolean isUserUnlocked(Context context) {
        Object systemService;
        boolean isUserUnlocked;
        if (Build.VERSION.SDK_INT < 24) {
            return true;
        }
        systemService = context.getSystemService((Class<Object>) UserManager.class);
        isUserUnlocked = ((UserManager) systemService).isUserUnlocked();
        return isUserUnlocked;
    }
}
