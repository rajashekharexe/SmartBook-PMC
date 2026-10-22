package androidx.core.app;

import android.app.Dialog;
import android.os.Build;
import android.view.View;

/* loaded from: classes.dex */
public class DialogCompat {
    private DialogCompat() {
    }

    public static View requireViewById(Dialog dialog, int id) {
        View requireViewById;
        if (Build.VERSION.SDK_INT >= 28) {
            requireViewById = dialog.requireViewById(id);
            return requireViewById;
        }
        View findViewById = dialog.findViewById(id);
        if (findViewById != null) {
            return findViewById;
        }
        throw new IllegalArgumentException("ID does not reference a View inside this Dialog");
    }
}
