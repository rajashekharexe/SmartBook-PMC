package com.conceptglobal.pmc.promotions.utils;

import android.os.Environment;
import android.os.StatFs;

/* loaded from: classes.dex */
public class DeviceMemory {
    public static long getInternalTotalSpaceInMB() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getAbsolutePath());
        return (statFs.getBlockCount() * statFs.getBlockSize()) / 1048576;
    }

    public static long getInternalFreeSpaceInMB() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getAbsolutePath());
        return (statFs.getAvailableBlocks() * statFs.getBlockSize()) / 1048576;
    }

    public static long getInternalUsedSpaceInMB() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getAbsolutePath());
        return ((statFs.getBlockCount() * statFs.getBlockSize()) / 1048576) - ((statFs.getAvailableBlocks() * statFs.getBlockSize()) / 1048576);
    }

    public static boolean isExternalStorage() {
        if (!Environment.isExternalStorageRemovable()) {
            return false;
        }
        String externalStorageState = Environment.getExternalStorageState();
        return externalStorageState.equals("mounted") || externalStorageState.equals("mounted_ro");
    }
}
