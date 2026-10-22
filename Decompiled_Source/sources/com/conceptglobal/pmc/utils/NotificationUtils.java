package com.conceptglobal.pmc.utils;

import android.app.ActivityManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.text.Html;
import android.text.TextUtils;
import android.util.Patterns;
import androidx.core.app.NotificationCompat;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* loaded from: classes.dex */
public class NotificationUtils {
    private static String TAG = "NotificationUtils";
    private Context mContext;

    public NotificationUtils(Context context) {
        this.mContext = context;
    }

    public void showNotificationMessage(String str, String str2, String str3, Intent intent) {
        showNotificationMessage(str, str2, str3, intent, null);
    }

    public void showNotificationMessage(String str, String str2, String str3, Intent intent, String str4) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        intent.setFlags(603979776);
        PendingIntent activity = PendingIntent.getActivity(this.mContext, 0, intent, (Build.VERSION.SDK_INT >= 23 ? 67108864 : 0) + 268435456);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(this.mContext);
        Uri parse = Uri.parse("android.resource://" + this.mContext.getPackageName() + "/raw/notification");
        if (!TextUtils.isEmpty(str4)) {
            if (str4 == null || str4.length() <= 4 || !Patterns.WEB_URL.matcher(str4).matches()) {
                return;
            }
            Bitmap bitmapFromURL = getBitmapFromURL(str4);
            if (bitmapFromURL != null) {
                showBigNotification(bitmapFromURL, builder, R.drawable.applogo, str, str2, str3, activity, parse);
                return;
            } else {
                showSmallNotification(builder, R.drawable.applogo, str, str2, str3, activity, parse);
                return;
            }
        }
        showSmallNotification(builder, R.drawable.applogo, str, str2, str3, activity, parse);
        playNotificationSound();
    }

    private void showSmallNotification(NotificationCompat.Builder builder, int i, String str, String str2, String str3, PendingIntent pendingIntent, Uri uri) {
        NotificationCompat.InboxStyle inboxStyle = new NotificationCompat.InboxStyle();
        inboxStyle.addLine(str2);
        ((NotificationManager) this.mContext.getSystemService("notification")).notify(1, builder.setSmallIcon(i).setTicker(str).setWhen(0L).setAutoCancel(true).setContentTitle(str).setContentIntent(pendingIntent).setSound(uri).setStyle(inboxStyle).setSmallIcon(R.drawable.applogo).setLargeIcon(BitmapFactory.decodeResource(this.mContext.getResources(), i)).setContentText(str2).build());
    }

    private void showBigNotification(Bitmap bitmap, NotificationCompat.Builder builder, int i, String str, String str2, String str3, PendingIntent pendingIntent, Uri uri) {
        NotificationCompat.BigPictureStyle bigPictureStyle = new NotificationCompat.BigPictureStyle();
        bigPictureStyle.setBigContentTitle(str);
        bigPictureStyle.setSummaryText(Html.fromHtml(str2).toString());
        bigPictureStyle.bigPicture(bitmap);
        ((NotificationManager) this.mContext.getSystemService("notification")).notify(R.drawable.applogo, builder.setSmallIcon(i).setTicker(str).setWhen(0L).setAutoCancel(true).setContentTitle(str).setContentIntent(pendingIntent).setSound(uri).setStyle(bigPictureStyle).setSmallIcon(R.drawable.applogo).setLargeIcon(BitmapFactory.decodeResource(this.mContext.getResources(), i)).setContentText(str2).build());
    }

    public Bitmap getBitmapFromURL(String str) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            return BitmapFactory.decodeStream(httpURLConnection.getInputStream());
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void playNotificationSound() {
        try {
            RingtoneManager.getRingtone(this.mContext, Uri.parse("android.resource://" + this.mContext.getPackageName() + "/raw/notification")).play();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean isAppIsInBackground(Context context) {
        boolean z = true;
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
            if (runningAppProcessInfo.importance == 100) {
                for (String str : runningAppProcessInfo.pkgList) {
                    if (str.equals(context.getPackageName())) {
                        z = false;
                    }
                }
            }
        }
        return z;
    }

    public static void clearNotifications(Context context) {
        ((NotificationManager) context.getSystemService("notification")).cancelAll();
    }

    public static long getTimeMilliSec(String str) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(str).getTime();
        } catch (ParseException e) {
            e.printStackTrace();
            return 0L;
        }
    }
}
