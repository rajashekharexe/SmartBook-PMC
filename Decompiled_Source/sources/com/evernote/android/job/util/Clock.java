package com.evernote.android.job.util;

import android.os.SystemClock;

/* loaded from: classes.dex */
public interface Clock {
    public static final Clock DEFAULT = new Clock() { // from class: com.evernote.android.job.util.Clock.1
        @Override // com.evernote.android.job.util.Clock
        public long currentTimeMillis() {
            return System.currentTimeMillis();
        }

        @Override // com.evernote.android.job.util.Clock
        public long elapsedRealtime() {
            return SystemClock.elapsedRealtime();
        }
    };

    long currentTimeMillis();

    long elapsedRealtime();
}
