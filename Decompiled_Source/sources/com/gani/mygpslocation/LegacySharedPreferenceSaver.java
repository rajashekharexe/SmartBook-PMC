package com.gani.mygpslocation;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public class LegacySharedPreferenceSaver extends SharedPreferenceSaver {
    public LegacySharedPreferenceSaver(Context context) {
        super(context);
    }

    @Override // com.gani.mygpslocation.SharedPreferenceSaver
    public void savePreferences(SharedPreferences.Editor editor, boolean z) {
        editor.commit();
    }
}
