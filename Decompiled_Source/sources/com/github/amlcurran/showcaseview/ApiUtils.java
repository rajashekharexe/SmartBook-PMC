package com.github.amlcurran.showcaseview;

import android.os.Build;

/* loaded from: classes.dex */
class ApiUtils {
    ApiUtils() {
    }

    public boolean isCompatWith(int i) {
        return Build.VERSION.SDK_INT >= i;
    }

    public boolean isCompatWithHoneycomb() {
        return isCompatWith(11);
    }
}
