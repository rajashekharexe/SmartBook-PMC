package com.evernote.android.job.v14;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.evernote.android.job.JobConfig;
import com.evernote.android.job.JobProxy;
import com.evernote.android.job.JobRequest;
import com.evernote.android.job.util.JobCat;
import com.evernote.android.job.util.JobUtil;

/* loaded from: classes.dex */
public class JobProxy14 implements JobProxy {
    private static final String TAG = "JobProxy14";
    private AlarmManager mAlarmManager;
    protected final JobCat mCat;
    protected final Context mContext;

    protected int createPendingIntentFlags(boolean z) {
        return !z ? 1207959552 : 134217728;
    }

    public JobProxy14(Context context) {
        this(context, TAG);
    }

    protected JobProxy14(Context context, String str) {
        this.mContext = context;
        this.mCat = new JobCat(str);
    }

    @Override // com.evernote.android.job.JobProxy
    public void plantOneOff(JobRequest jobRequest) {
        PendingIntent pendingIntent = getPendingIntent(jobRequest, false);
        AlarmManager alarmManager = getAlarmManager();
        if (alarmManager == null) {
            return;
        }
        try {
            if (!jobRequest.isExact()) {
                plantOneOffInexact(jobRequest, alarmManager, pendingIntent);
            } else if (jobRequest.getStartMs() == 1 && jobRequest.getFailureCount() <= 0) {
                PlatformAlarmService.start(this.mContext, jobRequest.getJobId(), jobRequest.getTransientExtras());
            } else {
                plantOneOffExact(jobRequest, alarmManager, pendingIntent);
            }
        } catch (Exception e) {
            this.mCat.e(e);
        }
    }

    protected void plantOneOffInexact(JobRequest jobRequest, AlarmManager alarmManager, PendingIntent pendingIntent) {
        alarmManager.set(getType(false), getTriggerAtMillis(jobRequest), pendingIntent);
        logScheduled(jobRequest);
    }

    protected void plantOneOffExact(JobRequest jobRequest, AlarmManager alarmManager, PendingIntent pendingIntent) {
        long triggerAtMillis = getTriggerAtMillis(jobRequest);
        if (Build.VERSION.SDK_INT >= 23) {
            alarmManager.setExactAndAllowWhileIdle(getType(true), triggerAtMillis, pendingIntent);
        } else {
            alarmManager.setExact(getType(true), triggerAtMillis, pendingIntent);
        }
        logScheduled(jobRequest);
    }

    protected void plantOneOffFlexSupport(JobRequest jobRequest, AlarmManager alarmManager, PendingIntent pendingIntent) {
        alarmManager.set(1, JobConfig.getClock().currentTimeMillis() + JobProxy.Common.getAverageDelayMsSupportFlex(jobRequest), pendingIntent);
        this.mCat.d("Scheduled repeating alarm (flex support), %s, interval %s, flex %s", jobRequest, JobUtil.timeToString(jobRequest.getIntervalMs()), JobUtil.timeToString(jobRequest.getFlexMs()));
    }

    protected long getTriggerAtMillis(JobRequest jobRequest) {
        long elapsedRealtime;
        long averageDelayMs;
        if (JobConfig.isForceRtc()) {
            elapsedRealtime = JobConfig.getClock().currentTimeMillis();
            averageDelayMs = JobProxy.Common.getAverageDelayMs(jobRequest);
        } else {
            elapsedRealtime = JobConfig.getClock().elapsedRealtime();
            averageDelayMs = JobProxy.Common.getAverageDelayMs(jobRequest);
        }
        return elapsedRealtime + averageDelayMs;
    }

    protected int getType(boolean z) {
        return z ? JobConfig.isForceRtc() ? 0 : 2 : JobConfig.isForceRtc() ? 1 : 3;
    }

    private void logScheduled(JobRequest jobRequest) {
        this.mCat.d("Scheduled alarm, %s, delay %s (from now), exact %b, reschedule count %d", jobRequest, JobUtil.timeToString(JobProxy.Common.getAverageDelayMs(jobRequest)), Boolean.valueOf(jobRequest.isExact()), Integer.valueOf(JobProxy.Common.getRescheduleCount(jobRequest)));
    }

    @Override // com.evernote.android.job.JobProxy
    public void plantPeriodic(JobRequest jobRequest) {
        PendingIntent pendingIntent = getPendingIntent(jobRequest, true);
        AlarmManager alarmManager = getAlarmManager();
        if (alarmManager != null) {
            alarmManager.setRepeating(getType(true), getTriggerAtMillis(jobRequest), jobRequest.getIntervalMs(), pendingIntent);
        }
        this.mCat.d("Scheduled repeating alarm, %s, interval %s", jobRequest, JobUtil.timeToString(jobRequest.getIntervalMs()));
    }

    @Override // com.evernote.android.job.JobProxy
    public void plantPeriodicFlexSupport(JobRequest jobRequest) {
        PendingIntent pendingIntent = getPendingIntent(jobRequest, false);
        AlarmManager alarmManager = getAlarmManager();
        if (alarmManager == null) {
            return;
        }
        try {
            plantOneOffFlexSupport(jobRequest, alarmManager, pendingIntent);
        } catch (Exception e) {
            this.mCat.e(e);
        }
    }

    @Override // com.evernote.android.job.JobProxy
    public void cancel(int i) {
        AlarmManager alarmManager = getAlarmManager();
        if (alarmManager != null) {
            try {
                alarmManager.cancel(getPendingIntent(i, false, null, createPendingIntentFlags(true)));
                alarmManager.cancel(getPendingIntent(i, false, null, createPendingIntentFlags(false)));
            } catch (Exception e) {
                this.mCat.e(e);
            }
        }
    }

    @Override // com.evernote.android.job.JobProxy
    public boolean isPlatformJobScheduled(JobRequest jobRequest) {
        return getPendingIntent(jobRequest, 536870912) != null;
    }

    protected PendingIntent getPendingIntent(JobRequest jobRequest, boolean z) {
        return getPendingIntent(jobRequest, createPendingIntentFlags(z));
    }

    protected PendingIntent getPendingIntent(JobRequest jobRequest, int i) {
        return getPendingIntent(jobRequest.getJobId(), jobRequest.isExact(), jobRequest.getTransientExtras(), i);
    }

    protected PendingIntent getPendingIntent(int i, boolean z, Bundle bundle, int i2) {
        try {
            return PendingIntent.getBroadcast(this.mContext, i, PlatformAlarmReceiver.createIntent(this.mContext, i, z, bundle), i2);
        } catch (Exception e) {
            this.mCat.e(e);
            return null;
        }
    }

    protected AlarmManager getAlarmManager() {
        if (this.mAlarmManager == null) {
            this.mAlarmManager = (AlarmManager) this.mContext.getSystemService(NotificationCompat.CATEGORY_ALARM);
        }
        if (this.mAlarmManager == null) {
            this.mCat.e("AlarmManager is null");
        }
        return this.mAlarmManager;
    }
}
