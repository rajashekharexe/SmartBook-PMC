package com.github.amlcurran.showcaseview;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
class ShotStateStore {
    private static final int INVALID_SHOT_ID = -1;
    private static final String PREFS_SHOWCASE_INTERNAL = "showcase_internal";
    private final Context context;
    long shotId = -1;

    public ShotStateStore(Context context) {
        this.context = context;
    }

    boolean hasShot() {
        if (!isSingleShot()) {
            return false;
        }
        SharedPreferences sharedPreferences = this.context.getSharedPreferences(PREFS_SHOWCASE_INTERNAL, 0);
        StringBuilder sb = new StringBuilder("hasShot");
        sb.append(this.shotId);
        return sharedPreferences.getBoolean(sb.toString(), false);
    }

    boolean isSingleShot() {
        return this.shotId != -1;
    }

    void storeShot() {
        if (isSingleShot()) {
            this.context.getSharedPreferences(PREFS_SHOWCASE_INTERNAL, 0).edit().putBoolean("hasShot" + this.shotId, true).apply();
        }
    }

    void setSingleShot(long j) {
        this.shotId = j;
    }
}
