package com.evernote.android.job;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.text.TextUtils;
import com.evernote.android.job.util.JobCat;
import com.evernote.android.job.util.JobPreconditions;
import com.evernote.android.job.util.support.PersistableBundleCompat;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes.dex */
public final class JobRequest {
    public static final long DEFAULT_BACKOFF_MS = 30000;
    static final long START_NOW = 1;
    private static final long WINDOW_THRESHOLD_MAX = 6148914691236517204L;
    private static final long WINDOW_THRESHOLD_WARNING = 3074457345618258602L;
    private final Builder mBuilder;
    private int mFailureCount;
    private boolean mFlexSupport;
    private long mLastRun;
    private long mScheduledAt;
    private boolean mStarted;
    public static final BackoffPolicy DEFAULT_BACKOFF_POLICY = BackoffPolicy.EXPONENTIAL;
    public static final NetworkType DEFAULT_NETWORK_TYPE = NetworkType.ANY;
    public static final JobScheduledCallback DEFAULT_JOB_SCHEDULED_CALLBACK = new JobScheduledCallback() { // from class: com.evernote.android.job.JobRequest.1
        @Override // com.evernote.android.job.JobRequest.JobScheduledCallback
        public void onJobScheduled(int i, String str, Exception exc) {
            if (exc != null) {
                JobRequest.CAT.e(exc, "The job with tag %s couldn't be scheduled", str);
            }
        }
    };
    public static final long MIN_INTERVAL = TimeUnit.MINUTES.toMillis(15);
    public static final long MIN_FLEX = TimeUnit.MINUTES.toMillis(5);
    private static final JobCat CAT = new JobCat("JobRequest");

    public enum BackoffPolicy {
        LINEAR,
        EXPONENTIAL
    }

    public interface JobScheduledCallback {
        public static final int JOB_ID_ERROR = -1;

        void onJobScheduled(int i, String str, Exception exc);
    }

    public enum NetworkType {
        ANY,
        CONNECTED,
        UNMETERED,
        NOT_ROAMING,
        METERED
    }

    static long getMinInterval() {
        return JobConfig.isAllowSmallerIntervalsForMarshmallow() ? TimeUnit.MINUTES.toMillis(1L) : MIN_INTERVAL;
    }

    static long getMinFlex() {
        return JobConfig.isAllowSmallerIntervalsForMarshmallow() ? TimeUnit.SECONDS.toMillis(30L) : MIN_FLEX;
    }

    private static Context context() {
        return JobManager.instance().getContext();
    }

    private JobRequest(Builder builder) {
        this.mBuilder = builder;
    }

    public int getJobId() {
        return this.mBuilder.mId;
    }

    public String getTag() {
        return this.mBuilder.mTag;
    }

    public long getStartMs() {
        return this.mBuilder.mStartMs;
    }

    public long getEndMs() {
        return this.mBuilder.mEndMs;
    }

    public BackoffPolicy getBackoffPolicy() {
        return this.mBuilder.mBackoffPolicy;
    }

    public long getBackoffMs() {
        return this.mBuilder.mBackoffMs;
    }

    public boolean isPeriodic() {
        return getIntervalMs() > 0;
    }

    public long getIntervalMs() {
        return this.mBuilder.mIntervalMs;
    }

    public long getFlexMs() {
        return this.mBuilder.mFlexMs;
    }

    public boolean requirementsEnforced() {
        return this.mBuilder.mRequirementsEnforced;
    }

    public boolean requiresCharging() {
        return this.mBuilder.mRequiresCharging;
    }

    public boolean requiresDeviceIdle() {
        return this.mBuilder.mRequiresDeviceIdle;
    }

    public boolean requiresBatteryNotLow() {
        return this.mBuilder.mRequiresBatteryNotLow;
    }

    public boolean requiresStorageNotLow() {
        return this.mBuilder.mRequiresStorageNotLow;
    }

    public NetworkType requiredNetworkType() {
        return this.mBuilder.mNetworkType;
    }

