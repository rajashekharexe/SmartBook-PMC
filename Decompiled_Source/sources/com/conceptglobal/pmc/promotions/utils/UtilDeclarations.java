package com.conceptglobal.pmc.promotions.utils;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.res.AssetManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Environment;
import android.os.StatFs;
import android.util.Log;
import android.view.inputmethod.InputMethodManager;
import com.conceptglobal.pmc.PMCApplication;
import com.conceptglobal.pmc.promotions.common.Queries;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.promotions.models.ContentMaster;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.PLog;
import com.evernote.android.job.JobStorage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Enumeration;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class UtilDeclarations {
    private static UtilDeclarations instance = null;
    private static ProgressDialog progressDialog = null;
    private static String tag = "UtilDeclarations";
    public static String mediaPath = com.conceptglobal.pmc.utils.FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + "/MediaPOC/Media/";
    public static String mediaDir = "/DigitalCollatralMedia/";
    public static String thumbnailDir = mediaDir + "/Thumbnail/";
    public static String path = com.conceptglobal.pmc.utils.FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + "/MediaPOC/DataBase/";
    public static String file = "promotionsdb.sqlite";
    private String pmcRootFolder = "PMC";
    private String getAppPath = com.conceptglobal.pmc.utils.FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + "/PMCPatch/";
    private String dbFolder = "/" + this.pmcRootFolder + "/Database";
    private String databasePath = this.dbFolder + "/pmc.sqlite";
    private String trainingDBFolder = this.dbFolder + "/Training";
    private String trainingDatabasePath = this.trainingDBFolder + "/pmc.sqlite";
    private String dbDownloadPaths = com.conceptglobal.pmc.utils.FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + this.dbFolder + "/";
    private String keySelection = "Selection";
    private String keySelectionQuery = "Selection_query";

    public static UtilDeclarations getInstance() {
        if (instance == null) {
            instance = new UtilDeclarations();
        }
        return instance;
    }

    public static String getFilesDirectoryPath(Context context) {
        return context.getFilesDir().getAbsolutePath();
    }

    public static boolean isOnline(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public String getDatabasePath() {
        return this.databasePath;
    }

    public static String getDateTime() {
        return new SimpleDateFormat("MM-dd-yyyy HH:mm:ss.sss", Locale.ENGLISH).format(Calendar.getInstance().getTime());
    }

    public static String convertDate(String str) {
        try {
            return new SimpleDateFormat("dd-MM-yyyy").format(new SimpleDateFormat("yyyy-MM-dd").parse(str.substring(0, 10)));
        } catch (ParseException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String getDateTimeForLogs() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.ENGLISH).format(Calendar.getInstance().getTime());
    }

    public static void hideInputKeyboard(Context context) {
        ((InputMethodManager) context.getSystemService("input_method")).hideSoftInputFromWindow(((Activity) context).getWindow().getDecorView().getWindowToken(), 2);
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

    public static boolean isDBAvailable() {
        try {
            return new File(path + file).exists();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void copyAssets(Context context) {
        String[] strArr;
        AssetManager assets = context.getAssets();
        try {
            strArr = assets.list("");
        } catch (IOException e) {
            Log.e(JobStorage.COLUMN_TAG, "Failed to get asset file list.", e);
            strArr = null;
        }
        try {
            InputStream open = assets.open(strArr[1]);
            File file2 = new File(path, strArr[1]);
            if (!file2.exists()) {
                new File(path).mkdirs();
                file2.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            copyFile(open, fileOutputStream);
            open.close();
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (IOException e2) {
            Log.e(JobStorage.COLUMN_TAG, "Failed to copy asset file: " + strArr[1], e2);
        }
    }

    public static void copyFile(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, read);
            }
        }
    }

    public static String getCurrentTimeStamp() {
        try {
            return String.valueOf(System.currentTimeMillis());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getLocalIpAddress() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress()) {
                        return nextElement.getHostAddress().toString();
                    }
                }
            }
            return null;
        } catch (Exception e) {
            Log.e("IP Address", e.toString());
            return null;
        }
    }

    public static String milliSecondsToTimer(long j) {
        String str;
        String str2;
        int i = (int) (j / 3600000);
        long j2 = j % 3600000;
        int i2 = ((int) j2) / 60000;
        int i3 = (int) ((j2 % ConstantDeclarations.REPEAT_TIME) / 1000);
        if (i > 0) {
            str = i + ":";
        } else {
            str = "";
        }
        if (i3 < 10) {
            str2 = "0" + i3;
        } else {
            str2 = "" + i3;
        }
        return str + i2 + ":" + str2;
    }

    public static int getProgressPercentage(long j, long j2) {
        Double.valueOf(0.0d);
        return Double.valueOf((((int) (j / 1000)) / ((int) (j2 / 1000))) * 100.0d).intValue();
    }

    public static int progressToTimer(int i, int i2) {
        return ((int) ((i / 100.0d) * (i2 / 1000))) * 1000;
    }

    public static boolean externalMemoryAvailable() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static String getAvailableInternalMemorySize() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return formatSize(statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong());
    }

    public static String getTotalInternalMemorySize() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return formatSize(statFs.getBlockCountLong() * statFs.getBlockSizeLong());
    }

    public static String formatSize(long j) {
        String str;
        if (j >= 1024) {
            j /= 1024;
            if (j < 1024) {
                str = "KB";
            } else {
                j /= 1024;
                str = "MB";
            }
        } else {
            str = null;
        }
        StringBuilder sb = new StringBuilder(Long.toString(j));
        for (int length = sb.length() - 3; length > 0; length -= 3) {
            sb.insert(length, ',');
        }
        if (str != null) {
            sb.append(str);
        }
        return sb.toString();
    }

    public static void revokeLocalContent(Context context) {
        try {
            CategoryDAO categoryDAO = new CategoryDAO(context);
            ArrayList<ContentMaster> allDownloadsContents = categoryDAO.getAllDownloadsContents(Queries.getInstance().getRevokedContents());
            allDownloadsContents.addAll(categoryDAO.getAllDownloadsContents(Queries.getInstance().getExpiredContents()));
            if (allDownloadsContents != null && allDownloadsContents.size() > 0) {
                for (int i = 0; i < allDownloadsContents.size(); i++) {
                    ContentMaster contentMaster = allDownloadsContents.get(i);
                    if (new File(contentMaster.getContentDeviceLocation()).exists()) {
                        new File(contentMaster.getContentDeviceLocation()).delete();
                        new File(contentMaster.getLocalThumbnail()).delete();
                        Log.d("File deleted", contentMaster.getContentDeviceLocation());
                    }
                }
            }
            categoryDAO.executeQuery(Queries.getInstance().getDeleteRevokedContents());
            categoryDAO.executeQuery(Queries.getInstance().getDeleteExpiredContents());
        } catch (Exception e) {
            e.printStackTrace();
            PLog.e("Revoke", e);
        }
    }

    public String getVideoIdFromYoutubeUrl(String str) {
        Matcher matcher = Pattern.compile("http(?:s)?:\\/\\/(?:m.)?(?:www\\.)?youtu(?:\\.be\\/|be\\.com\\/(?:watch\\?(?:feature=youtu.be\\&)?v=|v\\/|embed\\/|user\\/(?:[\\w#]+\\/)+))([^&#?\\n]+)", 2).matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return null;
    }

    public static long getNoOfDaysDiff(String str) {
        try {
            Calendar calendar = Calendar.getInstance();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.sss");
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("dd MMM yyyy");
            getDateTime();
            return (simpleDateFormat.parse(simpleDateFormat.format(calendar.getTime())).getTime() - simpleDateFormat2.parse(str).getTime()) / 86400000;
        } catch (Exception e) {
            e.printStackTrace();
            return 0L;
        }
    }
}
