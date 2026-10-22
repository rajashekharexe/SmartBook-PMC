package com.gani.mygpslocation;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public abstract class SharedPreferenceSaver {
    protected Context context;

    public void savePreferences(SharedPreferences.Editor editor, boolean z) {
    }

    protected SharedPreferenceSaver(Context context) {
        this.context = context;
    }
}
