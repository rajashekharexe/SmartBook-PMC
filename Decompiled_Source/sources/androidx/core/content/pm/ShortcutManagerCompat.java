package androidx.core.content.pm;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import androidx.core.app.Person$$ExternalSyntheticApiModelOutline0;
import androidx.core.content.ContextCompat;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.content.pm.ShortcutInfoCompatSaver;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.util.Preconditions;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ShortcutManagerCompat {
    static final String ACTION_INSTALL_SHORTCUT = "com.android.launcher.action.INSTALL_SHORTCUT";
    private static final int DEFAULT_MAX_ICON_DIMENSION_DP = 96;
    private static final int DEFAULT_MAX_ICON_DIMENSION_LOWRAM_DP = 48;
    public static final String EXTRA_SHORTCUT_ID = "android.intent.extra.shortcut.ID";
    public static final int FLAG_MATCH_CACHED = 8;
    public static final int FLAG_MATCH_DYNAMIC = 2;
    public static final int FLAG_MATCH_MANIFEST = 1;
    public static final int FLAG_MATCH_PINNED = 4;
    static final String INSTALL_SHORTCUT_PERMISSION = "com.android.launcher.permission.INSTALL_SHORTCUT";
    private static final String SHORTCUT_LISTENER_INTENT_FILTER_ACTION = "androidx.core.content.pm.SHORTCUT_LISTENER";
    private static final String SHORTCUT_LISTENER_META_DATA_KEY = "androidx.core.content.pm.shortcut_listener_impl";
    private static volatile List<ShortcutInfoChangeListener> sShortcutInfoChangeListeners;
    private static volatile ShortcutInfoCompatSaver<?> sShortcutInfoCompatSaver;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ShortcutMatchFlags {
    }

    private ShortcutManagerCompat() {
    }

    public static boolean isRequestPinShortcutSupported(Context context) {
        Object systemService;
        boolean isRequestPinShortcutSupported;
        if (Build.VERSION.SDK_INT >= 26) {
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m$1());
            isRequestPinShortcutSupported = Person$$ExternalSyntheticApiModelOutline0.m53m(systemService).isRequestPinShortcutSupported();
            return isRequestPinShortcutSupported;
        }
        if (ContextCompat.checkSelfPermission(context, INSTALL_SHORTCUT_PERMISSION) != 0) {
            return false;
        }
        Iterator<ResolveInfo> it = context.getPackageManager().queryBroadcastReceivers(new Intent(ACTION_INSTALL_SHORTCUT), 0).iterator();
        while (it.hasNext()) {
            String str = it.next().activityInfo.permission;
            if (TextUtils.isEmpty(str) || INSTALL_SHORTCUT_PERMISSION.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean requestPinShortcut(final Context context, ShortcutInfoCompat shortcut, final IntentSender callback) {
        Object systemService;
        boolean requestPinShortcut;
        if (Build.VERSION.SDK_INT >= 26) {
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m$1());
            requestPinShortcut = Person$$ExternalSyntheticApiModelOutline0.m53m(systemService).requestPinShortcut(shortcut.toShortcutInfo(), callback);
            return requestPinShortcut;
        }
        if (!isRequestPinShortcutSupported(context)) {
            return false;
        }
        Intent addToIntent = shortcut.addToIntent(new Intent(ACTION_INSTALL_SHORTCUT));
        if (callback == null) {
            context.sendBroadcast(addToIntent);
            return true;
        }
        context.sendOrderedBroadcast(addToIntent, null, new BroadcastReceiver() { // from class: androidx.core.content.pm.ShortcutManagerCompat.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                try {
                    callback.sendIntent(context2, 0, null, null, null);
                } catch (IntentSender.SendIntentException unused) {
                }
            }
        }, null, -1, null, null);
        return true;
    }

    public static Intent createShortcutResultIntent(Context context, ShortcutInfoCompat shortcut) {
        Intent intent;
        Object systemService;
        if (Build.VERSION.SDK_INT >= 26) {
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m$1());
            intent = Person$$ExternalSyntheticApiModelOutline0.m53m(systemService).createShortcutResultIntent(shortcut.toShortcutInfo());
        } else {
            intent = null;
        }
        if (intent == null) {
            intent = new Intent();
        }
        return shortcut.addToIntent(intent);
    }

    public static List<ShortcutInfoCompat> getShortcuts(final Context context, int matchFlags) {
        Object systemService;
        List pinnedShortcuts;
        List dynamicShortcuts;
        List manifestShortcuts;
        Object systemService2;
        List shortcuts;
        if (Build.VERSION.SDK_INT >= 30) {
            systemService2 = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m$1());
            shortcuts = Person$$ExternalSyntheticApiModelOutline0.m53m(systemService2).getShortcuts(matchFlags);
            return ShortcutInfoCompat.fromShortcuts(context, shortcuts);
        }
        if (Build.VERSION.SDK_INT >= 25) {
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m$1());
            ShortcutManager m53m = Person$$ExternalSyntheticApiModelOutline0.m53m(systemService);
            ArrayList arrayList = new ArrayList();
            if ((matchFlags & 1) != 0) {
                manifestShortcuts = m53m.getManifestShortcuts();
                arrayList.addAll(manifestShortcuts);
            }
            if ((matchFlags & 2) != 0) {
                dynamicShortcuts = m53m.getDynamicShortcuts();
                arrayList.addAll(dynamicShortcuts);
            }
            if ((matchFlags & 4) != 0) {
                pinnedShortcuts = m53m.getPinnedShortcuts();
                arrayList.addAll(pinnedShortcuts);
            }
            return ShortcutInfoCompat.fromShortcuts(context, arrayList);
        }
        if ((matchFlags & 2) != 0) {
            try {
                return getShortcutInfoSaverInstance(context).getShortcuts();
            } catch (Exception unused) {
            }
        }
        return Collections.emptyList();
    }

    public static boolean addDynamicShortcuts(Context context, List<ShortcutInfoCompat> shortcutInfoList) {
        Object systemService;
        boolean addDynamicShortcuts;
        if (Build.VERSION.SDK_INT <= 29) {
            convertUriIconsToBitmapIcons(context, shortcutInfoList);
        }
        if (Build.VERSION.SDK_INT >= 25) {
            ArrayList arrayList = new ArrayList();
            Iterator<ShortcutInfoCompat> it = shortcutInfoList.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().toShortcutInfo());
            }
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m$1());
            addDynamicShortcuts = Person$$ExternalSyntheticApiModelOutline0.m53m(systemService).addDynamicShortcuts(arrayList);
            if (!addDynamicShortcuts) {
                return false;
            }
        }
        getShortcutInfoSaverInstance(context).addShortcuts(shortcutInfoList);
        Iterator<ShortcutInfoChangeListener> it2 = getShortcutInfoListeners(context).iterator();
        while (it2.hasNext()) {
            it2.next().onShortcutAdded(shortcutInfoList);
        }
        return true;
    }

    public static int getMaxShortcutCountPerActivity(Context context) {
        Object systemService;
        int maxShortcutCountPerActivity;
        Preconditions.checkNotNull(context);
        if (Build.VERSION.SDK_INT < 25) {
            return 5;
        }
        systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m$1());
        maxShortcutCountPerActivity = Person$$ExternalSyntheticApiModelOutline0.m53m(systemService).getMaxShortcutCountPerActivity();
        return maxShortcutCountPerActivity;
    }

    public static boolean isRateLimitingActive(final Context context) {
        Object systemService;
        boolean isRateLimitingActive;
        Preconditions.checkNotNull(context);
        if (Build.VERSION.SDK_INT < 25) {
            return getShortcuts(context, 3).size() == getMaxShortcutCountPerActivity(context);
        }
        systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m$1());
        isRateLimitingActive = Person$$ExternalSyntheticApiModelOutline0.m53m(systemService).isRateLimitingActive();
        return isRateLimitingActive;
    }

    public static int getIconMaxWidth(final Context context) {
        Object systemService;
        int iconMaxWidth;
        Preconditions.checkNotNull(context);
        if (Build.VERSION.SDK_INT >= 25) {
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m$1());
            iconMaxWidth = Person$$ExternalSyntheticApiModelOutline0.m53m(systemService).getIconMaxWidth();
            return iconMaxWidth;
        }
        return getIconDimensionInternal(context, true);
    }

    public static int getIconMaxHeight(final Context context) {
        Object systemService;
        int iconMaxHeight;
        Preconditions.checkNotNull(context);
        if (Build.VERSION.SDK_INT >= 25) {
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m$1());
            iconMaxHeight = Person$$ExternalSyntheticApiModelOutline0.m53m(systemService).getIconMaxHeight();
            return iconMaxHeight;
        }
        return getIconDimensionInternal(context, false);
    }

    public static void reportShortcutUsed(final Context context, final String shortcutId) {
        Object systemService;
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(shortcutId);
        if (Build.VERSION.SDK_INT >= 25) {
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m$1());
            Person$$ExternalSyntheticApiModelOutline0.m53m(systemService).reportShortcutUsed(shortcutId);
        }
        Iterator<ShortcutInfoChangeListener> it = getShortcutInfoListeners(context).iterator();
        while (it.hasNext()) {
            it.next().onShortcutUsageReported(Collections.singletonList(shortcutId));
        }
    }

    public static boolean setDynamicShortcuts(final Context context, final List<ShortcutInfoCompat> shortcutInfoList) {
        Object systemService;
        boolean dynamicShortcuts;
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(shortcutInfoList);
        if (Build.VERSION.SDK_INT >= 25) {
            ArrayList arrayList = new ArrayList(shortcutInfoList.size());
            Iterator<ShortcutInfoCompat> it = shortcutInfoList.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().toShortcutInfo());
            }
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m$1());
            dynamicShortcuts = Person$$ExternalSyntheticApiModelOutline0.m53m(systemService).setDynamicShortcuts(arrayList);
            if (!dynamicShortcuts) {
                return false;
            }
        }
        getShortcutInfoSaverInstance(context).removeAllShortcuts();
        getShortcutInfoSaverInstance(context).addShortcuts(shortcutInfoList);
        for (ShortcutInfoChangeListener shortcutInfoChangeListener : getShortcutInfoListeners(context)) {
            shortcutInfoChangeListener.onAllShortcutsRemoved();
            shortcutInfoChangeListener.onShortcutAdded(shortcutInfoList);
        }
        return true;
    }

    public static List<ShortcutInfoCompat> getDynamicShortcuts(Context context) {
        Object systemService;
        List dynamicShortcuts;
        if (Build.VERSION.SDK_INT >= 25) {
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m$1());
            dynamicShortcuts = Person$$ExternalSyntheticApiModelOutline0.m53m(systemService).getDynamicShortcuts();
            ArrayList arrayList = new ArrayList(dynamicShortcuts.size());
            Iterator it = dynamicShortcuts.iterator();
            while (it.hasNext()) {
                arrayList.add(new ShortcutInfoCompat.Builder(context, Person$$ExternalSyntheticApiModelOutline0.m(it.next())).build());
            }
            return arrayList;
        }
        try {
            return getShortcutInfoSaverInstance(context).getShortcuts();
        } catch (Exception unused) {
            return new ArrayList();
        }
    }

    public static boolean updateShortcuts(Context context, List<ShortcutInfoCompat> shortcutInfoList) {
        Object systemService;
        boolean updateShortcuts;
        if (Build.VERSION.SDK_INT <= 29) {
            convertUriIconsToBitmapIcons(context, shortcutInfoList);
        }
        if (Build.VERSION.SDK_INT >= 25) {
            ArrayList arrayList = new ArrayList();
            Iterator<ShortcutInfoCompat> it = shortcutInfoList.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().toShortcutInfo());
            }
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m$1());
            updateShortcuts = Person$$ExternalSyntheticApiModelOutline0.m53m(systemService).updateShortcuts(arrayList);
            if (!updateShortcuts) {
                return false;
            }
        }
        getShortcutInfoSaverInstance(context).addShortcuts(shortcutInfoList);
        Iterator<ShortcutInfoChangeListener> it2 = getShortcutInfoListeners(context).iterator();
        while (it2.hasNext()) {
            it2.next().onShortcutUpdated(shortcutInfoList);
        }
        return true;
    }

    static boolean convertUriIconToBitmapIcon(final Context context, final ShortcutInfoCompat info) {
        Bitmap decodeStream;
        IconCompat createWithBitmap;
        if (info.mIcon == null) {
            return false;
        }
        int i = info.mIcon.mType;
        if (i != 6 && i != 4) {
            return true;
        }
        InputStream uriInputStream = info.mIcon.getUriInputStream(context);
        if (uriInputStream == null || (decodeStream = BitmapFactory.decodeStream(uriInputStream)) == null) {
            return false;
        }
        if (i == 6) {
            createWithBitmap = IconCompat.createWithAdaptiveBitmap(decodeStream);
        } else {
            createWithBitmap = IconCompat.createWithBitmap(decodeStream);
        }
        info.mIcon = createWithBitmap;
        return true;
    }

    static void convertUriIconsToBitmapIcons(final Context context, final List<ShortcutInfoCompat> shortcutInfoList) {
        for (ShortcutInfoCompat shortcutInfoCompat : new ArrayList(shortcutInfoList)) {
            if (!convertUriIconToBitmapIcon(context, shortcutInfoCompat)) {
                shortcutInfoList.remove(shortcutInfoCompat);
            }
        }
    }

    public static void disableShortcuts(final Context context, final List<String> shortcutIds, final CharSequence disabledMessage) {
        Object systemService;
        if (Build.VERSION.SDK_INT >= 25) {
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m$1());
            Person$$ExternalSyntheticApiModelOutline0.m53m(systemService).disableShortcuts(shortcutIds, disabledMessage);
        }
        getShortcutInfoSaverInstance(context).removeShortcuts(shortcutIds);
        Iterator<ShortcutInfoChangeListener> it = getShortcutInfoListeners(context).iterator();
        while (it.hasNext()) {
            it.next().onShortcutRemoved(shortcutIds);
        }
    }

    public static void enableShortcuts(final Context context, final List<ShortcutInfoCompat> shortcutInfoList) {
        Object systemService;
        if (Build.VERSION.SDK_INT >= 25) {
            ArrayList arrayList = new ArrayList(shortcutInfoList.size());
            Iterator<ShortcutInfoCompat> it = shortcutInfoList.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().mId);
            }
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m$1());
            Person$$ExternalSyntheticApiModelOutline0.m53m(systemService).enableShortcuts(arrayList);
        }
        getShortcutInfoSaverInstance(context).addShortcuts(shortcutInfoList);
        Iterator<ShortcutInfoChangeListener> it2 = getShortcutInfoListeners(context).iterator();
        while (it2.hasNext()) {
            it2.next().onShortcutAdded(shortcutInfoList);
        }
    }

    public static void removeDynamicShortcuts(Context context, List<String> shortcutIds) {
        Object systemService;
        if (Build.VERSION.SDK_INT >= 25) {
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m$1());
            Person$$ExternalSyntheticApiModelOutline0.m53m(systemService).removeDynamicShortcuts(shortcutIds);
        }
        getShortcutInfoSaverInstance(context).removeShortcuts(shortcutIds);
        Iterator<ShortcutInfoChangeListener> it = getShortcutInfoListeners(context).iterator();
        while (it.hasNext()) {
            it.next().onShortcutRemoved(shortcutIds);
        }
    }

    public static void removeAllDynamicShortcuts(Context context) {
        Object systemService;
        if (Build.VERSION.SDK_INT >= 25) {
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m$1());
            Person$$ExternalSyntheticApiModelOutline0.m53m(systemService).removeAllDynamicShortcuts();
        }
        getShortcutInfoSaverInstance(context).removeAllShortcuts();
        Iterator<ShortcutInfoChangeListener> it = getShortcutInfoListeners(context).iterator();
        while (it.hasNext()) {
            it.next().onAllShortcutsRemoved();
        }
    }

    public static void removeLongLivedShortcuts(final Context context, final List<String> shortcutIds) {
        Object systemService;
        if (Build.VERSION.SDK_INT < 30) {
            removeDynamicShortcuts(context, shortcutIds);
            return;
        }
        systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m$1());
        Person$$ExternalSyntheticApiModelOutline0.m53m(systemService).removeLongLivedShortcuts(shortcutIds);
        getShortcutInfoSaverInstance(context).removeShortcuts(shortcutIds);
        Iterator<ShortcutInfoChangeListener> it = getShortcutInfoListeners(context).iterator();
        while (it.hasNext()) {
            it.next().onShortcutRemoved(shortcutIds);
        }
    }

    public static boolean pushDynamicShortcut(final Context context, final ShortcutInfoCompat shortcut) {
        Object systemService;
        boolean isRateLimitingActive;
        List dynamicShortcuts;
        Object systemService2;
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(shortcut);
        int maxShortcutCountPerActivity = getMaxShortcutCountPerActivity(context);
        if (maxShortcutCountPerActivity == 0) {
            return false;
        }
        if (Build.VERSION.SDK_INT <= 29) {
            convertUriIconToBitmapIcon(context, shortcut);
        }
        if (Build.VERSION.SDK_INT >= 30) {
            systemService2 = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m$1());
            Person$$ExternalSyntheticApiModelOutline0.m53m(systemService2).pushDynamicShortcut(shortcut.toShortcutInfo());
        } else if (Build.VERSION.SDK_INT >= 25) {
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m$1());
            ShortcutManager m53m = Person$$ExternalSyntheticApiModelOutline0.m53m(systemService);
            isRateLimitingActive = m53m.isRateLimitingActive();
            if (isRateLimitingActive) {
                return false;
            }
            dynamicShortcuts = m53m.getDynamicShortcuts();
            if (dynamicShortcuts.size() >= maxShortcutCountPerActivity) {
                m53m.removeDynamicShortcuts(Arrays.asList(Api25Impl.getShortcutInfoWithLowestRank(dynamicShortcuts)));
            }
            m53m.addDynamicShortcuts(Arrays.asList(shortcut.toShortcutInfo()));
        }
        ShortcutInfoCompatSaver<?> shortcutInfoSaverInstance = getShortcutInfoSaverInstance(context);
        try {
            List<ShortcutInfoCompat> shortcuts = shortcutInfoSaverInstance.getShortcuts();
            if (shortcuts.size() >= maxShortcutCountPerActivity) {
                shortcutInfoSaverInstance.removeShortcuts(Arrays.asList(getShortcutInfoCompatWithLowestRank(shortcuts)));
            }
            shortcutInfoSaverInstance.addShortcuts(Arrays.asList(shortcut));
            Iterator<ShortcutInfoChangeListener> it = getShortcutInfoListeners(context).iterator();
            while (it.hasNext()) {
                it.next().onShortcutAdded(Collections.singletonList(shortcut));
            }
            reportShortcutUsed(context, shortcut.getId());
            return true;
        } catch (Exception unused) {
            Iterator<ShortcutInfoChangeListener> it2 = getShortcutInfoListeners(context).iterator();
            while (it2.hasNext()) {
                it2.next().onShortcutAdded(Collections.singletonList(shortcut));
            }
            reportShortcutUsed(context, shortcut.getId());
            return false;
        } catch (Throwable th) {
            Iterator<ShortcutInfoChangeListener> it3 = getShortcutInfoListeners(context).iterator();
            while (it3.hasNext()) {
                it3.next().onShortcutAdded(Collections.singletonList(shortcut));
            }
            reportShortcutUsed(context, shortcut.getId());
            throw th;
        }
    }

    private static String getShortcutInfoCompatWithLowestRank(final List<ShortcutInfoCompat> shortcuts) {
        int i = -1;
        String str = null;
        for (ShortcutInfoCompat shortcutInfoCompat : shortcuts) {
            if (shortcutInfoCompat.getRank() > i) {
                str = shortcutInfoCompat.getId();
                i = shortcutInfoCompat.getRank();
            }
        }
        return str;
    }

    static void setShortcutInfoCompatSaver(final ShortcutInfoCompatSaver<Void> saver) {
        sShortcutInfoCompatSaver = saver;
    }

    static void setShortcutInfoChangeListeners(final List<ShortcutInfoChangeListener> listeners) {
        sShortcutInfoChangeListeners = listeners;
    }

    static List<ShortcutInfoChangeListener> getShortcutInfoChangeListeners() {
        return sShortcutInfoChangeListeners;
    }

    private static int getIconDimensionInternal(final Context context, final boolean isHorizontal) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        int max = Math.max(1, activityManager == null || activityManager.isLowRamDevice() ? 48 : 96);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return (int) (max * ((isHorizontal ? displayMetrics.xdpi : displayMetrics.ydpi) / 160.0f));
    }

    private static ShortcutInfoCompatSaver<?> getShortcutInfoSaverInstance(Context context) {
        if (sShortcutInfoCompatSaver == null) {
            if (Build.VERSION.SDK_INT >= 23) {
                try {
                    sShortcutInfoCompatSaver = (ShortcutInfoCompatSaver) Class.forName("androidx.sharetarget.ShortcutInfoCompatSaverImpl", false, ShortcutManagerCompat.class.getClassLoader()).getMethod("getInstance", Context.class).invoke(null, context);
                } catch (Exception unused) {
                }
            }
            if (sShortcutInfoCompatSaver == null) {
                sShortcutInfoCompatSaver = new ShortcutInfoCompatSaver.NoopImpl();
            }
        }
        return sShortcutInfoCompatSaver;
    }

    private static List<ShortcutInfoChangeListener> getShortcutInfoListeners(Context context) {
        Bundle bundle;
        String string;
        if (sShortcutInfoChangeListeners == null) {
            ArrayList arrayList = new ArrayList();
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent(SHORTCUT_LISTENER_INTENT_FILTER_ACTION);
            intent.setPackage(context.getPackageName());
            Iterator<ResolveInfo> it = packageManager.queryIntentActivities(intent, 128).iterator();
            while (it.hasNext()) {
                ActivityInfo activityInfo = it.next().activityInfo;
                if (activityInfo != null && (bundle = activityInfo.metaData) != null && (string = bundle.getString(SHORTCUT_LISTENER_META_DATA_KEY)) != null) {
                    try {
                        arrayList.add((ShortcutInfoChangeListener) Class.forName(string, false, ShortcutManagerCompat.class.getClassLoader()).getMethod("getInstance", Context.class).invoke(null, context));
                    } catch (Exception unused) {
                    }
                }
            }
            if (sShortcutInfoChangeListeners == null) {
                sShortcutInfoChangeListeners = arrayList;
            }
        }
        return sShortcutInfoChangeListeners;
    }

    private static class Api25Impl {
        private Api25Impl() {
        }

        static String getShortcutInfoWithLowestRank(final List<ShortcutInfo> shortcuts) {
            int i = -1;
            String str = null;
            for (ShortcutInfo shortcutInfo : shortcuts) {
                if (shortcutInfo.getRank() > i) {
                    str = shortcutInfo.getId();
                    i = shortcutInfo.getRank();
                }
            }
            return str;
        }
    }
}
