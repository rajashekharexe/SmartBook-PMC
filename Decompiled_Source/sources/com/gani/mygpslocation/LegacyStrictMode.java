package com.gani.mygpslocation;

import android.os.StrictMode;

/* loaded from: classes.dex */
public class LegacyStrictMode implements IStrictMode {
    @Override // com.gani.mygpslocation.IStrictMode
    public void enableStrictMode() {
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectDiskReads().detectDiskWrites().detectNetwork().penaltyLog().build());
    }
}
