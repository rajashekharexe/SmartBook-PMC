package com.conceptglobal.pmc.utils;

import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.util.Log;
import com.conceptglobal.pmc.PMCApplication;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

/* loaded from: classes.dex */
public final class PLog {
    private static final boolean DEBUG = true;
    private static final boolean DEBUG_FLAG = true;
    private static final boolean ERROR = true;
    private static final boolean INFO = true;
    private static final boolean VERB = true;
    private static final boolean WARN = true;

    private PLog() {
    }

    public static void e(String str, Throwable th) {
        try {
            PackageInfo packageInfo = new PMCApplication().getPackageInfo();
            th.printStackTrace();
            String str2 = packageInfo.versionName;
            StringBuilder sb = new StringBuilder();
            Date date = new Date();
            sb.append("*** Exception Report ***");
            sb.append('\n');
            sb.append("Crashed On : ");
            sb.append(date.toString());
            sb.append('\n');
            sb.append('\n');
            sb.append("Device Information :");
            sb.append('\n');
            addDeviceInfo(sb, str, packageInfo);
            sb.append('\n');
            sb.append('\n');
            sb.append("Stack:\n");
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th.printStackTrace(printWriter);
            sb.append(stringWriter.toString());
            printWriter.close();
            sb.append('\n');
            sb.append("*** End of Exc Report **");
            insertErrorLogs(str2, Build.VERSION.RELEASE, Build.MANUFACTURER + " - " + Build.MODEL, sb.toString(), str, null);
        } catch (Exception e) {
            try {
                String str3 = new PMCApplication().getPackageInfo().versionName;
                StringWriter stringWriter2 = new StringWriter();
                th.printStackTrace(new PrintWriter(stringWriter2));
                stringWriter2.toString().replaceAll("[^\\w\\s]", " ");
                e.printStackTrace();
            } catch (Exception unused) {
                e.printStackTrace();
            }
        }
    }

