package com.conceptglobal.pmc.fotracker.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.conceptglobal.pmc.fotracker.ConstantDeclarations;

/* loaded from: classes.dex */
public final class SharedPrefManager {
    public static void isString() {
    }

    public static void storeFOName(Context context, String str) {
        SharedPreferences.Editor edit = context.getSharedPreferences(ConstantDeclarations.getInstance().getKEYFONAME(), 0).edit();
        edit.putString(ConstantDeclarations.getInstance().getKEYFONAME(), str);
        edit.commit();
    }

    public static String getFOName(Context context) {
        return context.getSharedPreferences(ConstantDeclarations.getInstance().getKEYFONAME(), 0).getString(ConstantDeclarations.getInstance().getKEYFONAME(), null);
    }

    public static Long getAppPatchTime(Context context) {
        return Long.valueOf(context.getSharedPreferences(ConstantDeclarations.getInstance().getKEYLASTUPDATEDTIME(), 0).getLong(ConstantDeclarations.getInstance().getKEYLASTUPDATEDTIME(), 0L));
    }

    public static void setApplicationPatchTime(Context context) {
        long currentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor edit = context.getSharedPreferences(ConstantDeclarations.getInstance().getKEYLASTUPDATEDTIME(), 0).edit();
        edit.putLong(ConstantDeclarations.getInstance().getKEYLASTUPDATEDTIME(), currentTimeMillis);
        edit.commit();
    }

    public static Long getPMCSyncTime(Context context) {
        return Long.valueOf(context.getSharedPreferences(ConstantDeclarations.getInstance().getKEYLASTRETAILERSUPDATEDTIME(), 0).getLong(ConstantDeclarations.getInstance().getKEYLASTRETAILERSUPDATEDTIME(), 0L));
    }

    public static void setPMCSyncTime(Context context) {
        long currentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor edit = context.getSharedPreferences(ConstantDeclarations.getInstance().getKEYLASTRETAILERSUPDATEDTIME(), 0).edit();
        edit.putLong(ConstantDeclarations.getInstance().getKEYLASTRETAILERSUPDATEDTIME(), currentTimeMillis);
        edit.commit();
    }

    public static int getPMCLanguage(Context context) {
        return context.getSharedPreferences("pmcLanguage", 0).getInt("pmcLanguage", 1);
    }

    public static void setPMCLanguage(Context context, int i) {
        SharedPreferences.Editor edit = context.getSharedPreferences("pmcLanguage", 0).edit();
        edit.putInt("pmcLanguage", i);
        edit.commit();
    }
}