    public boolean hasRequirements() {
        return requiresCharging() || requiresDeviceIdle() || requiresBatteryNotLow() || requiresStorageNotLow() || requiredNetworkType() != DEFAULT_NETWORK_TYPE;
    }

    public PersistableBundleCompat getExtras() {
        if (this.mBuilder.mExtras == null && !TextUtils.isEmpty(this.mBuilder.mExtrasXml)) {
            Builder builder = this.mBuilder;
            builder.mExtras = PersistableBundleCompat.fromXml(builder.mExtrasXml);
        }
        return this.mBuilder.mExtras;
    }

    public boolean isUpdateCurrent() {
        return this.mBuilder.mUpdateCurrent;
    }

    public boolean isExact() {
        return this.mBuilder.mExact;
    }

    long getBackoffOffset() {
        long j = 0;
        if (isPeriodic()) {
            return 0L;
        }
        int i = AnonymousClass3.$SwitchMap$com$evernote$android$job$JobRequest$BackoffPolicy[getBackoffPolicy().ordinal()];
        if (i == 1) {
            j = this.mFailureCount * getBackoffMs();
        } else if (i == 2) {
            if (this.mFailureCount != 0) {
                j = (long) (getBackoffMs() * Math.pow(2.0d, this.mFailureCount - 1));
            }
        } else {
            throw new IllegalStateException("not implemented");
        }
        return Math.min(j, TimeUnit.HOURS.toMillis(5L));
    }

