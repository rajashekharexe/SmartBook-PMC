package com.evernote.android.job.util;

/* loaded from: classes.dex */
public final class BatteryStatus {
    public static final BatteryStatus DEFAULT = new BatteryStatus(false, 1.0f);
    private final float mBatteryPercent;
    private final boolean mCharging;

    BatteryStatus(boolean z, float f) {
        this.mCharging = z;
        this.mBatteryPercent = f;
    }

    public boolean isCharging() {
        return this.mCharging;
    }

    public float getBatteryPercent() {
        return this.mBatteryPercent;
    }

    public boolean isBatteryLow() {
        return this.mBatteryPercent < 0.15f && !this.mCharging;
    }
}
