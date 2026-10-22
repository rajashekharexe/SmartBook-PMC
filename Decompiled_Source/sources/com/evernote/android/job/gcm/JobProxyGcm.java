package com.evernote.android.job.gcm;

import android.content.Context;
import com.evernote.android.job.JobProxy;
import com.evernote.android.job.JobProxyIllegalStateException;
import com.evernote.android.job.JobRequest;
import com.evernote.android.job.util.JobCat;
import com.evernote.android.job.util.JobUtil;
import com.google.android.gms.gcm.GcmNetworkManager;
import com.google.android.gms.gcm.OneoffTask;
import com.google.android.gms.gcm.PeriodicTask;
import com.google.android.gms.gcm.Task;

/* loaded from: classes.dex */
public class JobProxyGcm implements JobProxy {
    private static final JobCat CAT = new JobCat("JobProxyGcm");
    private final Context mContext;
    private final GcmNetworkManager mGcmNetworkManager;

    @Override // com.evernote.android.job.JobProxy
    public boolean isPlatformJobScheduled(JobRequest jobRequest) {
        return true;
    }

    public JobProxyGcm(Context context) {
        this.mContext = context;
        this.mGcmNetworkManager = GcmNetworkManager.getInstance(context);
    }

    @Override // com.evernote.android.job.JobProxy
    public void plantOneOff(JobRequest jobRequest) {
        long startMs = JobProxy.Common.getStartMs(jobRequest);
        long j = startMs / 1000;
        long endMs = JobProxy.Common.getEndMs(jobRequest);
        scheduleTask(((OneoffTask.Builder) prepareBuilder(new OneoffTask.Builder(), jobRequest)).setExecutionWindow(j, Math.max(endMs / 1000, 1 + j)).build());
        CAT.d("Scheduled OneoffTask, %s, start %s, end %s (from now), reschedule count %d", jobRequest, JobUtil.timeToString(startMs), JobUtil.timeToString(endMs), Integer.valueOf(JobProxy.Common.getRescheduleCount(jobRequest)));
    }

    @Override // com.evernote.android.job.JobProxy
    public void plantPeriodic(JobRequest jobRequest) {
        scheduleTask(((PeriodicTask.Builder) prepareBuilder(new PeriodicTask.Builder(), jobRequest)).setPeriod(jobRequest.getIntervalMs() / 1000).setFlex(jobRequest.getFlexMs() / 1000).build());
        CAT.d("Scheduled PeriodicTask, %s, interval %s, flex %s", jobRequest, JobUtil.timeToString(jobRequest.getIntervalMs()), JobUtil.timeToString(jobRequest.getFlexMs()));
    }

    @Override // com.evernote.android.job.JobProxy
    public void plantPeriodicFlexSupport(JobRequest jobRequest) {
        JobCat jobCat = CAT;
        jobCat.w("plantPeriodicFlexSupport called although flex is supported");
        long startMsSupportFlex = JobProxy.Common.getStartMsSupportFlex(jobRequest);
        long endMsSupportFlex = JobProxy.Common.getEndMsSupportFlex(jobRequest);
        scheduleTask(((OneoffTask.Builder) prepareBuilder(new OneoffTask.Builder(), jobRequest)).setExecutionWindow(startMsSupportFlex / 1000, endMsSupportFlex / 1000).build());
        jobCat.d("Scheduled periodic (flex support), %s, start %s, end %s, flex %s", jobRequest, JobUtil.timeToString(startMsSupportFlex), JobUtil.timeToString(endMsSupportFlex), JobUtil.timeToString(jobRequest.getFlexMs()));
    }

    @Override // com.evernote.android.job.JobProxy
    public void cancel(int i) {
        this.mGcmNetworkManager.cancelTask(createTag(i), PlatformGcmService.class);
    }

    private void scheduleTask(Task task) {
        try {
            this.mGcmNetworkManager.schedule(task);
        } catch (IllegalArgumentException e) {
            if (e.getMessage() != null && e.getMessage().startsWith("The GcmTaskService class you provided")) {
                throw new JobProxyIllegalStateException(e);
            }
            throw e;
        }
    }

    protected <T extends Task.Builder> T prepareBuilder(T t, JobRequest jobRequest) {
        t.setTag(createTag(jobRequest)).setService(PlatformGcmService.class).setUpdateCurrent(true).setRequiredNetwork(convertNetworkType(jobRequest.requiredNetworkType())).setPersisted(JobUtil.hasBootPermission(this.mContext)).setRequiresCharging(jobRequest.requiresCharging()).setExtras(jobRequest.getTransientExtras());
        return t;
    }

    protected String createTag(JobRequest jobRequest) {
        return createTag(jobRequest.getJobId());
    }

    protected String createTag(int i) {
        return String.valueOf(i);
    }

    /* renamed from: com.evernote.android.job.gcm.JobProxyGcm$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$evernote$android$job$JobRequest$NetworkType;

        static {
            int[] iArr = new int[JobRequest.NetworkType.values().length];
            $SwitchMap$com$evernote$android$job$JobRequest$NetworkType = iArr;
            try {
                iArr[JobRequest.NetworkType.ANY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$evernote$android$job$JobRequest$NetworkType[JobRequest.NetworkType.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$evernote$android$job$JobRequest$NetworkType[JobRequest.NetworkType.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$evernote$android$job$JobRequest$NetworkType[JobRequest.NetworkType.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    protected int convertNetworkType(JobRequest.NetworkType networkType) {
        int i = AnonymousClass1.$SwitchMap$com$evernote$android$job$JobRequest$NetworkType[networkType.ordinal()];
        if (i == 1) {
            return 2;
        }
        if (i == 2) {
            return 0;
        }
        if (i == 3 || i == 4) {
            return 1;
        }
        throw new IllegalStateException("not implemented");
    }
}
