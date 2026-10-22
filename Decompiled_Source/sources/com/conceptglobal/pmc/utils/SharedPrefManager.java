package com.conceptglobal.pmc.utils;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public final class SharedPrefManager {
    public static final String MyPREF = "DbMigration";
    public static final String MyPREFERENCES = "deepakPreferances";

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

    public static String getTodoType(Context context) {
        return context.getSharedPreferences("TodoType", 0).getString("TodoType", "Todo");
    }

    public static void storeString(Context context, String str, String str2) {
        SharedPreferences.Editor edit = context.getSharedPreferences(MyPREFERENCES, 0).edit();
        edit.putString(str2, str);
        edit.commit();
    }

    public static String getString(Context context, String str) {
        return context.getSharedPreferences(MyPREFERENCES, 0).getString(str, null);
    }

    public static void setTodoType(Context context, String str) {
        SharedPreferences.Editor edit = context.getSharedPreferences("TodoType", 0).edit();
        edit.putString("TodoType", str);
        edit.commit();
    }

    public static void putString(Context context, String str, String str2) {
        SharedPreferences.Editor edit = context.getSharedPreferences(ConstantDeclarations.getInstance().getKEYFONAME(), 0).edit();
        edit.putString(str, str2);
        edit.commit();
    }

    public static String getString(Context context, String str, String str2) {
        return context.getSharedPreferences(ConstantDeclarations.getInstance().getKEYFONAME(), 0).getString(str, str2);
    }

    public static String getMode(Context context) {
        return context.getSharedPreferences(ConstantDeclarations.getInstance().getKeyMode(), 0).getString(ConstantDeclarations.getInstance().getKeyMode(), "");
    }

    public static void setMode(Context context, String str) {
        System.currentTimeMillis();
        SharedPreferences.Editor edit = context.getSharedPreferences(ConstantDeclarations.getInstance().getKeyMode(), 0).edit();
        edit.putString(ConstantDeclarations.getInstance().getKeyMode(), str);
        edit.commit();
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

    public static void setBoolean(Context context, boolean z, String str) {
        SharedPreferences.Editor edit = context.getSharedPreferences(MyPREFERENCES, 0).edit();
        edit.putBoolean(str, z);
        edit.commit();
    }

    public static boolean getBoolean(Context context, String str) {
        return context.getSharedPreferences(MyPREFERENCES, 0).getBoolean(str, false);
    }

    public static void setStringValue(Context context, String str, String str2) {
        SharedPreferences.Editor edit = context.getSharedPreferences(MyPREFERENCES, 0).edit();
        edit.putString(str, str2);
        edit.commit();
    }

    public static String getStringValue(Context context, String str) {
        return context.getSharedPreferences(MyPREFERENCES, 0).getString(str, "");
    }

    public static void setPMCCameraType(Context context, boolean z) {
        SharedPreferences.Editor edit = context.getSharedPreferences("customcamera", 0).edit();
        edit.putBoolean("customcamera", z);
        edit.commit();
    }

    public static boolean getPMCCameraType(Context context) {
        return context.getSharedPreferences("customcamera", 0).getBoolean("customcamera", false);
    }

    public static void storeIntPref(Context context, int i, String str) {
        SharedPreferences.Editor edit = context.getSharedPreferences(MyPREF, 0).edit();
        edit.putInt(str, i);
        edit.commit();
    }

    public static int getIntPref(Context context, String str) {
        return context.getSharedPreferences(MyPREF, 0).getInt(str, 0);
    }
}
