package androidx.core.os;

import android.os.Build;
import android.os.Message;

/* loaded from: classes.dex */
public final class MessageCompat {
    private static boolean sTryIsAsynchronous = true;
    private static boolean sTrySetAsynchronous = true;

    public static void setAsynchronous(Message message, boolean async) {
        if (Build.VERSION.SDK_INT >= 22) {
            message.setAsynchronous(async);
        } else if (sTrySetAsynchronous) {
            try {
                message.setAsynchronous(async);
            } catch (NoSuchMethodError unused) {
                sTrySetAsynchronous = false;
            }
        }
    }

    public static boolean isAsynchronous(Message message) {
        boolean isAsynchronous;
        boolean isAsynchronous2;
        if (Build.VERSION.SDK_INT >= 22) {
            isAsynchronous2 = message.isAsynchronous();
            return isAsynchronous2;
        }
        if (sTryIsAsynchronous) {
            try {
                isAsynchronous = message.isAsynchronous();
                return isAsynchronous;
            } catch (NoSuchMethodError unused) {
                sTryIsAsynchronous = false;
            }
        }
        return false;
    }

    private MessageCompat() {
    }
}
