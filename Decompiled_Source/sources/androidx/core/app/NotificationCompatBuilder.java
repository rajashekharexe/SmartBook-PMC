package androidx.core.app;

import android.app.Notification;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.collection.ArraySet;
import androidx.core.app.NotificationCompat;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
class NotificationCompatBuilder implements NotificationBuilderWithBuilderAccessor {
    private RemoteViews mBigContentView;
    private final Notification.Builder mBuilder;
    private final NotificationCompat.Builder mBuilderCompat;
    private RemoteViews mContentView;
    private final Context mContext;
    private int mGroupAlertBehavior;
    private RemoteViews mHeadsUpContentView;
    private final List<Bundle> mActionExtrasList = new ArrayList();
    private final Bundle mExtras = new Bundle();

    NotificationCompatBuilder(NotificationCompat.Builder b) {
        List list;
        Notification.Builder badgeIconType;
        Notification.Builder settingsText;
        Notification.Builder shortcutId;
        Notification.Builder timeoutAfter;
        this.mBuilderCompat = b;
        this.mContext = b.mContext;
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationCompat$$ExternalSyntheticApiModelOutline0.m$4();
            this.mBuilder = NotificationCompat$$ExternalSyntheticApiModelOutline0.m(b.mContext, b.mChannelId);
        } else {
            this.mBuilder = new Notification.Builder(b.mContext);
        }
        Notification notification = b.mNotification;
        this.mBuilder.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, b.mTickerView).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(b.mContentTitle).setContentText(b.mContentText).setContentInfo(b.mContentInfo).setContentIntent(b.mContentIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(b.mFullScreenIntent, (notification.flags & 128) != 0).setLargeIcon(b.mLargeIcon).setNumber(b.mNumber).setProgress(b.mProgressMax, b.mProgress, b.mProgressIndeterminate);
        this.mBuilder.setSubText(b.mSubText).setUsesChronometer(b.mUseChronometer).setPriority(b.mPriority);
        Iterator<NotificationCompat.Action> it = b.mActions.iterator();
        while (it.hasNext()) {
            addAction(it.next());
        }
        if (b.mExtras != null) {
            this.mExtras.putAll(b.mExtras);
        }
        this.mContentView = b.mContentView;
        this.mBigContentView = b.mBigContentView;
        this.mBuilder.setShowWhen(b.mShowWhen);
        this.mBuilder.setLocalOnly(b.mLocalOnly).setGroup(b.mGroupKey).setGroupSummary(b.mGroupSummary).setSortKey(b.mSortKey);
        this.mGroupAlertBehavior = b.mGroupAlertBehavior;
        this.mBuilder.setCategory(b.mCategory).setColor(b.mColor).setVisibility(b.mVisibility).setPublicVersion(b.mPublicVersion).setSound(notification.sound, notification.audioAttributes);
        if (Build.VERSION.SDK_INT < 28) {
            list = combineLists(getPeople(b.mPersonList), b.mPeople);
        } else {
            list = b.mPeople;
        }
        if (list != null && !list.isEmpty()) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                this.mBuilder.addPerson((String) it2.next());
            }
        }
        this.mHeadsUpContentView = b.mHeadsUpContentView;
        if (b.mInvisibleActions.size() > 0) {
            Bundle bundle = b.getExtras().getBundle("android.car.EXTENSIONS");
            bundle = bundle == null ? new Bundle() : bundle;
            Bundle bundle2 = new Bundle(bundle);
            Bundle bundle3 = new Bundle();
            for (int i = 0; i < b.mInvisibleActions.size(); i++) {
                bundle3.putBundle(Integer.toString(i), NotificationCompatJellybean.getBundleForAction(b.mInvisibleActions.get(i)));
            }
            bundle.putBundle("invisible_actions", bundle3);
            bundle2.putBundle("invisible_actions", bundle3);
            b.getExtras().putBundle("android.car.EXTENSIONS", bundle);
            this.mExtras.putBundle("android.car.EXTENSIONS", bundle2);
        }
        if (Build.VERSION.SDK_INT >= 23 && b.mSmallIcon != null) {
            this.mBuilder.setSmallIcon(b.mSmallIcon);
        }
        if (Build.VERSION.SDK_INT >= 24) {
            this.mBuilder.setExtras(b.mExtras).setRemoteInputHistory(b.mRemoteInputHistory);
            if (b.mContentView != null) {
                this.mBuilder.setCustomContentView(b.mContentView);
            }
            if (b.mBigContentView != null) {
                this.mBuilder.setCustomBigContentView(b.mBigContentView);
            }
            if (b.mHeadsUpContentView != null) {
                this.mBuilder.setCustomHeadsUpContentView(b.mHeadsUpContentView);
            }
        }
        if (Build.VERSION.SDK_INT >= 26) {
            badgeIconType = this.mBuilder.setBadgeIconType(b.mBadgeIcon);
            settingsText = badgeIconType.setSettingsText(b.mSettingsText);
            shortcutId = settingsText.setShortcutId(b.mShortcutId);
            timeoutAfter = shortcutId.setTimeoutAfter(b.mTimeout);
            timeoutAfter.setGroupAlertBehavior(b.mGroupAlertBehavior);
            if (b.mColorizedSet) {
                this.mBuilder.setColorized(b.mColorized);
            }
            if (!TextUtils.isEmpty(b.mChannelId)) {
                this.mBuilder.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (Build.VERSION.SDK_INT >= 28) {
            Iterator<Person> it3 = b.mPersonList.iterator();
            while (it3.hasNext()) {
                this.mBuilder.addPerson(it3.next().toAndroidPerson());
            }
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.mBuilder.setAllowSystemGeneratedContextualActions(b.mAllowSystemGeneratedContextualActions);
            this.mBuilder.setBubbleMetadata(NotificationCompat.BubbleMetadata.toPlatform(b.mBubbleMetadata));
            if (b.mLocusId != null) {
                this.mBuilder.setLocusId(b.mLocusId.toLocusId());
            }
        }
        if (b.mSilent) {
            if (this.mBuilderCompat.mGroupSummary) {
                this.mGroupAlertBehavior = 2;
            } else {
                this.mGroupAlertBehavior = 1;
            }
            this.mBuilder.setVibrate(null);
            this.mBuilder.setSound(null);
            notification.defaults &= -2;
            notification.defaults &= -3;
            this.mBuilder.setDefaults(notification.defaults);
            if (Build.VERSION.SDK_INT >= 26) {
                if (TextUtils.isEmpty(this.mBuilderCompat.mGroupKey)) {
                    this.mBuilder.setGroup(NotificationCompat.GROUP_KEY_SILENT);
                }
                this.mBuilder.setGroupAlertBehavior(this.mGroupAlertBehavior);
            }
        }
    }

    private static List<String> combineLists(final List<String> first, final List<String> second) {
        if (first == null) {
            return second;
        }
        if (second == null) {
            return first;
        }
        ArraySet arraySet = new ArraySet(first.size() + second.size());
        arraySet.addAll(first);
        arraySet.addAll(second);
        return new ArrayList(arraySet);
    }

    private static List<String> getPeople(final List<Person> people) {
        if (people == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(people.size());
        Iterator<Person> it = people.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().resolveToLegacyUri());
        }
        return arrayList;
    }

    @Override // androidx.core.app.NotificationBuilderWithBuilderAccessor
    public Notification.Builder getBuilder() {
        return this.mBuilder;
    }

    Context getContext() {
        return this.mContext;
    }

    public Notification build() {
        Bundle extras;
        RemoteViews makeHeadsUpContentView;
        RemoteViews makeBigContentView;
        NotificationCompat.Style style = this.mBuilderCompat.mStyle;
        if (style != null) {
            style.apply(this);
        }
        RemoteViews makeContentView = style != null ? style.makeContentView(this) : null;
        Notification buildInternal = buildInternal();
        if (makeContentView != null) {
            buildInternal.contentView = makeContentView;
        } else if (this.mBuilderCompat.mContentView != null) {
            buildInternal.contentView = this.mBuilderCompat.mContentView;
        }
        if (style != null && (makeBigContentView = style.makeBigContentView(this)) != null) {
            buildInternal.bigContentView = makeBigContentView;
        }
        if (style != null && (makeHeadsUpContentView = this.mBuilderCompat.mStyle.makeHeadsUpContentView(this)) != null) {
            buildInternal.headsUpContentView = makeHeadsUpContentView;
        }
        if (style != null && (extras = NotificationCompat.getExtras(buildInternal)) != null) {
            style.addCompatExtras(extras);
        }
        return buildInternal;
    }

    private void addAction(NotificationCompat.Action action) {
        Notification.Action.Builder builder;
        Bundle bundle;
        IconCompat iconCompat = action.getIconCompat();
        if (Build.VERSION.SDK_INT >= 23) {
            NotificationCompat$$ExternalSyntheticApiModelOutline0.m$3();
            builder = NotificationCompat$$ExternalSyntheticApiModelOutline0.m(iconCompat != null ? iconCompat.toIcon() : null, action.getTitle(), action.getActionIntent());
        } else {
            builder = new Notification.Action.Builder(iconCompat != null ? iconCompat.getResId() : 0, action.getTitle(), action.getActionIntent());
        }
        if (action.getRemoteInputs() != null) {
            for (android.app.RemoteInput remoteInput : RemoteInput.fromCompat(action.getRemoteInputs())) {
                builder.addRemoteInput(remoteInput);
            }
        }
        if (action.getExtras() != null) {
            bundle = new Bundle(action.getExtras());
        } else {
            bundle = new Bundle();
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", action.getAllowGeneratedReplies());
        if (Build.VERSION.SDK_INT >= 24) {
            builder.setAllowGeneratedReplies(action.getAllowGeneratedReplies());
        }
        bundle.putInt("android.support.action.semanticAction", action.getSemanticAction());
        if (Build.VERSION.SDK_INT >= 28) {
            builder.setSemanticAction(action.getSemanticAction());
        }
        if (Build.VERSION.SDK_INT >= 29) {
            builder.setContextual(action.isContextual());
        }
        bundle.putBoolean("android.support.action.showsUserInterface", action.getShowsUserInterface());
        builder.addExtras(bundle);
        this.mBuilder.addAction(builder.build());
    }

    protected Notification buildInternal() {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.mBuilder.build();
        }
        if (Build.VERSION.SDK_INT >= 24) {
            Notification build = this.mBuilder.build();
            if (this.mGroupAlertBehavior != 0) {
                if (build.getGroup() != null && (build.flags & 512) != 0 && this.mGroupAlertBehavior == 2) {
                    removeSoundAndVibration(build);
                }
                if (build.getGroup() != null && (build.flags & 512) == 0 && this.mGroupAlertBehavior == 1) {
                    removeSoundAndVibration(build);
                }
            }
            return build;
        }
        this.mBuilder.setExtras(this.mExtras);
        Notification build2 = this.mBuilder.build();
        RemoteViews remoteViews = this.mContentView;
        if (remoteViews != null) {
            build2.contentView = remoteViews;
        }
        RemoteViews remoteViews2 = this.mBigContentView;
        if (remoteViews2 != null) {
            build2.bigContentView = remoteViews2;
        }
        RemoteViews remoteViews3 = this.mHeadsUpContentView;
        if (remoteViews3 != null) {
            build2.headsUpContentView = remoteViews3;
        }
        if (this.mGroupAlertBehavior != 0) {
            if (build2.getGroup() != null && (build2.flags & 512) != 0 && this.mGroupAlertBehavior == 2) {
                removeSoundAndVibration(build2);
            }
            if (build2.getGroup() != null && (build2.flags & 512) == 0 && this.mGroupAlertBehavior == 1) {
                removeSoundAndVibration(build2);
            }
        }
        return build2;
    }

    private void removeSoundAndVibration(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -2;
        notification.defaults &= -3;
    }
}
