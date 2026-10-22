package com.conceptglobal.pmc.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Environment;
import android.os.Looper;
import android.os.Process;
import android.os.StatFs;
import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class ExceptionHandler implements Thread.UncaughtExceptionHandler {
    private final String LINE_SEPARATOR = IOUtils.LINE_SEPARATOR_UNIX;
    private ComponentName componentName;
    private Context mContext;

    public ExceptionHandler(Context context) {
        this.mContext = context;
    }

    public ExceptionHandler(ComponentName componentName, Context context) {
        this.componentName = componentName;
    }

    private StatFs getStatFs() {
        return new StatFs(Environment.getDataDirectory().getPath());
    }

    private long getAvailableInternalMemorySize(StatFs statFs) {
        return statFs.getAvailableBlocks() * statFs.getBlockSize();
    }

    private long getTotalInternalMemorySize(StatFs statFs) {
        return statFs.getBlockCount() * statFs.getBlockSize();
    }

    private void addDeviceInfo(StringBuilder sb) {
        try {
            sb.append("Locale: ");
            sb.append(Locale.getDefault());
            sb.append('\n');
            try {
                PackageInfo packageInfo = this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 0);
                sb.append("Version: ");
                sb.append(packageInfo.versionName);
                sb.append('\n');
                sb.append("Package: ");
                sb.append(packageInfo.packageName);
                sb.append('\n');
            } catch (Exception e) {
                Log.e("CustomExceptionHandler", "Error", e);
                sb.append("Could not get Version information for ");
                sb.append(this.mContext.getPackageName());
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

    /* JADX WARN: Type inference failed for: r0v0, types: [com.conceptglobal.pmc.utils.ExceptionHandler$1] */
    public void showAlerDialog() {
        new Thread() { // from class: com.conceptglobal.pmc.utils.ExceptionHandler.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Looper.prepare();
                AlertDialog.Builder builder = new AlertDialog.Builder(ExceptionHandler.this.mContext);
                builder.setCancelable(false);
                builder.setPositiveButton("Ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.utils.ExceptionHandler.1.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        PackageManager packageManager = ExceptionHandler.this.mContext.getPackageManager();
                        try {
                            ExceptionHandler.this.mContext.startActivity(packageManager.getLaunchIntentForPackage(ExceptionHandler.this.mContext.getPackageName()));
                        } catch (Exception unused) {
                            try {
                                Intent intent = new Intent("android.intent.action.MAIN");
                                intent.addCategory("android.intent.category.HOME");
                                intent.addFlags(335544320);
                                List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
                                if (queryIntentActivities != null) {
                                    for (ResolveInfo resolveInfo : queryIntentActivities) {
                                        if (resolveInfo.activityInfo.packageName != ExceptionHandler.this.mContext.getPackageName()) {
                                            Intent intent2 = new Intent();
                                            intent2.setComponent(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name));
                                            ExceptionHandler.this.mContext.startActivity(intent2);
                                        }
                                    }
                                }
                            } catch (Exception unused2) {
                                Intent addCategory = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER");
                                addCategory.addFlags(335544320);
                                ExceptionHandler.this.mContext.startActivity(addCategory);
                            }
                        }
                        Process.killProcess(Process.myPid());
                        System.exit(10);
                    }
                });
                builder.setMessage("An error has occured, Please Re-Login");
                if (ExceptionHandler.this.mContext instanceof Activity) {
                    if (!((Activity) ExceptionHandler.this.mContext).isFinishing()) {
                        AlertDialog show = builder.show();
                        if (UtilDeclarations.isTablet(ExceptionHandler.this.mContext)) {
                            UtilDeclarations.makeTabletDialogTextlarge(show);
                        }
                    }
                } else {
                    AlertDialog show2 = builder.show();
                    if (UtilDeclarations.isTablet(ExceptionHandler.this.mContext)) {
                        UtilDeclarations.makeTabletDialogTextlarge(show2);
                    }
                }
                Looper.loop();
            }
        }.start();
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        PackageInfo packageInfo = null;
        try {
            try {
                packageInfo = this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
            String str = packageInfo.versionName;
            packageInfo.packageName.getClass().getName().toString();
            StringBuilder sb = new StringBuilder();
            Date date = new Date();
            sb.append("**** Crash Report ****");
            sb.append('\n');
            sb.append("Crashed On : ");
            sb.append(date.toString());
            sb.append('\n');
            sb.append('\n');
            sb.append("Device Information :");
            sb.append('\n');
            addDeviceInfo(sb);
            sb.append('\n');
            sb.append('\n');
            sb.append("Stack:\n");
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th.printStackTrace(printWriter);
            sb.append(stringWriter.toString());
            printWriter.close();
            sb.append('\n');
            sb.append("**** End of Crash Report ***");
            Log.e("App", stringWriter.toString());
            PLog.e("Application", sb.toString());
            showAlerDialog();
        } catch (Exception e2) {
            String str2 = packageInfo.versionName;
            StringWriter stringWriter2 = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter2));
            packageInfo.packageName.getClass().getName().toString();
            this.mContext.getPackageName().toString();
            String simpleName = this.mContext.getClass().getSimpleName();
            StringBuilder sb2 = new StringBuilder("uncought....");
            sb2.append("************ CAUSE OF ERROR ************\n\n" + stringWriter2.toString().replaceAll("[^\\w\\s]", " "));
            Log.i(simpleName, sb2.toString());
            e2.printStackTrace();
        }
    }

    public void caughtExceptions(Throwable th) {
        PackageInfo packageInfo;
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        try {
            packageInfo = this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            packageInfo = null;
        }
        String str = packageInfo.versionName;
        packageInfo.packageName.getClass().toString();
        this.mContext.toString();
        String simpleName = this.mContext.getClass().getSimpleName();
        StringBuilder sb = new StringBuilder("uncought....");
        sb.append("************ CAUSE OF ERROR ************\n\n" + stringWriter.toString().replaceAll("[^\\w\\s]", " "));
        Log.i(simpleName, sb.toString());
    }

    public void savingIntoSDCard(String str, StringBuilder sb) {
        File file = new File("ma_error.txt");
        if (!file.exists()) {
            file.mkdir();
        }
        try {
            try {
                new FileOutputStream(file + "/ma_error.txt").write(("" + str + "/n" + Build.VERSION.RELEASE + "/n" + Build.MANUFACTURER + " - " + Build.MODEL + "/n" + sb.toString()).getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
        }
    }

    private class AlternateMainLooper extends Thread {
        private AlternateMainLooper() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Thread.currentThread().setName("Alternate Main Looper");
            Looper.prepareMainLooper();
            Process.killProcess(Process.myPid());
            System.exit(10);
            Looper.loop();
        }
    }
}
