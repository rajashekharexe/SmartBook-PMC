package com.conceptglobal.pmc.fotracker.util;

import android.R;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.location.Address;
import android.location.Geocoder;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.provider.Settings;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
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
import android.widget.LinearLayout;
import android.widget.TextView;
import com.conceptglobal.loation.Messages;
import com.conceptglobal.pmc.PMCApplication;
import com.conceptglobal.pmc.fotracker.database.GetDataFromDB;
import com.conceptglobal.pmc.fotracker.database.Queries;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.FileUtils;
import com.evernote.android.job.JobStorage;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class UtilDeclarations {
    private static ProgressDialog progressDialog = null;
    private static String tag = "UtilDeclarations";

    public Animation layoutGoneAnimation(final LinearLayout linearLayout) {
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, -linearLayout.getWidth(), 0.0f, 0.0f);
        translateAnimation.setFillEnabled(true);
        translateAnimation.setDuration(1000L);
        translateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.conceptglobal.pmc.fotracker.util.UtilDeclarations.1
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

    public static String timeDifference(Date date, Date date2) {
        try {
            long time = date2.getTime() - date.getTime();
            long j = (time / 1000) % 60;
            return String.format("%02d:%02d:%02d", Long.valueOf((time / 3600000) % 24), Long.valueOf((time / ConstantDeclarations.REPEAT_TIME) % 60), Long.valueOf(j));
        } catch (Exception unused) {
            return "";
        }
    }

    public static long timeDifferenceInMinutes(Date date, Date date2) {
        try {
            long time = date2.getTime() - date.getTime();
            long j = (time / 1000) % 60;
            long j2 = (time / ConstantDeclarations.REPEAT_TIME) % 60;
            long j3 = (time / 3600000) % 24;
            return j2;
        } catch (Exception unused) {
            return 0L;
        }
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

    public static String getDateTimeBefore(int i) {
        Calendar calendar = Calendar.getInstance();
        calendar.add(5, -i);
        calendar.set(11, 23);
        calendar.set(12, 59);
        calendar.set(13, 59);
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.sss", Locale.ENGLISH).format(calendar.getTime());
    }

    public static String getDate() {
        return new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH).format(Calendar.getInstance().getTime());
    }

    public static String getDateInDDMMYYYY() {
        return new SimpleDateFormat("dd-MM-yyyy", Locale.ENGLISH).format(Calendar.getInstance().getTime());
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

    /* JADX WARN: Incorrect condition in loop: B:5:0x0013 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getDeviceIMEI(android.content.Context r2) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fotracker.util.UtilDeclarations.getDeviceIMEI(android.content.Context):java.lang.String");
    }

    /* JADX WARN: Incorrect condition in loop: B:5:0x0016 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getDeviceIMEIMultiple(android.content.Context r4) {
        /*
            java.lang.String r0 = "phone"
            java.lang.Object r4 = r4.getSystemService(r0)
            android.telephony.TelephonyManager r4 = (android.telephony.TelephonyManager) r4
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 23
            if (r0 < r1) goto L3e
            r0 = 0
            java.lang.String r1 = ""
            r2 = 0
        L12:
            int r3 = com.conceptglobal.pmc.LoginActivity$$ExternalSyntheticApiModelOutline0.m(r4)
            if (r2 >= r3) goto L33
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r1)
            java.lang.String r1 = com.conceptglobal.pmc.LoginActivity$$ExternalSyntheticApiModelOutline0.m(r4, r2)
            r3.append(r1)
            java.lang.String r1 = ","
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            int r2 = r2 + 1
            goto L12
        L33:
            int r4 = r1.length()
            int r4 = r4 + (-1)
            java.lang.String r4 = r1.substring(r0, r4)
            return r4
        L3e:
            java.lang.String r4 = r4.getDeviceId()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fotracker.util.UtilDeclarations.getDeviceIMEIMultiple(android.content.Context):java.lang.String");
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
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fotracker.util.UtilDeclarations.ConvertToXMLFormat(android.database.Cursor, java.lang.String):java.lang.String");
    }

    public static int getCountForSync() {
        try {
            return GetDataFromDB.getInstance().getcount(Queries.getInstance().getCountofPMCFarmerCropping) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getCountFarmerMaster) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getCountofDealerMaster) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getCountofDealerCompanies) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getCountofDealerCrops) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getCountofActivityAssignments) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getCountofAssignmentVisit) + GetDataFromDB.getInstance().getcount(Queries.getInstance().getPictureCount);
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
            return new File(FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath(), com.conceptglobal.pmc.fotracker.ConstantDeclarations.getInstance().getDatabasePath()).exists();
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
            if (fromLocation.size() <= 0) {
                return null;
            }
            return fromLocation.get(0).getPremises() + IOUtils.LINE_SEPARATOR_UNIX + fromLocation.get(0).getLocality();
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
            TextView textView = (TextView) alertDialog.findViewById(R.id.message);
            Button button = (Button) alertDialog.findViewById(R.id.button1);
            Button button2 = (Button) alertDialog.findViewById(R.id.button2);
            Button button3 = (Button) alertDialog.findViewById(R.id.button3);
            textView.setPadding(35, 35, 35, 35);
            textView.setTextSize(25.0f);
            button.setTextSize(25.0f);
            button2.setTextSize(25.0f);
            button3.setTextSize(25.0f);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Date getDateToday() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        int i = calendar.get(11);
        int i2 = calendar.get(12);
        int i3 = calendar.get(13);
        int i4 = calendar.get(14);
        calendar.set(11, i);
        calendar.set(12, i2);
        calendar.set(13, i3);
        calendar.set(14, i4);
        return calendar.getTime();
    }

    public static long getTimeDifferanceInMinutes(String str, String str2) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.sss");
            return (simpleDateFormat.parse(str2).getTime() - simpleDateFormat.parse(str).getTime()) / ConstantDeclarations.REPEAT_TIME;
        } catch (Exception unused) {
            return -1L;
        }
    }
}
