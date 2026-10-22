package com.conceptglobal.pmc.promotions.utils;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public final class SharedPrefManager {
    public static final String MyPREFERENCES = "PromotionsPrefs";

    public static void storeString(Context context, String str, String str2) {
        SharedPreferences.Editor edit = context.getSharedPreferences(MyPREFERENCES, 0).edit();
        edit.putString(str2, str);
        edit.commit();
    }

    public static String getString(Context context, String str) {
        return context.getSharedPreferences(MyPREFERENCES, 0).getString(str, null);
    }
}