    /* renamed from: com.evernote.android.job.JobRequest$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$evernote$android$job$JobRequest$BackoffPolicy;

        static {
            int[] iArr = new int[BackoffPolicy.values().length];
            $SwitchMap$com$evernote$android$job$JobRequest$BackoffPolicy = iArr;
            try {
                iArr[BackoffPolicy.LINEAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$evernote$android$job$JobRequest$BackoffPolicy[BackoffPolicy.EXPONENTIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    JobApi getJobApi() {
        return this.mBuilder.mExact ? JobApi.V_14 : JobApi.getDefault(context());
    }

    void setScheduledAt(long j) {
        this.mScheduledAt = j;
    }

    public long getScheduledAt() {
        return this.mScheduledAt;
    }

    public int getFailureCount() {
        return this.mFailureCount;
    }

    boolean isStarted() {
        return this.mStarted;
    }

    boolean isFlexSupport() {
        return this.mFlexSupport;
    }

    void setFlexSupport(boolean z) {
        this.mFlexSupport = z;
    }

    public long getLastRun() {
        return this.mLastRun;
    }

    public boolean isTransient() {
        return this.mBuilder.mTransient;
    }

    public Bundle getTransientExtras() {
        return this.mBuilder.mTransientExtras;
    }

    public int schedule() {
        JobManager.instance().schedule(this);
        return getJobId();
    }

    public void scheduleAsync() {
        scheduleAsync(DEFAULT_JOB_SCHEDULED_CALLBACK);
    }

    public void scheduleAsync(final JobScheduledCallback jobScheduledCallback) {
        JobPreconditions.checkNotNull(jobScheduledCallback);
        JobConfig.getExecutorService().execute(new Runnable() { // from class: com.evernote.android.job.JobRequest.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    jobScheduledCallback.onJobScheduled(JobRequest.this.schedule(), JobRequest.this.getTag(), null);
                } catch (Exception e) {
                    jobScheduledCallback.onJobScheduled(-1, JobRequest.this.getTag(), e);
                }
            }
        });
    }

    public Builder cancelAndEdit() {
        long j = this.mScheduledAt;
        JobManager.instance().cancel(getJobId());
        Builder builder = new Builder(this.mBuilder);
        this.mStarted = false;
        if (!isPeriodic()) {
            long currentTimeMillis = JobConfig.getClock().currentTimeMillis() - j;
            builder.setExecutionWindow(Math.max(1L, getStartMs() - currentTimeMillis), Math.max(1L, getEndMs() - currentTimeMillis));
        }
        return builder;
    }

    Builder createBuilder() {
        return new Builder(this.mBuilder, true);
    }

    JobRequest reschedule(boolean z, boolean z2) {
        JobRequest build = new Builder(this.mBuilder, z2).build();
        if (z) {
            build.mFailureCount = this.mFailureCount + 1;
        }
        try {
            build.schedule();
        } catch (Exception e) {
            CAT.e(e);
        }
        return build;
    }

    void updateStats(boolean z, boolean z2) {
        ContentValues contentValues = new ContentValues();
        if (z) {
            int i = this.mFailureCount + 1;
            this.mFailureCount = i;
            contentValues.put(JobStorage.COLUMN_NUM_FAILURES, Integer.valueOf(i));
        }
        if (z2) {
            long currentTimeMillis = JobConfig.getClock().currentTimeMillis();
            this.mLastRun = currentTimeMillis;
            contentValues.put(JobStorage.COLUMN_LAST_RUN, Long.valueOf(currentTimeMillis));
        }
        JobManager.instance().getJobStorage().update(this, contentValues);
    }

    void setStarted(boolean z) {
        this.mStarted = z;
        ContentValues contentValues = new ContentValues();
        contentValues.put(JobStorage.COLUMN_STARTED, Boolean.valueOf(this.mStarted));
        JobManager.instance().getJobStorage().update(this, contentValues);
    }

    ContentValues toContentValues() {
        ContentValues contentValues = new ContentValues();
        this.mBuilder.fillContentValues(contentValues);
        contentValues.put(JobStorage.COLUMN_NUM_FAILURES, Integer.valueOf(this.mFailureCount));
        contentValues.put(JobStorage.COLUMN_SCHEDULED_AT, Long.valueOf(this.mScheduledAt));
        contentValues.put(JobStorage.COLUMN_STARTED, Boolean.valueOf(this.mStarted));
        contentValues.put(JobStorage.COLUMN_FLEX_SUPPORT, Boolean.valueOf(this.mFlexSupport));
        contentValues.put(JobStorage.COLUMN_LAST_RUN, Long.valueOf(this.mLastRun));
        return contentValues;
    }

    static JobRequest fromCursor(Cursor cursor) {
        JobRequest build = new Builder(cursor).build();
        build.mFailureCount = cursor.getInt(cursor.getColumnIndex(JobStorage.COLUMN_NUM_FAILURES));
        build.mScheduledAt = cursor.getLong(cursor.getColumnIndex(JobStorage.COLUMN_SCHEDULED_AT));
        build.mStarted = cursor.getInt(cursor.getColumnIndex(JobStorage.COLUMN_STARTED)) > 0;
        build.mFlexSupport = cursor.getInt(cursor.getColumnIndex(JobStorage.COLUMN_FLEX_SUPPORT)) > 0;
        build.mLastRun = cursor.getLong(cursor.getColumnIndex(JobStorage.COLUMN_LAST_RUN));
        JobPreconditions.checkArgumentNonnegative(build.mFailureCount, "failure count can't be negative");
        JobPreconditions.checkArgumentNonnegative(build.mScheduledAt, "scheduled at can't be negative");
        return build;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.mBuilder.equals(((JobRequest) obj).mBuilder);
    }

    public int hashCode() {
        return this.mBuilder.hashCode();
    }

    public String toString() {
        return "request{id=" + getJobId() + ", tag=" + getTag() + ", transient=" + isTransient() + '}';
    }

    public static final class Builder {
        private static final int CREATE_ID = -8765;
        private long mBackoffMs;
        private BackoffPolicy mBackoffPolicy;
        private long mEndMs;
        private boolean mExact;
        private PersistableBundleCompat mExtras;
        private String mExtrasXml;
        private long mFlexMs;
        private int mId;
        private long mIntervalMs;
        private NetworkType mNetworkType;
        private boolean mRequirementsEnforced;
        private boolean mRequiresBatteryNotLow;
        private boolean mRequiresCharging;
        private boolean mRequiresDeviceIdle;
        private boolean mRequiresStorageNotLow;
        private long mStartMs;
        final String mTag;
        private boolean mTransient;
        private Bundle mTransientExtras;
        private boolean mUpdateCurrent;

        public Builder(String str) {
            this.mTransientExtras = Bundle.EMPTY;
            this.mTag = (String) JobPreconditions.checkNotEmpty(str);
            this.mId = CREATE_ID;
            this.mStartMs = -1L;
            this.mEndMs = -1L;
            this.mBackoffMs = 30000L;
            this.mBackoffPolicy = JobRequest.DEFAULT_BACKOFF_POLICY;
            this.mNetworkType = JobRequest.DEFAULT_NETWORK_TYPE;
        }

        private Builder(Cursor cursor) {
            this.mTransientExtras = Bundle.EMPTY;
            this.mId = cursor.getInt(cursor.getColumnIndex(JobStorage.COLUMN_ID));
            this.mTag = cursor.getString(cursor.getColumnIndex(JobStorage.COLUMN_TAG));
            this.mStartMs = cursor.getLong(cursor.getColumnIndex(JobStorage.COLUMN_START_MS));
            this.mEndMs = cursor.getLong(cursor.getColumnIndex(JobStorage.COLUMN_END_MS));
            this.mBackoffMs = cursor.getLong(cursor.getColumnIndex(JobStorage.COLUMN_BACKOFF_MS));
            try {
                this.mBackoffPolicy = BackoffPolicy.valueOf(cursor.getString(cursor.getColumnIndex(JobStorage.COLUMN_BACKOFF_POLICY)));
            } catch (Throwable th) {
                JobRequest.CAT.e(th);
                this.mBackoffPolicy = JobRequest.DEFAULT_BACKOFF_POLICY;
            }
            this.mIntervalMs = cursor.getLong(cursor.getColumnIndex(JobStorage.COLUMN_INTERVAL_MS));
            this.mFlexMs = cursor.getLong(cursor.getColumnIndex(JobStorage.COLUMN_FLEX_MS));
            this.mRequirementsEnforced = cursor.getInt(cursor.getColumnIndex(JobStorage.COLUMN_REQUIREMENTS_ENFORCED)) > 0;
            this.mRequiresCharging = cursor.getInt(cursor.getColumnIndex(JobStorage.COLUMN_REQUIRES_CHARGING)) > 0;
            this.mRequiresDeviceIdle = cursor.getInt(cursor.getColumnIndex(JobStorage.COLUMN_REQUIRES_DEVICE_IDLE)) > 0;
            this.mRequiresBatteryNotLow = cursor.getInt(cursor.getColumnIndex(JobStorage.COLUMN_REQUIRES_BATTERY_NOT_LOW)) > 0;
            this.mRequiresStorageNotLow = cursor.getInt(cursor.getColumnIndex(JobStorage.COLUMN_REQUIRES_STORAGE_NOT_LOW)) > 0;
            this.mExact = cursor.getInt(cursor.getColumnIndex(JobStorage.COLUMN_EXACT)) > 0;
            try {
                this.mNetworkType = NetworkType.valueOf(cursor.getString(cursor.getColumnIndex(JobStorage.COLUMN_NETWORK_TYPE)));
            } catch (Throwable th2) {
                JobRequest.CAT.e(th2);
                this.mNetworkType = JobRequest.DEFAULT_NETWORK_TYPE;
            }
            this.mExtrasXml = cursor.getString(cursor.getColumnIndex(JobStorage.COLUMN_EXTRAS));
            this.mTransient = cursor.getInt(cursor.getColumnIndex(JobStorage.COLUMN_TRANSIENT)) > 0;
        }

        private Builder(Builder builder) {
            this(builder, false);
        }

        private Builder(Builder builder, boolean z) {
            this.mTransientExtras = Bundle.EMPTY;
            this.mId = z ? CREATE_ID : builder.mId;
            this.mTag = builder.mTag;
            this.mStartMs = builder.mStartMs;
            this.mEndMs = builder.mEndMs;
            this.mBackoffMs = builder.mBackoffMs;
            this.mBackoffPolicy = builder.mBackoffPolicy;
            this.mIntervalMs = builder.mIntervalMs;
            this.mFlexMs = builder.mFlexMs;
            this.mRequirementsEnforced = builder.mRequirementsEnforced;
            this.mRequiresCharging = builder.mRequiresCharging;
            this.mRequiresDeviceIdle = builder.mRequiresDeviceIdle;
            this.mRequiresBatteryNotLow = builder.mRequiresBatteryNotLow;
            this.mRequiresStorageNotLow = builder.mRequiresStorageNotLow;
            this.mExact = builder.mExact;
            this.mNetworkType = builder.mNetworkType;
            this.mExtras = builder.mExtras;
            this.mExtrasXml = builder.mExtrasXml;
            this.mUpdateCurrent = builder.mUpdateCurrent;
            this.mTransient = builder.mTransient;
            this.mTransientExtras = builder.mTransientExtras;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void fillContentValues(ContentValues contentValues) {
            contentValues.put(JobStorage.COLUMN_ID, Integer.valueOf(this.mId));
            contentValues.put(JobStorage.COLUMN_TAG, this.mTag);
            contentValues.put(JobStorage.COLUMN_START_MS, Long.valueOf(this.mStartMs));
            contentValues.put(JobStorage.COLUMN_END_MS, Long.valueOf(this.mEndMs));
            contentValues.put(JobStorage.COLUMN_BACKOFF_MS, Long.valueOf(this.mBackoffMs));
            contentValues.put(JobStorage.COLUMN_BACKOFF_POLICY, this.mBackoffPolicy.toString());
            contentValues.put(JobStorage.COLUMN_INTERVAL_MS, Long.valueOf(this.mIntervalMs));
            contentValues.put(JobStorage.COLUMN_FLEX_MS, Long.valueOf(this.mFlexMs));
            contentValues.put(JobStorage.COLUMN_REQUIREMENTS_ENFORCED, Boolean.valueOf(this.mRequirementsEnforced));
            contentValues.put(JobStorage.COLUMN_REQUIRES_CHARGING, Boolean.valueOf(this.mRequiresCharging));
            contentValues.put(JobStorage.COLUMN_REQUIRES_DEVICE_IDLE, Boolean.valueOf(this.mRequiresDeviceIdle));
            contentValues.put(JobStorage.COLUMN_REQUIRES_BATTERY_NOT_LOW, Boolean.valueOf(this.mRequiresBatteryNotLow));
            contentValues.put(JobStorage.COLUMN_REQUIRES_STORAGE_NOT_LOW, Boolean.valueOf(this.mRequiresStorageNotLow));
            contentValues.put(JobStorage.COLUMN_EXACT, Boolean.valueOf(this.mExact));
            contentValues.put(JobStorage.COLUMN_NETWORK_TYPE, this.mNetworkType.toString());
            PersistableBundleCompat persistableBundleCompat = this.mExtras;
            if (persistableBundleCompat != null) {
                contentValues.put(JobStorage.COLUMN_EXTRAS, persistableBundleCompat.saveToXml());
            } else if (!TextUtils.isEmpty(this.mExtrasXml)) {
                contentValues.put(JobStorage.COLUMN_EXTRAS, this.mExtrasXml);
            }
            contentValues.put(JobStorage.COLUMN_TRANSIENT, Boolean.valueOf(this.mTransient));
        }

        public Builder setExecutionWindow(long j, long j2) {
            this.mStartMs = JobPreconditions.checkArgumentPositive(j, "startInMs must be greater than 0");
            this.mEndMs = JobPreconditions.checkArgumentInRange(j2, j, LongCompanionObject.MAX_VALUE, "endInMs");
            if (this.mStartMs > JobRequest.WINDOW_THRESHOLD_MAX) {
                JobRequest.CAT.i("startInMs reduced from %d days to %d days", Long.valueOf(TimeUnit.MILLISECONDS.toDays(this.mStartMs)), Long.valueOf(TimeUnit.MILLISECONDS.toDays(JobRequest.WINDOW_THRESHOLD_MAX)));
                this.mStartMs = JobRequest.WINDOW_THRESHOLD_MAX;
            }
            if (this.mEndMs > JobRequest.WINDOW_THRESHOLD_MAX) {
                JobRequest.CAT.i("endInMs reduced from %d days to %d days", Long.valueOf(TimeUnit.MILLISECONDS.toDays(this.mEndMs)), Long.valueOf(TimeUnit.MILLISECONDS.toDays(JobRequest.WINDOW_THRESHOLD_MAX)));
                this.mEndMs = JobRequest.WINDOW_THRESHOLD_MAX;
            }
            return this;
        }

        public Builder setExtras(PersistableBundleCompat persistableBundleCompat) {
            if (persistableBundleCompat == null) {
                this.mExtras = null;
                this.mExtrasXml = null;
            } else {
                this.mExtras = new PersistableBundleCompat(persistableBundleCompat);
            }
            return this;
        }

        public Builder addExtras(PersistableBundleCompat persistableBundleCompat) {
            PersistableBundleCompat persistableBundleCompat2 = this.mExtras;
            if (persistableBundleCompat2 == null) {
                this.mExtras = persistableBundleCompat;
            } else {
                persistableBundleCompat2.putAll(persistableBundleCompat);
            }
            this.mExtrasXml = null;
            return this;
        }

        public Builder setRequirementsEnforced(boolean z) {
            this.mRequirementsEnforced = z;
            return this;
        }

        public Builder setRequiredNetworkType(NetworkType networkType) {
            this.mNetworkType = networkType;
            return this;
        }

        public Builder setRequiresCharging(boolean z) {
            this.mRequiresCharging = z;
            return this;
        }

        public Builder setRequiresDeviceIdle(boolean z) {
            this.mRequiresDeviceIdle = z;
            return this;
        }

        public Builder setRequiresBatteryNotLow(boolean z) {
            this.mRequiresBatteryNotLow = z;
            return this;
        }

        public Builder setRequiresStorageNotLow(boolean z) {
            this.mRequiresStorageNotLow = z;
            return this;
        }

        public Builder setExact(long j) {
            this.mExact = true;
            if (j > JobRequest.WINDOW_THRESHOLD_MAX) {
                JobRequest.CAT.i("exactInMs clamped from %d days to %d days", Long.valueOf(TimeUnit.MILLISECONDS.toDays(j)), Long.valueOf(TimeUnit.MILLISECONDS.toDays(JobRequest.WINDOW_THRESHOLD_MAX)));
                j = 6148914691236517204L;
            }
            return setExecutionWindow(j, j);
        }

        public Builder startNow() {
            return setExact(1L);
        }

        public Builder setPeriodic(long j) {
            return setPeriodic(j, j);
        }

        public Builder setPeriodic(long j, long j2) {
            this.mIntervalMs = JobPreconditions.checkArgumentInRange(j, JobRequest.getMinInterval(), LongCompanionObject.MAX_VALUE, JobStorage.COLUMN_INTERVAL_MS);
            this.mFlexMs = JobPreconditions.checkArgumentInRange(j2, JobRequest.getMinFlex(), this.mIntervalMs, JobStorage.COLUMN_FLEX_MS);
            return this;
        }

        public Builder setBackoffCriteria(long j, BackoffPolicy backoffPolicy) {
            this.mBackoffMs = JobPreconditions.checkArgumentPositive(j, "backoffMs must be > 0");
            this.mBackoffPolicy = (BackoffPolicy) JobPreconditions.checkNotNull(backoffPolicy);
            return this;
        }

        public Builder setUpdateCurrent(boolean z) {
            this.mUpdateCurrent = z;
            return this;
        }

        public Builder setTransientExtras(Bundle bundle) {
            boolean z = (bundle == null || bundle.isEmpty()) ? false : true;
            this.mTransient = z;
            this.mTransientExtras = z ? new Bundle(bundle) : Bundle.EMPTY;
            return this;
        }

        public JobRequest build() {
            JobPreconditions.checkNotEmpty(this.mTag);
            JobPreconditions.checkArgumentPositive(this.mBackoffMs, "backoffMs must be > 0");
            JobPreconditions.checkNotNull(this.mBackoffPolicy);
            JobPreconditions.checkNotNull(this.mNetworkType);
            long j = this.mIntervalMs;
            if (j > 0) {
                JobPreconditions.checkArgumentInRange(j, JobRequest.getMinInterval(), LongCompanionObject.MAX_VALUE, JobStorage.COLUMN_INTERVAL_MS);
                JobPreconditions.checkArgumentInRange(this.mFlexMs, JobRequest.getMinFlex(), this.mIntervalMs, JobStorage.COLUMN_FLEX_MS);
                if (this.mIntervalMs < JobRequest.MIN_INTERVAL || this.mFlexMs < JobRequest.MIN_FLEX) {
                    JobRequest.CAT.w("AllowSmallerIntervals enabled, this will crash on Android N and later, interval %d (minimum is %d), flex %d (minimum is %d)", Long.valueOf(this.mIntervalMs), Long.valueOf(JobRequest.MIN_INTERVAL), Long.valueOf(this.mFlexMs), Long.valueOf(JobRequest.MIN_FLEX));
                }
            }
            boolean z = this.mExact;
            if (z && this.mIntervalMs > 0) {
                throw new IllegalArgumentException("Can't call setExact() on a periodic job.");
            }
            if (z && this.mStartMs != this.mEndMs) {
                throw new IllegalArgumentException("Can't call setExecutionWindow() for an exact job.");
            }
            if (z && (this.mRequirementsEnforced || this.mRequiresDeviceIdle || this.mRequiresCharging || !JobRequest.DEFAULT_NETWORK_TYPE.equals(this.mNetworkType) || this.mRequiresBatteryNotLow || this.mRequiresStorageNotLow)) {
                throw new IllegalArgumentException("Can't require any condition for an exact job.");
            }
            long j2 = this.mIntervalMs;
            if (j2 <= 0 && (this.mStartMs == -1 || this.mEndMs == -1)) {
                throw new IllegalArgumentException("You're trying to build a job with no constraints, this is not allowed.");
            }
            if (j2 > 0 && (this.mStartMs != -1 || this.mEndMs != -1)) {
                throw new IllegalArgumentException("Can't call setExecutionWindow() on a periodic job.");
            }
            if (j2 > 0 && (this.mBackoffMs != 30000 || !JobRequest.DEFAULT_BACKOFF_POLICY.equals(this.mBackoffPolicy))) {
                throw new IllegalArgumentException("A periodic job will not respect any back-off policy, so calling setBackoffCriteria() with setPeriodic() is an error.");
            }
            if (this.mIntervalMs <= 0 && (this.mStartMs > JobRequest.WINDOW_THRESHOLD_WARNING || this.mEndMs > JobRequest.WINDOW_THRESHOLD_WARNING)) {
                JobRequest.CAT.w("Attention: your execution window is too large. This could result in undesired behavior, see https://github.com/evernote/android-job/wiki/FAQ");
            }
            if (this.mIntervalMs <= 0 && this.mStartMs > TimeUnit.DAYS.toMillis(365L)) {
                JobRequest.CAT.w("Warning: job with tag %s scheduled over a year in the future", this.mTag);
            }
            int i = this.mId;
            if (i != CREATE_ID) {
                JobPreconditions.checkArgumentNonnegative(i, "id can't be negative");
            }
            Builder builder = new Builder(this);
            if (this.mId == CREATE_ID) {
                int nextJobId = JobManager.instance().getJobStorage().nextJobId();
                builder.mId = nextJobId;
                JobPreconditions.checkArgumentNonnegative(nextJobId, "id can't be negative");
            }
            return new JobRequest(builder);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.mId == ((Builder) obj).mId;
        }

        public int hashCode() {
            return this.mId;
        }
    }
}
