package com.squareup.picasso;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Looper;
import android.os.Process;
import android.os.StatFs;
import android.provider.Settings;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes2.dex */
final class Utils {
    static final int DEFAULT_CONNECT_TIMEOUT = 15000;
    static final int DEFAULT_READ_TIMEOUT = 20000;
    private static final int KEY_PADDING = 50;
    static final StringBuilder MAIN_THREAD_KEY_BUILDER = new StringBuilder();
    private static final int MAX_DISK_CACHE_SIZE = 52428800;
    private static final int MIN_DISK_CACHE_SIZE = 5242880;
    private static final String PICASSO_CACHE = "picasso-cache";
    static final String THREAD_IDLE_NAME = "Picasso-Idle";
    static final String THREAD_PREFIX = "Picasso-";
    private static final String WEBP_FILE_HEADER_RIFF = "RIFF";
    private static final int WEBP_FILE_HEADER_SIZE = 12;
    private static final String WEBP_FILE_HEADER_WEBP = "WEBP";

    private Utils() {
    }

    static int getBitmapBytes(Bitmap bitmap) {
        int byteCount = BitmapHoneycombMR1.getByteCount(bitmap);
        if (byteCount >= 0) {
            return byteCount;
        }
        throw new IllegalStateException("Negative size: " + bitmap);
    }

    static void checkNotMain() {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            throw new IllegalStateException("Method call should not happen from the main thread.");
        }
    }

    static String createKey(Request request) {
        StringBuilder sb = MAIN_THREAD_KEY_BUILDER;
        String createKey = createKey(request, sb);
        sb.setLength(0);
        return createKey;
    }

    static String createKey(Request request, StringBuilder sb) {
        if (request.uri != null) {
            String uri = request.uri.toString();
            sb.ensureCapacity(uri.length() + 50);
            sb.append(uri);
        } else {
            sb.ensureCapacity(50);
            sb.append(request.resourceId);
        }
        sb.append('\n');
        if (request.rotationDegrees != 0.0f) {
            sb.append("rotation:");
            sb.append(request.rotationDegrees);
            if (request.hasRotationPivot) {
                sb.append('@');
                sb.append(request.rotationPivotX);
                sb.append('x');
                sb.append(request.rotationPivotY);
            }
            sb.append('\n');
        }
        if (request.targetWidth != 0) {
            sb.append("resize:");
            sb.append(request.targetWidth);
            sb.append('x');
            sb.append(request.targetHeight);
            sb.append('\n');
        }
        if (request.centerCrop) {
            sb.append("centerCrop\n");
        } else if (request.centerInside) {
            sb.append("centerInside\n");
        }
        if (request.transformations != null) {
            int size = request.transformations.size();
            for (int i = 0; i < size; i++) {
                sb.append(request.transformations.get(i).key());
                sb.append('\n');
            }
        }
        return sb.toString();
    }

    static void closeQuietly(InputStream inputStream) {
        if (inputStream == null) {
            return;
        }
        try {
            inputStream.close();
        } catch (IOException unused) {
        }
    }

    static boolean parseResponseSourceHeader(String str) {
        if (str == null) {
            return false;
        }
        String[] split = str.split(" ", 2);
        if ("CACHE".equals(split[0])) {
            return true;
        }
        if (split.length == 1) {
            return false;
        }
        try {
            if ("CONDITIONAL_CACHE".equals(split[0])) {
                return Integer.parseInt(split[1]) == 304;
            }
            return false;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    static Downloader createDefaultDownloader(Context context) {
        try {
            Class.forName("com.squareup.okhttp.OkHttpClient");
            return OkHttpLoaderCreator.create(context);
        } catch (ClassNotFoundException unused) {
            return new UrlConnectionDownloader(context);
        }
    }

    static File createDefaultCacheDir(Context context) {
        File file = new File(context.getApplicationContext().getCacheDir(), PICASSO_CACHE);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    static long calculateDiskCacheSize(File file) {
        long j;
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            j = (statFs.getBlockCount() * statFs.getBlockSize()) / 50;
        } catch (IllegalArgumentException unused) {
            j = 5242880;
        }
        return Math.max(Math.min(j, 52428800L), 5242880L);
    }

    static int calculateMemoryCacheSize(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        boolean z = (context.getApplicationInfo().flags & 1048576) != 0;
        int memoryClass = activityManager.getMemoryClass();
        if (z) {
            memoryClass = ActivityManagerHoneycomb.getLargeMemoryClass(activityManager);
        }
        return (memoryClass * 1048576) / 7;
    }

    static boolean isAirplaneModeOn(Context context) {
        return Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0;
    }

    static boolean hasPermission(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    static byte[] toByteArray(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (-1 != read) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    static boolean isWebPFile(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[12];
        return inputStream.read(bArr, 0, 12) == 12 && WEBP_FILE_HEADER_RIFF.equals(new String(bArr, 0, 4, "US-ASCII")) && WEBP_FILE_HEADER_WEBP.equals(new String(bArr, 8, 4, "US-ASCII"));
    }

    static int getResourceId(Resources resources, Request request) throws FileNotFoundException {
        if (request.resourceId != 0 || request.uri == null) {
            return request.resourceId;
        }
        String authority = request.uri.getAuthority();
        if (authority == null) {
            throw new FileNotFoundException("No package provided: " + request.uri);
        }
        List<String> pathSegments = request.uri.getPathSegments();
        if (pathSegments == null || pathSegments.isEmpty()) {
            throw new FileNotFoundException("No path segments: " + request.uri);
        }
        if (pathSegments.size() == 1) {
            try {
                return Integer.parseInt(pathSegments.get(0));
            } catch (NumberFormatException unused) {
                throw new FileNotFoundException("Last path segment is not a resource ID: " + request.uri);
            }
        }
        if (pathSegments.size() == 2) {
            return resources.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
        }
        throw new FileNotFoundException("More than two path segments: " + request.uri);
    }

    static Resources getResources(Context context, Request request) throws FileNotFoundException {
        if (request.resourceId != 0 || request.uri == null) {
            return context.getResources();
        }
        String authority = request.uri.getAuthority();
        if (authority == null) {
            throw new FileNotFoundException("No package provided: " + request.uri);
        }
        try {
            return context.getPackageManager().getResourcesForApplication(authority);
        } catch (PackageManager.NameNotFoundException unused) {
            throw new FileNotFoundException("Unable to obtain resources for package: " + request.uri);
        }
    }

    private static class ActivityManagerHoneycomb {
        private ActivityManagerHoneycomb() {
        }

        static int getLargeMemoryClass(ActivityManager activityManager) {
            return activityManager.getLargeMemoryClass();
        }
    }

    static class PicassoThreadFactory implements ThreadFactory {
        PicassoThreadFactory() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new PicassoThread(runnable);
        }
    }

    private static class PicassoThread extends Thread {
        public PicassoThread(Runnable runnable) {
            super(runnable);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    private static class BitmapHoneycombMR1 {
        private BitmapHoneycombMR1() {
        }

        static int getByteCount(Bitmap bitmap) {
            return bitmap.getByteCount();
        }
    }

    private static class OkHttpLoaderCreator {
        private OkHttpLoaderCreator() {
        }

        static Downloader create(Context context) {
            return new OkHttpDownloader(context);
        }
    }
}
