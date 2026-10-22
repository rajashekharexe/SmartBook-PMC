package com.conceptglobal.pmc.utils;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.location.Address;
import android.location.Geocoder;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.conceptglobal.loation.Messages;
import com.conceptglobal.pmc.LoginActivity;
import com.conceptglobal.pmc.PMCApplication;
import com.conceptglobal.pmc.asynctask.AutoAppPatchAsync;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.evernote.android.job.JobStorage;
import com.squareup.picasso.Picasso;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import org.android10.gintonic.aspect.TraceAspect;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class UtilDeclarations {
    private static ProgressDialog progressDialog = null;
    private static String tag = "UtilDeclarations";

    /* JADX INFO: Access modifiers changed from: private */
    public static void updatePatchStatusTable(String str, String str2, String str3) {
    }

    public static String ListToString(List<String> list) {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(",");
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    public Animation layoutGoneAnimation(final LinearLayout linearLayout) {
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, -linearLayout.getWidth(), 0.0f, 0.0f);
        translateAnimation.setFillEnabled(true);
        translateAnimation.setDuration(1000L);
        translateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.conceptglobal.pmc.utils.UtilDeclarations.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                linearLayout.setVisibility(8);
            }
        });
        return translateAnimation;
    }

    public static void displayAlert(Context context, String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.utils.UtilDeclarations.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (isTablet(context)) {
            makeTabletDialogTextlarge(show);
        }
    }

    public static void displayAlertFinish(final Context context, String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.utils.UtilDeclarations.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                try {
                    ((Activity) context).finish();
                } catch (Exception e) {
                    PLog.e(UtilDeclarations.tag, e);
                }
            }
        });
        AlertDialog show = builder.show();
        if (isTablet(context)) {
            makeTabletDialogTextlarge(show);
        }
    }

    public static void showProgressDialog(Context context) {
        ProgressDialog progressDialog2 = new ProgressDialog(context);
        progressDialog = progressDialog2;
        progressDialog2.setProgressStyle(0);
        progressDialog.setMessage(Messages.MSG_PLEASE_WAIT);
        progressDialog.setCancelable(false);
        progressDialog.setCanceledOnTouchOutside(false);
        ProgressDialog progressDialog3 = progressDialog;
        if (progressDialog3 == null || progressDialog3.isShowing()) {
            return;
        }
        progressDialog.show();
    }

    public static void showProgressDialogWithText(Context context, String str) {
        ProgressDialog progressDialog2 = new ProgressDialog(context);
        progressDialog = progressDialog2;
        progressDialog2.setProgressStyle(0);
        progressDialog.setMessage(str + "");
        progressDialog.setCancelable(false);
        progressDialog.setCanceledOnTouchOutside(false);
        ProgressDialog progressDialog3 = progressDialog;
        if (progressDialog3 == null || progressDialog3.isShowing()) {
            return;
        }
        progressDialog.show();
    }

    public static void changeMessageProgressDialogWithText(Context context, String str) {
        progressDialog.setMessage(str + "");
    }

    public static void dismissProgressDialog() {
        ProgressDialog progressDialog2 = progressDialog;
        if (progressDialog2 != null) {
            if (progressDialog2.isShowing()) {
                progressDialog.dismiss();
            }
            progressDialog = null;
        }
    }

    public static void changeLoggerStatus() {
        TraceAspect traceAspect = new TraceAspect();
        try {
            traceAspect.setLogStatus("Enabled", ConstantsPMC.getInstance().getDeviceID());
        } catch (Exception unused) {
            traceAspect.setLogStatus("Enabled", ConstantsPMC.getInstance().getDeviceID());
        }
    }

    public static boolean isOnline(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public static String Captilize(String str) {
        String[] split = str.split(" ");
        StringBuilder sb = new StringBuilder();
        if (split[0].length() > 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Character.toUpperCase(split[0].charAt(0)));
            String str2 = split[0];
            sb2.append(str2.subSequence(1, str2.length()).toString().toLowerCase());
            sb.append(sb2.toString());
            for (int i = 1; i < split.length; i++) {
                sb.append(" ");
                StringBuilder sb3 = new StringBuilder();
                sb3.append(Character.toUpperCase(split[i].charAt(0)));
                String str3 = split[i];
                sb3.append(str3.subSequence(1, str3.length()).toString().toLowerCase());
                sb.append(sb3.toString());
            }
        }
        return sb.toString();
    }

    public static String getDateTime() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.sss", Locale.ENGLISH).format(Calendar.getInstance().getTime());
    }

    public static String getDateAudianceFarmer() {
        return new SimpleDateFormat("ddMMMyyhhmmaa", Locale.ENGLISH).format(Calendar.getInstance().getTime());
    }

    public static String getDateTimeWithOutMills() {
        return new SimpleDateFormat("dd-MMM-yyyy HH:mm:ss", Locale.ENGLISH).format(Calendar.getInstance().getTime());
    }

    public static String getImageFiledate() {
        return new SimpleDateFormat("yyMMddHHmmss", Locale.ENGLISH).format(Calendar.getInstance().getTime());
    }

    public static String getDateTime20mins() {
        Calendar calendar = Calendar.getInstance();
        calendar.add(12, -20);
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.sss", Locale.ENGLISH).format(Long.valueOf(calendar.getTimeInMillis()));
    }

    public static String getDate() {
        return new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH).format(Calendar.getInstance().getTime());
    }

    public static String getLongToDate(long j) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.sss", Locale.ENGLISH);
            Calendar.getInstance().setTimeInMillis(j);
            return simpleDateFormat.format(new Date(j));
        } catch (Exception unused) {
            return "";
        }
    }

    public static String getDateInDDMMYYYY() {
        return new SimpleDateFormat("dd-MM-yyyy", Locale.ENGLISH).format(Calendar.getInstance().getTime());
    }

    public static String getDateInYYYYMMDD() {
        return new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH).format(Calendar.getInstance().getTime());
    }

    public static void loadDiskThumbnail(Context context, ImageView imageView, File file) {
        Picasso.with(context).load("file://" + file).skipMemoryCache().config(Bitmap.Config.RGB_565).fit().centerCrop().into(imageView);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0031 A[LOOP:0: B:8:0x002b->B:10:0x0031, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<java.util.Date> getDates(java.lang.String r3, java.lang.String r4) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.text.SimpleDateFormat r1 = new java.text.SimpleDateFormat
            java.lang.String r2 = "dd-MM-yyyy"
            r1.<init>(r2)
            r2 = 0
            java.util.Date r3 = r1.parse(r3)     // Catch: java.lang.Exception -> L18
            java.util.Date r2 = r1.parse(r4)     // Catch: java.lang.Exception -> L16
            goto L1d
        L16:
            r4 = move-exception
            goto L1a
        L18:
            r4 = move-exception
            r3 = r2
        L1a:
            r4.printStackTrace()
        L1d:
            java.util.Calendar r4 = java.util.Calendar.getInstance()
            r4.setTime(r3)
            java.util.Calendar r3 = java.util.Calendar.getInstance()
            r3.setTime(r2)
        L2b:
            boolean r1 = r4.after(r3)
            if (r1 != 0) goto L3e
            java.util.Date r1 = r4.getTime()
            r0.add(r1)
            r1 = 5
            r2 = 1
            r4.add(r1, r2)
            goto L2b
        L3e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.utils.UtilDeclarations.getDates(java.lang.String, java.lang.String):java.util.List");
    }

    public static boolean isOutOfBounds(MotionEvent motionEvent, Activity activity) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int scaledWindowTouchSlop = ViewConfiguration.get(activity).getScaledWindowTouchSlop();
        View decorView = activity.getWindow().getDecorView();
        int i = -scaledWindowTouchSlop;
        return x < i || y < i || x > decorView.getWidth() + scaledWindowTouchSlop || y > decorView.getHeight() + scaledWindowTouchSlop;
    }

    public static String getApplicationVersion(Context context) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            packageInfo = null;
        }
        return packageInfo.versionName;
    }

    public static void showDialogForNoInternet(Context context) {
        Dialog dialog = new Dialog(context);
        dialog.requestWindowFeature(1);
        dialog.setContentView(R.layout.alert_crop_selection);
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialog.setCancelable(true);
        dialog.setCanceledOnTouchOutside(true);
        dialog.show();
        dialog.getWindow().setGravity(17);
    }

    public static String getDeviceIMEI(Context context) {
        String str = "";
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (Build.VERSION.SDK_INT < 29 && telephonyManager.getDeviceId() != null && !telephonyManager.getDeviceId().equalsIgnoreCase("null")) {
                str = telephonyManager.getDeviceId();
            }
            if (TextUtils.isEmpty(str) && !checkIMEIFileExists()) {
                str = generateIMEI(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getEmployeeID()), context);
                if (!TextUtils.isEmpty(GetDataFromDB.getInstance().getIMEIData())) {
                    str = GetDataFromDB.getInstance().getIMEIData();
                }
                saveIMEIDetailsInFile(ConstantDeclarations.imeiFilePath, str, true);
            } else if (!TextUtils.isEmpty(str) && !checkIMEIFileExists()) {
                saveIMEIDetailsInFile(ConstantDeclarations.imeiFilePath, str, true);
            } else if (checkIMEIFileExists()) {
                str = FileZipping.getIMEIFromFile();
                if (TextUtils.isEmpty(GetDataFromDB.getInstance().getIMEIData())) {
                    saveIMEIInDB(str);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

    public static String getDeviceIMEIMultiple(Context context) {
        int phoneCount;
        String deviceId;
        String str;
        String deviceId2;
        String str2 = "";
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (Build.VERSION.SDK_INT >= 29) {
                TextUtils.isEmpty("");
                if (!checkIMEIFileExists()) {
                    str2 = generateIMEI(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getEmployeeID()), context);
                    if (!TextUtils.isEmpty(GetDataFromDB.getInstance().getIMEIData())) {
                        str2 = GetDataFromDB.getInstance().getIMEIData();
                    }
                    saveIMEIDetailsInFile(ConstantDeclarations.imeiFilePath, str2, true);
                } else {
                    TextUtils.isEmpty("");
                    if (checkIMEIFileExists()) {
                        str2 = FileZipping.getIMEIFromFile();
                        if (TextUtils.isEmpty(GetDataFromDB.getInstance().getIMEIData())) {
                            saveIMEIInDB(str2);
                        }
                    }
                }
            } else if (Build.VERSION.SDK_INT >= 23) {
                String str3 = "";
                int i = 0;
                while (true) {
                    try {
                        phoneCount = telephonyManager.getPhoneCount();
                        if (i >= phoneCount) {
                            break;
                        }
                        deviceId = telephonyManager.getDeviceId(i);
                        if (deviceId != null) {
                            deviceId2 = telephonyManager.getDeviceId(i);
                            if (!deviceId2.equalsIgnoreCase("null")) {
                                str = telephonyManager.getDeviceId(i);
                                str3 = str3 + str + ",";
                                i++;
                            }
                        }
                        str = "";
                        str3 = str3 + str + ",";
                        i++;
                    } catch (Exception e) {
                        e = e;
                        str2 = str3;
                        e.printStackTrace();
                        return str2;
                    }
                }
                str2 = str3.substring(0, str3.length() - 1);
                if ((TextUtils.isEmpty(str2) || str2.length() < 2) && !checkIMEIFileExists()) {
                    str2 = generateIMEI(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getEmployeeID()), context);
                    if (!TextUtils.isEmpty(GetDataFromDB.getInstance().getIMEIData())) {
                        str2 = GetDataFromDB.getInstance().getIMEIData();
                    }
                    saveIMEIDetailsInFile(ConstantDeclarations.imeiFilePath, str2, true);
                } else if (!TextUtils.isEmpty(str2) && str2.length() > 2 && !checkIMEIFileExists()) {
                    saveIMEIDetailsInFile(ConstantDeclarations.imeiFilePath, str2, true);
                } else if (checkIMEIFileExists()) {
                    str2 = FileZipping.getIMEIFromFile();
                    if (TextUtils.isEmpty(GetDataFromDB.getInstance().getIMEIData())) {
                        saveIMEIInDB(str2);
                    }
                }
            } else {
                str2 = telephonyManager.getDeviceId();
                if (!checkIMEIFileExists()) {
                    saveIMEIDetailsInFile(ConstantDeclarations.imeiFilePath, str2, true);
                }
            }
        } catch (Exception e2) {
            e = e2;
        }
        return str2;
    }

    /* JADX WARN: Incorrect condition in loop: B:5:0x0013 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getDeviceIMEI_NEW(android.content.Context r2) {
        /*
            java.lang.String r0 = "phone"
            java.lang.Object r2 = r2.getSystemService(r0)
            android.telephony.TelephonyManager r2 = (android.telephony.TelephonyManager) r2
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 23
            if (r0 < r1) goto L18
            r0 = 0
        Lf:
            int r1 = com.conceptglobal.pmc.LoginActivity$$ExternalSyntheticApiModelOutline0.m(r2)
            if (r0 >= r1) goto L18
            int r0 = r0 + 1
            goto Lf
        L18:
            java.lang.String r2 = r2.getDeviceId()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.utils.UtilDeclarations.getDeviceIMEI_NEW(android.content.Context):java.lang.String");
    }

    /* JADX WARN: Incorrect condition in loop: B:13:0x0022 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getDeviceIMEIMultiple_NEW(android.content.Context r6) {
        /*
            java.lang.String r0 = ""
            java.lang.String r1 = "phone"
            java.lang.Object r6 = r6.getSystemService(r1)
            android.telephony.TelephonyManager r6 = (android.telephony.TelephonyManager) r6
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L11
            r2 = 29
            if (r1 < r2) goto L15
            return r0
        L11:
            r1 = move-exception
            r1.printStackTrace()
        L15:
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L5e
            r2 = 23
            if (r1 < r2) goto L62
            r1 = 0
            r3 = r0
            r2 = 0
        L1e:
            int r4 = com.conceptglobal.pmc.LoginActivity$$ExternalSyntheticApiModelOutline0.m(r6)     // Catch: java.lang.Exception -> L5e
            if (r2 >= r4) goto L53
            java.lang.String r4 = com.conceptglobal.pmc.LoginActivity$$ExternalSyntheticApiModelOutline0.m(r6, r2)     // Catch: java.lang.Exception -> L5e
            if (r4 == 0) goto L3b
            java.lang.String r4 = com.conceptglobal.pmc.LoginActivity$$ExternalSyntheticApiModelOutline0.m(r6, r2)     // Catch: java.lang.Exception -> L5e
            java.lang.String r5 = "null"
            boolean r4 = r4.equalsIgnoreCase(r5)     // Catch: java.lang.Exception -> L5e
            if (r4 != 0) goto L3b
            java.lang.String r4 = com.conceptglobal.pmc.LoginActivity$$ExternalSyntheticApiModelOutline0.m(r6, r2)     // Catch: java.lang.Exception -> L5e
            goto L3c
        L3b:
            r4 = r0
        L3c:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L5e
            r5.<init>()     // Catch: java.lang.Exception -> L5e
            r5.append(r3)     // Catch: java.lang.Exception -> L5e
            r5.append(r4)     // Catch: java.lang.Exception -> L5e
            java.lang.String r3 = ","
            r5.append(r3)     // Catch: java.lang.Exception -> L5e
            java.lang.String r3 = r5.toString()     // Catch: java.lang.Exception -> L5e
            int r2 = r2 + 1
            goto L1e
        L53:
            int r0 = r3.length()     // Catch: java.lang.Exception -> L5e
            int r0 = r0 + (-1)
            java.lang.String r6 = r3.substring(r1, r0)     // Catch: java.lang.Exception -> L5e
            return r6
        L5e:
            r0 = move-exception
            r0.printStackTrace()
        L62:
            java.lang.String r6 = r6.getDeviceId()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.utils.UtilDeclarations.getDeviceIMEIMultiple_NEW(android.content.Context):java.lang.String");
    }

    public static void hideInputKeyboard(Context context) {
        ((InputMethodManager) context.getSystemService("input_method")).hideSoftInputFromWindow(((Activity) context).getWindow().getDecorView().getWindowToken(), 2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ab, code lost:
    
        if (r8 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00ad, code lost:
    
        r8.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b8, code lost:
    
        return r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b5, code lost:
    
        if (r8 == null) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String ConvertToXMLFormat(android.database.Cursor r8, java.lang.String r9) {
        /*
            java.lang.String r0 = "<"
            java.lang.String r1 = ">"
            java.lang.StringBuffer r2 = new java.lang.StringBuffer
            java.lang.String r3 = "<XML>"
            r2.<init>(r3)
            int r3 = r8.getCount()     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            if (r3 <= 0) goto La2
        L11:
            boolean r3 = r8.moveToNext()     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            if (r3 == 0) goto La2
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            r3.<init>()     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            r3.append(r0)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            r3.append(r9)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            r3.append(r1)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            r2.append(r3)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            r3 = 0
        L2d:
            int r4 = r8.getColumnCount()     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            java.lang.String r5 = "</"
            if (r3 >= r4) goto L8b
            boolean r4 = r8.isNull(r3)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            if (r4 != 0) goto L88
            java.lang.String r4 = r8.getString(r3)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            java.lang.String r6 = "NA"
            boolean r4 = r4.equalsIgnoreCase(r6)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            if (r4 != 0) goto L88
            java.lang.String r4 = r8.getString(r3)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            java.lang.String r6 = ""
            boolean r4 = r4.equalsIgnoreCase(r6)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            if (r4 != 0) goto L88
            java.lang.String r4 = r8.getString(r3)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            java.lang.String r6 = "&"
            java.lang.String r7 = "&amp;"
            java.lang.String r4 = r4.replaceAll(r6, r7)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            r6.<init>()     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            r6.append(r0)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            java.lang.String r7 = r8.getColumnName(r3)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            r6.append(r7)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            r6.append(r1)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            r6.append(r4)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            r6.append(r5)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            java.lang.String r4 = r8.getColumnName(r3)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            r6.append(r4)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            r6.append(r1)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            java.lang.String r4 = r6.toString()     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            r2.append(r4)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
        L88:
            int r3 = r3 + 1
            goto L2d
        L8b:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            r3.<init>()     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            r3.append(r5)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            r3.append(r9)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            r3.append(r1)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            r2.append(r3)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            goto L11
        La2:
            java.lang.String r9 = "</XML>"
            r2.append(r9)     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            java.lang.String r9 = r2.toString()     // Catch: java.lang.Throwable -> Lb1 java.lang.Exception -> Lb3
            if (r8 == 0) goto Lb8
        Lad:
            r8.close()
            goto Lb8
        Lb1:
            r9 = move-exception
            goto Lb9
        Lb3:
            java.lang.String r9 = "False"
            if (r8 == 0) goto Lb8
            goto Lad
        Lb8:
            return r9
        Lb9:
            if (r8 == 0) goto Lbe
            r8.close()
        Lbe:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.utils.UtilDeclarations.ConvertToXMLFormat(android.database.Cursor, java.lang.String):java.lang.String");
    }

    public static void checkForApplicationPatch(Context context, boolean z) {
        try {
            String applicationVersion = getApplicationVersion(context);
            if (applicationVersion == null || applicationVersion.length() <= 0) {
                return;
            }
            new AutoAppPatchAsync(context, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodAppPatch() + "/" + applicationVersion + "/" + ConstantsPMC.getInstance().getDeviceID(), Boolean.valueOf(z)).execute(new Void[0]);
        } catch (Exception e) {
            PLog.e(tag, e);
        }
    }

    public static int getCountForSync() {
        try {
            return GetDataFromDB.getInstance().getcount(Queries.getInstance().getCountofPMCFarmerCropping) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getCountFarmerMaster) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getCountofDealerMaster) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getCountofDealerCompanies) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getCountofDealerCrops) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getCountofActivityAssignments) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getCountofAssignmentVisit) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getPictureCount) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getVideosCount) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getFarmerAttributes) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getDealerAttributes) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getPMCAttendanceCountQry()) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getPMCTSTAssingmentActivityDetailsCountQry()) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getPMCFBFAssingmentActivityDetailsCountQry()) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getPMCSurveyAssingmentActivityDetailsCountQry()) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getPMCFBFResolveActivityDetailsCountQry()) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getApplyOnLeave()) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getResignationDetailsCount) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getExpensesCount);
        } catch (Exception unused) {
            return 0;
        }
    }

    public static int getCountForFOTrackerSync() {
        try {
            return GetDataFromDB.getInstance().getcount(Queries.getInstance().getFoTrackerHeaderCount) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getFoTrackerDetailsCount) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getUsageDetailsCount) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getLog4TraceCount);
        } catch (Exception unused) {
            return 0;
        }
    }

    public static String getDeviceName() {
        return Build.MODEL;
    }

    public static void copyDirectory(File file, File file2) throws IOException {
        if (file.isDirectory()) {
            if (!file2.exists() && !file2.mkdirs()) {
                throw new IOException("Cannot create dir " + file2.getAbsolutePath());
            }
            String[] list = file.list();
            for (int i = 0; i < list.length; i++) {
                copyDirectory(new File(file, list[i]), new File(file2, list[i]));
            }
            return;
        }
        File parentFile = file2.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException("Cannot create dir " + parentFile.getAbsolutePath());
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = fileInputStream.read(bArr);
            if (read > 0) {
                fileOutputStream.write(bArr, 0, read);
            } else {
                fileInputStream.close();
                fileOutputStream.close();
                return;
            }
        }
    }

    public static String getDeviceNameandModel() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (str2.startsWith(str)) {
            return capitalize(str2).replaceAll("[^a-zA-Z0-9]", "").replaceAll("\\s+", "");
        }
        return (capitalize(str) + str2).replaceAll("[^a-zA-Z0-9]", "").replaceAll("\\s+", "");
    }

    private static String capitalize(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        char charAt = str.charAt(0);
        if (Character.isUpperCase(charAt)) {
            return str;
        }
        return Character.toUpperCase(charAt) + str.substring(1);
    }

    public static void deleteCache(Context context) {
        try {
            File cacheDir = context.getCacheDir();
            if (cacheDir == null || !cacheDir.isDirectory()) {
                return;
            }
            deleteDir(cacheDir);
        } catch (Exception unused) {
        }
    }

    public static boolean deleteDir(File file) {
        if (file != null && file.isDirectory()) {
            for (String str : file.list()) {
                if (!deleteDir(new File(file, str))) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    public static class DecimalDigitsInputFilter implements InputFilter {
        Pattern mPattern;

        public DecimalDigitsInputFilter(int i, int i2) {
            StringBuilder sb = new StringBuilder("[0-9]{0,");
            sb.append(i);
            sb.append("}+((\\.[0-9]{0,");
            sb.append(i2 - 1);
            sb.append("})?)||(\\.)?");
            this.mPattern = Pattern.compile(sb.toString());
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            if (this.mPattern.matcher(spanned).matches()) {
                return null;
            }
            return "";
        }
    }

    public static class NumericDigitsInputFilter implements InputFilter {
        Pattern mPattern;

        public NumericDigitsInputFilter(int i) {
            StringBuilder sb = new StringBuilder("[0-9]{0,");
            sb.append(i - 1);
            sb.append("}");
            this.mPattern = Pattern.compile(sb.toString());
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            if (this.mPattern.matcher(spanned).matches()) {
                return null;
            }
            return "";
        }
    }

    public static class CustomTextWatcher implements TextWatcher {
        private String beforetext;
        private EditText editText;

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public CustomTextWatcher(EditText editText) {
            this.editText = editText;
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            this.beforetext = charSequence.toString();
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (editable.toString().equalsIgnoreCase("") || editable.toString().equalsIgnoreCase(".") || Float.parseFloat(editable.toString()) < 100.0f) {
                return;
            }
            this.editText.setText(this.beforetext);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00b2 A[Catch: Exception -> 0x00d2, TRY_ENTER, TryCatch #2 {Exception -> 0x00d2, blocks: (B:51:0x00b2, B:53:0x00b8, B:56:0x00cd, B:75:0x0140, B:59:0x00d6, B:62:0x00ed, B:64:0x0102, B:66:0x0108, B:68:0x0128), top: B:49:0x00b0, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00d6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean checkForLatestPatch(android.content.Context r11, int r12) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.utils.UtilDeclarations.checkForLatestPatch(android.content.Context, int):boolean");
    }

    private static int hoursDifference(Date date, Date date2) {
        try {
            return ((int) (date.getTime() - date2.getTime())) / 3600000;
        } catch (Exception unused) {
            return 0;
        }
    }

    private static void showDialog(final Context context) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setCancelable(false);
        builder.setMessage(context.getString(R.string.latest_app_avalabel_msg));
        builder.setPositiveButton(context.getString(R.string.later), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.utils.UtilDeclarations.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                UtilDeclarations.updatePatchStatusTable("1", "MasterSync", "SyncCompleted");
                UtilDeclarations.updatePatchStatusTable("2", "AppPatch", "NoPatchAvailable");
                UtilDeclarations.updatePatchStatusTable("3", "DbPatch", "DbPatchCompleted");
            }
        });
        builder.setNegativeButton(context.getString(R.string.relogin), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.utils.UtilDeclarations.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                Intent intent = new Intent();
                intent.setAction(ConstantsPMC.ACTION_FINISH);
                intent.putExtra(ConstantsPMC.ACTION_MSG, "finish");
                context.sendBroadcast(intent);
                context.startActivity(new Intent(context, (Class<?>) LoginActivity.class));
            }
        });
        AlertDialog show = builder.show();
        if (isTablet(context)) {
            makeTabletDialogTextlarge(show);
        }
    }

    public static String diffDays(String str, String str2) {
        Date date;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str2);
        Calendar calendar = Calendar.getInstance();
        Date date2 = null;
        try {
            date = simpleDateFormat.parse(str);
            try {
                date2 = simpleDateFormat.parse(simpleDateFormat.format(calendar.getTime()));
            } catch (ParseException e) {
                e = e;
                e.printStackTrace();
                return String.valueOf((int) ((date2.getTime() - date.getTime()) / 86400000));
            }
        } catch (ParseException e2) {
            e = e2;
            date = null;
        }
        return String.valueOf((int) ((date2.getTime() - date.getTime()) / 86400000));
    }

    public static String diffDaysForTodo(String str, String str2) {
        Date date;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str2);
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("dd MMM yyyy");
        Calendar calendar = Calendar.getInstance();
        Date date2 = null;
        try {
            date = simpleDateFormat2.parse(str);
            try {
                date2 = simpleDateFormat.parse(simpleDateFormat.format(calendar.getTime()));
            } catch (ParseException e) {
                e = e;
                e.printStackTrace();
                return String.valueOf((int) ((date2.getTime() - date.getTime()) / 86400000));
            }
        } catch (ParseException e2) {
            e = e2;
            date = null;
        }
        return String.valueOf((int) ((date2.getTime() - date.getTime()) / 86400000));
    }

    public static long getNoOfDaysDiff(String str) {
        try {
            Calendar calendar = Calendar.getInstance();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.sss");
            getDateTime();
            return (simpleDateFormat.parse(simpleDateFormat.format(calendar.getTime())).getTime() - simpleDateFormat.parse(str).getTime()) / 86400000;
        } catch (Exception e) {
            e.printStackTrace();
            return 0L;
        }
    }

    public static boolean isAppRunningInForeground(Context context) {
        boolean z = false;
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
            if (runningAppProcessInfo.importance == 100) {
                for (String str : runningAppProcessInfo.pkgList) {
                    if (str.equals(context.getPackageName())) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public static boolean isServiceRunning(Context context, Class<?> cls) {
        Iterator<ActivityManager.RunningServiceInfo> it = ((ActivityManager) context.getSystemService("activity")).getRunningServices(Integer.MAX_VALUE).iterator();
        while (it.hasNext()) {
            if (cls.getName().equals(it.next().service.getClassName())) {
                return true;
            }
        }
        return false;
    }

    public static int convertDiptoPix(int i, Context context) {
        return (int) ((i * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int convertPixtoDip(int i, Context context) {
        return (int) ((i - 0.5f) / context.getResources().getDisplayMetrics().density);
    }

    public static boolean isDBAvailable() {
        try {
            return new File(FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath(), ConstantDeclarations.getInstance().getDatabasePath()).exists();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static int getScreenWidth() {
        return Resources.getSystem().getDisplayMetrics().widthPixels;
    }

    public static int getScreenHeight() {
        return Resources.getSystem().getDisplayMetrics().heightPixels;
    }

    public static boolean isMockSettingsON(Context context) {
        return !Settings.Secure.getString(context.getContentResolver(), "mock_location").equals("0");
    }

    public static int areThereMockPermissionApps(Context context) {
        StringBuffer stringBuffer = new StringBuffer();
        PackageManager packageManager = context.getPackageManager();
        int i = 0;
        for (ApplicationInfo applicationInfo : packageManager.getInstalledApplications(128)) {
            try {
                String[] strArr = packageManager.getPackageInfo(applicationInfo.packageName, 4096).requestedPermissions;
                if (strArr != null) {
                    for (String str : strArr) {
                        if (str.equals("android.permission.ACCESS_MOCK_LOCATION") && !applicationInfo.packageName.equals(context.getPackageName()) && !applicationInfo.packageName.contains(AbstractSpiCall.ANDROID_CLIENT_TYPE)) {
                            i++;
                            stringBuffer.append(applicationInfo.packageName);
                        }
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("Got exception ", e.getMessage());
            }
        }
        return i;
    }

    public static String getAddressWithGeocoder(Context context, double d, double d2) {
        StringBuilder sb = new StringBuilder();
        try {
            List<Address> fromLocation = new Geocoder(context, Locale.getDefault()).getFromLocation(d, d2, 1);
            if (fromLocation.size() > 0) {
                Address address = fromLocation.get(0);
                sb.append(address.getLocality());
                sb.append(IOUtils.LINE_SEPARATOR_UNIX);
                sb.append(address.getCountryName());
            }
        } catch (IOException e) {
            Log.e(JobStorage.COLUMN_TAG, e.getMessage());
        }
        return sb.toString();
    }

    public static String getAddressWithLatLong(Context context, double d, double d2) {
        try {
            List<Address> fromLocation = new Geocoder(context, Locale.ENGLISH).getFromLocation(d, d2, 1);
            if (fromLocation.size() > 0) {
                return fromLocation.get(0).getAddressLine(0);
            }
            return null;
        } catch (IOException e) {
            Log.e("ContentValues", "Impossible to connect to Geocoder", e);
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static boolean isTablet(Context context) {
        return ((context.getResources().getConfiguration().screenLayout & 15) == 4) || ((context.getResources().getConfiguration().screenLayout & 15) == 3);
    }

    public static void makeTabletDialogTextlarge(AlertDialog alertDialog) {
        try {
            TextView textView = (TextView) alertDialog.findViewById(android.R.id.message);
            Button button = (Button) alertDialog.findViewById(android.R.id.button1);
            Button button2 = (Button) alertDialog.findViewById(android.R.id.button2);
            Button button3 = (Button) alertDialog.findViewById(android.R.id.button3);
            textView.setPadding(35, 35, 35, 35);
            textView.setTextSize(25.0f);
            button.setTextSize(25.0f);
            button2.setTextSize(25.0f);
            button3.setTextSize(25.0f);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String generateIMEI(String str, Context context) {
        String uniqueAndroidID = getUniqueAndroidID(context);
        if (!TextUtils.isEmpty(uniqueAndroidID)) {
            return uniqueAndroidID;
        }
        return str + String.valueOf(generateRandomDigits(16 - str.length()));
    }

    private static BigInteger generateRandomDigits(int i) {
        String[] strArr = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"};
        SecureRandom secureRandom = new SecureRandom();
        StringBuilder sb = new StringBuilder(i);
        sb.append(new String[]{"1", "2", "3", "4", "5", "6", "7", "8", "9"}[secureRandom.nextInt(9)]);
        for (int i2 = 2; i2 <= i; i2++) {
            sb.append(strArr[secureRandom.nextInt(10)]);
        }
        return new BigInteger(sb.toString());
    }

    public static boolean checkIMEIFileExists() {
        try {
            return new File(ConstantDeclarations.imeiFilePath).exists();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void saveIMEIDetailsInFile(String str, String str2, boolean z) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(str));
            fileOutputStream.write(str2.getBytes());
            fileOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (z) {
            saveIMEIInDB(str2);
        }
    }

    public static void saveIMEIInDB(String str) {
        try {
            String str2 = "";
            if (str.contains(",")) {
                String[] split = str.split(",");
                if (split.length == 2) {
                    String str3 = split[0];
                    str2 = split[1];
                    str = str3;
                } else {
                    str = split[0];
                }
            }
            String str4 = "INSERT INTO IMEINumbersMaster(IMEINumber1 , IMEINumber2 ,PdaId) VALUES('" + str + "','" + str2 + "','" + ConstantsPMC.getInstance().getDeviceID() + "')";
            GetDataFromDB.getInstance().executeRawQueryInDB("Delete from IMEINumbersMaster");
            GetDataFromDB.getInstance().executeRawQueryInDB(str4);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean copyExternalDBFolders(File file, File file2) {
        try {
            org.apache.commons.io.FileUtils.copyDirectory(file, file2);
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void copyExternalDBFiles(File file, File file2) {
        try {
            org.apache.commons.io.FileUtils.copyFile(file, file2);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static String getUniqueAndroidID(Context context) {
        try {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception e) {
            e.getMessage();
            return null;
        }
    }

    public static boolean isTimeAutomatic(Context context) {
        return Settings.Global.getInt(context.getContentResolver(), "auto_time", 0) == 1;
    }

    public static long findDifference(String str, String str2) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            long time = simpleDateFormat.parse(str2).getTime() - simpleDateFormat.parse(str).getTime();
            long j = (time / 1000) % 60;
            long j2 = (time / ConstantDeclarations.REPEAT_TIME) % 60;
            long j3 = (time / 3600000) % 24;
            long j4 = time / 31536000000L;
            return (time / 86400000) % 365;
        } catch (ParseException e) {
            e.printStackTrace();
            return 0L;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0L;
        }
    }

    public static String getExpenseExpDate() {
        Calendar calendar = Calendar.getInstance();
        calendar.add(2, -2);
        calendar.set(5, calendar.getActualMaximum(5));
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.sss", Locale.ENGLISH).format(calendar.getTime());
    }

    public static String getToDoDraftUpdate() {
        Calendar calendar = Calendar.getInstance();
        try {
            calendar.add(5, -(GetDataFromDB.getInstance().getcount(Queries.getInstance().getItemValue("DeleteSADrafts_Days")) - 1));
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.sss", Locale.ENGLISH).format(calendar.getTime());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static boolean isDeveloperOptionsEnabled(Context context) {
        int i;
        try {
            i = Settings.Secure.getInt(context.getContentResolver(), "development_settings_enabled", 0);
        } catch (Exception e) {
            e.printStackTrace();
            i = 0;
        }
        return i == 1;
    }
}
