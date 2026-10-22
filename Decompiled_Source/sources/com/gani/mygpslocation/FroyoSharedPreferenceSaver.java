package com.gani.mygpslocation;

import android.app.backup.BackupManager;
import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public class FroyoSharedPreferenceSaver extends LegacySharedPreferenceSaver {
    protected BackupManager backupManager;

    public FroyoSharedPreferenceSaver(Context context) {
        super(context);
        this.backupManager = new BackupManager(context);
    }

    @Override // com.gani.mygpslocation.LegacySharedPreferenceSaver, com.gani.mygpslocation.SharedPreferenceSaver
    public void savePreferences(SharedPreferences.Editor editor, boolean z) {
        editor.commit();
        this.backupManager.dataChanged();
    }
}
