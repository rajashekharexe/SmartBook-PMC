package com.gani.mygpslocation;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public class GingerbreadSharedPreferenceSaver extends FroyoSharedPreferenceSaver {
    public GingerbreadSharedPreferenceSaver(Context context) {
        super(context);
    }

    @Override // com.gani.mygpslocation.FroyoSharedPreferenceSaver, com.gani.mygpslocation.LegacySharedPreferenceSaver, com.gani.mygpslocation.SharedPreferenceSaver
    public void savePreferences(SharedPreferences.Editor editor, boolean z) {
        editor.apply();
        this.backupManager.dataChanged();
    }
}
