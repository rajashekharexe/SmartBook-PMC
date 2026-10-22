package com.gani.mygpslocation;

import android.os.StrictMode;

/* loaded from: classes.dex */
public class HoneycombStrictMode implements IStrictMode {
    protected static String TAG = "HoneycombStrictMode";

    @Override // com.gani.mygpslocation.IStrictMode
    public void enableStrictMode() {
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectDiskReads().detectDiskWrites().detectNetwork().penaltyLog().penaltyFlashScreen().build());
    }
}