    public static void ecam(String str, Throwable th) {
        try {
            PackageInfo packageInfo = new PMCApplication().getPackageInfo();
            th.printStackTrace();
            String str2 = packageInfo.versionName;
            StringBuilder sb = new StringBuilder();
            Date date = new Date();
            sb.append("*** Exception Report ***");
            sb.append('\n');
            sb.append("Crashed On : ");
            sb.append(date.toString());
            sb.append('\n');
            sb.append('\n');
            sb.append("Device Information :");
            sb.append('\n');
            addDeviceInfo(sb, str, packageInfo);
            sb.append('\n');
            sb.append('\n');
            sb.append("Stack:\n");
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th.printStackTrace(printWriter);
            sb.append(stringWriter.toString());
            printWriter.close();
            sb.append('\n');
            sb.append("*** End of Exc Report **");
            if (GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getItemValueFromConfigurableLookup("cameraLogOptions")) == 2) {
                insertErrorLogs(str2, Build.VERSION.RELEASE, Build.MANUFACTURER + " - " + Build.MODEL, sb.toString(), str, null);
            }
        } catch (Exception e) {
            try {
                String str3 = new PMCApplication().getPackageInfo().versionName;
                StringWriter stringWriter2 = new StringWriter();
                th.printStackTrace(new PrintWriter(stringWriter2));
                stringWriter2.toString().replaceAll("[^\\w\\s]", " ");
                e.printStackTrace();
            } catch (Exception unused) {
                e.printStackTrace();
            }
        }
    }

    public static void e(String str, Throwable th, int i) {
        try {
            String str2 = new PMCApplication().getPackageInfo().versionName;
            StringBuilder sb = new StringBuilder("Exception On : ErrorMsg:\n");
            new Date();
            th.printStackTrace();
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th.printStackTrace(printWriter);
            sb.append(stringWriter.toString());
            printWriter.close();
            sb.append('\n');
            insertErrorLogs(str2, Build.VERSION.RELEASE, Build.MANUFACTURER + " - " + Build.MODEL, sb.toString(), str, null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void e(String str, String str2) {
        try {
            String str3 = new PMCApplication().getPackageInfo().versionName;
            StringBuilder sb = new StringBuilder("Exception On : ErrorMsg:\n");
            new Date();
            sb.append(str2);
            sb.append('\n');
            insertErrorLogs(str3, Build.VERSION.RELEASE, Build.MANUFACTURER + " - " + Build.MODEL, sb.toString(), str, null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void e(String str, String str2, String str3, String str4) {
        try {
            String str5 = new PMCApplication().getPackageInfo().versionName;
            StringBuilder sb = new StringBuilder("Exception On : ErrorMsg:\n");
            new Date();
            sb.append(str2);
            sb.append('\n');
            insertErrorLogs(str5, str3, sb.toString(), str, str4);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void eCam(String str, String str2) {
        try {
            String str3 = new PMCApplication().getPackageInfo().versionName;
            StringBuilder sb = new StringBuilder("Exception On : ErrorMsg:\n");
            new Date();
            sb.append(str2);
            sb.append('\n');
            if (GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getItemValueFromConfigurableLookup("cameraLogOptions")) == 2) {
                insertErrorLogs(str3, Build.VERSION.RELEASE, Build.MANUFACTURER + " - " + Build.MODEL, sb.toString(), str, null);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void location(String str, String str2, String str3, String str4) {
        try {
            String str5 = new PMCApplication().getPackageInfo().versionName;
            new Date();
            insertErrorLogs(str5, str3, str2, str, str4);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void NavigationInfo(String str, String str2, String str3, String str4) {
        try {
            String str5 = new PMCApplication().getPackageInfo().versionName;
            new Date();
            insertErrorLogs(str5, str3, str2, str, str4);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void insertErrorLogs(String str, String str2, String str3, String str4, String str5, String str6) {
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        hashMap.put("exceptionAt", str5);
        hashMap.put("exception", str4);
        hashMap.put("date", UtilDeclarations.getDateTime());
        hashMap.put("userId", "" + ConstantsPMC.getInstance().getDeviceID());
        hashMap.put("serverUpdateStatus", "false");
        arrayList.add(hashMap);
        InsertDataIntoDB.insertData("Log4Net", arrayList);
    }

    public static void insertErrorLogs(String str, String str2, String str3, String str4, String str5) {
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        hashMap.put("exceptionAt", str4);
        hashMap.put("exception", str3);
        hashMap.put("date", UtilDeclarations.getDateTime());
        hashMap.put("userId", "" + ConstantsPMC.getInstance().getDeviceID());
        hashMap.put("logger", str2);
        hashMap.put("message", str5);
        hashMap.put("serverUpdateStatus", "false");
        arrayList.add(hashMap);
        InsertDataIntoDB.insertData("Log4Net", arrayList);
    }

    private static void addDeviceInfo(StringBuilder sb, String str, PackageInfo packageInfo) {
        try {
            sb.append("Locale: ");
            sb.append(Locale.getDefault());
            sb.append('\n');
            try {
                sb.append("Version: ");
                sb.append(packageInfo.versionName);
                sb.append('\n');
                sb.append("Package: ");
                sb.append(packageInfo.packageName);
                sb.append('\n');
            } catch (Exception e) {
                Log.e("CustomExceptionHandler", "Error", e);
                sb.append("Could not get Version information for ");
                sb.append(packageInfo.packageName);
            }
            sb.append("Phone Model: ");
            sb.append(Build.MODEL);
            sb.append('\n');
            sb.append("Android Version: ");
            sb.append(Build.VERSION.RELEASE);
            sb.append('\n');
            sb.append("Board: ");
            sb.append(Build.BOARD);
            sb.append('\n');
            sb.append("Brand: ");
            sb.append(Build.BRAND);
            sb.append('\n');
            sb.append("Device: ");
            sb.append(Build.DEVICE);
            sb.append('\n');
            sb.append("Host: ");
            sb.append(Build.HOST);
            sb.append('\n');
            sb.append("ID: ");
            sb.append(Build.ID);
            sb.append('\n');
            sb.append("Model: ");
            sb.append(Build.MODEL);
            sb.append('\n');
            sb.append("Product: ");
            sb.append(Build.PRODUCT);
            sb.append('\n');
            sb.append("Type: ");
            sb.append(Build.TYPE);
            sb.append('\n');
            StatFs statFs = getStatFs();
            sb.append("Total Internal memory: ");
            sb.append(getTotalInternalMemorySize(statFs));
            sb.append('\n');
            sb.append("Available Internal memory: ");
            sb.append(getAvailableInternalMemorySize(statFs));
            sb.append('\n');
        } catch (Exception unused) {
        }
    }

    private static StatFs getStatFs() {
        return new StatFs(Environment.getDataDirectory().getPath());
    }

    private static long getAvailableInternalMemorySize(StatFs statFs) {
        return statFs.getAvailableBlocks() * statFs.getBlockSize();
    }

    private static long getTotalInternalMemorySize(StatFs statFs) {
        return statFs.getBlockCount() * statFs.getBlockSize();
    }

    public static void v(String str, String str2) {
        Log.v(str, "" + str2);
    }

    public static void i(String str, String str2) {
        Log.i(str, "" + str2);
    }

    public static void w(String str, String str2) {
        Log.w(str, "" + str2);
    }

    public static void d(String str, String str2) {
        Log.d(str, "" + str2);
    }
}
