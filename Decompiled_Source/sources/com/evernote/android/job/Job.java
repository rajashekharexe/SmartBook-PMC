package com.evernote.android.job;

import android.content.Context;
import android.os.Bundle;
import com.evernote.android.job.JobRequest;
import com.evernote.android.job.util.Device;
import com.evernote.android.job.util.JobCat;
import com.evernote.android.job.util.support.PersistableBundleCompat;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public abstract class Job {
    private static final JobCat CAT = new JobCat("Job");
    private Context mApplicationContext;
    private volatile boolean mCanceled;
    private WeakReference<Context> mContextReference;
    private volatile boolean mDeleted;
    private Params mParams;
    private volatile long mFinishedTimeStamp = -1;
    private Result mResult = Result.FAILURE;
    private final Object mMonitor = new Object();

    public enum Result {
        SUCCESS,
        FAILURE,
        RESCHEDULE
    }

    protected void onCancel() {
    }

    protected void onReschedule(int i) {
    }

    protected abstract Result onRunJob(Params params);

    final Result runJob() {
        try {
            if (!(this instanceof DailyJob) && !meetsRequirements(true)) {
                this.mResult = getParams().isPeriodic() ? Result.FAILURE : Result.RESCHEDULE;
                return this.mResult;
            }
            this.mResult = onRunJob(getParams());
            return this.mResult;
        } finally {
            this.mFinishedTimeStamp = System.currentTimeMillis();
        }
    }

    protected boolean meetsRequirements() {
        return meetsRequirements(false);
    }

    boolean meetsRequirements(boolean z) {
        if (z && !getParams().getRequest().requirementsEnforced()) {
            return true;
        }
        if (!isRequirementChargingMet()) {
            CAT.w("Job requires charging, reschedule");
            return false;
        }
        if (!isRequirementDeviceIdleMet()) {
            CAT.w("Job requires device to be idle, reschedule");
            return false;
        }
        if (!isRequirementNetworkTypeMet()) {
            CAT.w("Job requires network to be %s, but was %s", getParams().getRequest().requiredNetworkType(), Device.getNetworkType(getContext()));
            return false;
        }
        if (!isRequirementBatteryNotLowMet()) {
            CAT.w("Job requires battery not be low, reschedule");
            return false;
        }
        if (isRequirementStorageNotLowMet()) {
            return true;
        }
        CAT.w("Job requires storage not be low, reschedule");
        return false;
    }

    protected boolean isRequirementChargingMet() {
        return !getParams().getRequest().requiresCharging() || Device.getBatteryStatus(getContext()).isCharging();
    }

    protected boolean isRequirementDeviceIdleMet() {
        return !getParams().getRequest().requiresDeviceIdle() || Device.isIdle(getContext());
    }

    protected boolean isRequirementBatteryNotLowMet() {
        return (getParams().getRequest().requiresBatteryNotLow() && Device.getBatteryStatus(getContext()).isBatteryLow()) ? false : true;
    }

    protected boolean isRequirementStorageNotLowMet() {
        return (getParams().getRequest().requiresStorageNotLow() && Device.isStorageLow()) ? false : true;
    }

    protected boolean isRequirementNetworkTypeMet() {
        JobRequest.NetworkType requiredNetworkType = getParams().getRequest().requiredNetworkType();
        if (requiredNetworkType == JobRequest.NetworkType.ANY) {
            return true;
        }
        JobRequest.NetworkType networkType = Device.getNetworkType(getContext());
        int i = AnonymousClass1.$SwitchMap$com$evernote$android$job$JobRequest$NetworkType[requiredNetworkType.ordinal()];
        if (i == 1) {
            return networkType != JobRequest.NetworkType.ANY;
        }
        if (i == 2) {
            return networkType == JobRequest.NetworkType.NOT_ROAMING || networkType == JobRequest.NetworkType.UNMETERED || networkType == JobRequest.NetworkType.METERED;
        }
        if (i == 3) {
            return networkType == JobRequest.NetworkType.UNMETERED;
        }
        if (i == 4) {
            return networkType == JobRequest.NetworkType.CONNECTED || networkType == JobRequest.NetworkType.NOT_ROAMING;
        }
        throw new IllegalStateException("not implemented");
    }

    /* renamed from: com.evernote.android.job.Job$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$evernote$android$job$JobRequest$NetworkType;

        static {
            int[] iArr = new int[JobRequest.NetworkType.values().length];
            $SwitchMap$com$evernote$android$job$JobRequest$NetworkType = iArr;
            try {
                iArr[JobRequest.NetworkType.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$evernote$android$job$JobRequest$NetworkType[JobRequest.NetworkType.NOT_ROAMING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$evernote$android$job$JobRequest$NetworkType[JobRequest.NetworkType.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$evernote$android$job$JobRequest$NetworkType[JobRequest.NetworkType.METERED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    final Job setRequest(JobRequest jobRequest, Bundle bundle) {
        this.mParams = new Params(jobRequest, bundle, null);
        return this;
    }

    protected final Params getParams() {
        return this.mParams;
    }

    final Job setContext(Context context) {
        this.mContextReference = new WeakReference<>(context);
        this.mApplicationContext = context.getApplicationContext();
        return this;
    }

    protected final Context getContext() {
        Context context = this.mContextReference.get();
        return context == null ? this.mApplicationContext : context;
    }

    public final void cancel() {
        cancel(false);
    }

    final boolean cancel(boolean z) {
        synchronized (this.mMonitor) {
            if (isFinished()) {
                return false;
            }
            if (!this.mCanceled) {
                this.mCanceled = true;
                onCancel();
            }
            this.mDeleted = z | this.mDeleted;
            return true;
        }
    }

    protected final boolean isCanceled() {
        boolean z;
        synchronized (this.mMonitor) {
            z = this.mCanceled;
        }
        return z;
    }

    public final boolean isFinished() {
        boolean z;
        synchronized (this.mMonitor) {
            z = this.mFinishedTimeStamp > 0;
        }
        return z;
    }

    final long getFinishedTimeStamp() {
        long j;
        synchronized (this.mMonitor) {
            j = this.mFinishedTimeStamp;
        }
        return j;
    }

    final Result getResult() {
        return this.mResult;
    }

    final boolean isDeleted() {
        boolean z;
        synchronized (this.mMonitor) {
            z = this.mDeleted;
        }
        return z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.mParams.equals(((Job) obj).mParams);
    }

    public int hashCode() {
        return this.mParams.hashCode();
    }

    public String toString() {
        return "job{id=" + this.mParams.getId() + ", finished=" + isFinished() + ", result=" + this.mResult + ", canceled=" + this.mCanceled + ", periodic=" + this.mParams.isPeriodic() + ", class=" + getClass().getSimpleName() + ", tag=" + this.mParams.getTag() + '}';
    }

    public static final class Params {
        private PersistableBundleCompat mExtras;
        private final JobRequest mRequest;
        private Bundle mTransientExtras;

        /* synthetic */ Params(JobRequest jobRequest, Bundle bundle, AnonymousClass1 anonymousClass1) {
            this(jobRequest, bundle);
        }

        private Params(JobRequest jobRequest, Bundle bundle) {
            this.mRequest = jobRequest;
            this.mTransientExtras = bundle;
        }

        public int getId() {
            return this.mRequest.getJobId();
        }

        public String getTag() {
            return this.mRequest.getTag();
        }

        public boolean isPeriodic() {
            return this.mRequest.isPeriodic();
        }

        public boolean isExact() {
            return this.mRequest.isExact();
        }

        public long getStartMs() {
            return this.mRequest.getStartMs();
        }

        public long getEndMs() {
            return this.mRequest.getEndMs();
        }

        public long getIntervalMs() {
            return this.mRequest.getIntervalMs();
        }

        public long getFlexMs() {
            return this.mRequest.getFlexMs();
        }

        public long getScheduledAt() {
            return this.mRequest.getScheduledAt();
        }

        public long getBackoffMs() {
            return this.mRequest.getBackoffMs();
        }

        public JobRequest.BackoffPolicy getBackoffPolicy() {
            return this.mRequest.getBackoffPolicy();
        }

        public boolean requiresCharging() {
            return this.mRequest.requiresCharging();
        }

        public boolean requiresDeviceIdle() {
            return this.mRequest.requiresDeviceIdle();
        }

        public JobRequest.NetworkType requiredNetworkType() {
            return this.mRequest.requiredNetworkType();
        }

        public boolean requiresBatteryNotLow() {
            return this.mRequest.requiresBatteryNotLow();
        }

        public boolean requiresStorageNotLow() {
            return this.mRequest.requiresStorageNotLow();
        }

        public boolean requirementsEnforced() {
            return this.mRequest.requirementsEnforced();
        }

        public int getFailureCount() {
            return this.mRequest.getFailureCount();
        }

        public long getLastRun() {
            return this.mRequest.getLastRun();
        }

        public boolean isTransient() {
            return this.mRequest.isTransient();
        }

        public Bundle getTransientExtras() {
            return this.mTransientExtras;
        }

        public PersistableBundleCompat getExtras() {
            if (this.mExtras == null) {
                PersistableBundleCompat extras = this.mRequest.getExtras();
                this.mExtras = extras;
                if (extras == null) {
                    this.mExtras = new PersistableBundleCompat();
                }
            }
            return this.mExtras;
        }

        JobRequest getRequest() {
            return this.mRequest;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return this.mRequest.equals(((Params) obj).mRequest);
        }

        public int hashCode() {
            return this.mRequest.hashCode();
        }
    }
}
