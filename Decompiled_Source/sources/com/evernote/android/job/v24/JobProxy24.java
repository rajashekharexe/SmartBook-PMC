package com.evernote.android.job.v24;

import android.app.job.JobInfo;
import android.content.Context;
import com.evernote.android.job.JobRequest;
import com.evernote.android.job.v21.JobProxy21;

/* loaded from: classes.dex */
public class JobProxy24 extends JobProxy21 {
    private static final String TAG = "JobProxy24";

    public JobProxy24(Context context) {
        this(context, TAG);
    }

    public JobProxy24(Context context, String str) {
        super(context, str);
    }

    @Override // com.evernote.android.job.v21.JobProxy21, com.evernote.android.job.JobProxy
    public void plantPeriodicFlexSupport(JobRequest jobRequest) {
        this.mCat.w("plantPeriodicFlexSupport called although flex is supported");
        super.plantPeriodicFlexSupport(jobRequest);
    }

    @Override // com.evernote.android.job.v21.JobProxy21, com.evernote.android.job.JobProxy
    public boolean isPlatformJobScheduled(JobRequest jobRequest) {
        JobInfo pendingJob;
        try {
            pendingJob = getJobScheduler().getPendingJob(jobRequest.getJobId());
            return isJobInfoScheduled(pendingJob, jobRequest);
        } catch (Exception e) {
            this.mCat.e(e);
            return false;
        }
    }

    @Override // com.evernote.android.job.v21.JobProxy21
    protected JobInfo.Builder createBuilderPeriodic(JobInfo.Builder builder, long j, long j2) {
        JobInfo.Builder periodic;
        periodic = builder.setPeriodic(j, j2);
        return periodic;
    }

    /* renamed from: com.evernote.android.job.v24.JobProxy24$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$evernote$android$job$JobRequest$NetworkType;

        static {
            int[] iArr = new int[JobRequest.NetworkType.values().length];
            $SwitchMap$com$evernote$android$job$JobRequest$NetworkType = iArr;
            try {
                iArr[JobRequest.NetworkType.NOT_ROAMING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    @Override // com.evernote.android.job.v21.JobProxy21
    protected int convertNetworkType(JobRequest.NetworkType networkType) {
        if (AnonymousClass1.$SwitchMap$com$evernote$android$job$JobRequest$NetworkType[networkType.ordinal()] != 1) {
            return super.convertNetworkType(networkType);
        }
        return 3;
    }
}
