package com.evernote.android.job.v26;

import android.app.job.JobInfo;
import android.content.Context;
import com.evernote.android.job.JobRequest;
import com.evernote.android.job.v24.JobProxy24;

/* loaded from: classes.dex */
public class JobProxy26 extends JobProxy24 {
    private static final String TAG = "JobProxy26";

    public JobProxy26(Context context) {
        super(context, TAG);
    }

    public JobProxy26(Context context, String str) {
        super(context, str);
    }

    @Override // com.evernote.android.job.v21.JobProxy21
    protected JobInfo.Builder setTransientBundle(JobRequest jobRequest, JobInfo.Builder builder) {
        JobInfo.Builder transientExtras;
        transientExtras = builder.setTransientExtras(jobRequest.getTransientExtras());
        return transientExtras;
    }

    @Override // com.evernote.android.job.v21.JobProxy21
    protected boolean isJobInfoScheduled(JobInfo jobInfo, JobRequest jobRequest) {
        return jobInfo != null && jobInfo.getId() == jobRequest.getJobId();
    }

    @Override // com.evernote.android.job.v21.JobProxy21
    protected JobInfo.Builder createBaseBuilder(JobRequest jobRequest, boolean z) {
        JobInfo.Builder requiresBatteryNotLow;
        JobInfo.Builder requiresStorageNotLow;
        requiresBatteryNotLow = super.createBaseBuilder(jobRequest, z).setRequiresBatteryNotLow(jobRequest.requiresBatteryNotLow());
        requiresStorageNotLow = requiresBatteryNotLow.setRequiresStorageNotLow(jobRequest.requiresStorageNotLow());
        return requiresStorageNotLow;
    }

    /* renamed from: com.evernote.android.job.v26.JobProxy26$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$evernote$android$job$JobRequest$NetworkType;

        static {
            int[] iArr = new int[JobRequest.NetworkType.values().length];
            $SwitchMap$com$evernote$android$job$JobRequest$NetworkType = iArr;
            try {
                iArr[JobRequest.NetworkType.METERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    @Override // com.evernote.android.job.v24.JobProxy24, com.evernote.android.job.v21.JobProxy21
    protected int convertNetworkType(JobRequest.NetworkType networkType) {
        if (AnonymousClass1.$SwitchMap$com$evernote$android$job$JobRequest$NetworkType[networkType.ordinal()] != 1) {
            return super.convertNetworkType(networkType);
        }
        return 4;
    }
}
