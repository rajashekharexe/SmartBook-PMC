package com.evernote.android.job.v19;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import com.evernote.android.job.JobProxy;
import com.evernote.android.job.JobRequest;
import com.evernote.android.job.util.JobUtil;
import com.evernote.android.job.v14.JobProxy14;

/* loaded from: classes.dex */
public class JobProxy19 extends JobProxy14 {
    private static final String TAG = "JobProxy19";

    public JobProxy19(Context context) {
        super(context, TAG);
    }

    @Override // com.evernote.android.job.v14.JobProxy14
    protected void plantOneOffInexact(JobRequest jobRequest, AlarmManager alarmManager, PendingIntent pendingIntent) {
        alarmManager.setWindow(1, System.currentTimeMillis() + JobProxy.Common.getStartMs(jobRequest), JobProxy.Common.getEndMs(jobRequest) - JobProxy.Common.getStartMs(jobRequest), pendingIntent);
        this.mCat.d("Schedule alarm, %s, start %s, end %s", jobRequest, JobUtil.timeToString(JobProxy.Common.getStartMs(jobRequest)), JobUtil.timeToString(JobProxy.Common.getEndMs(jobRequest)));
    }

    @Override // com.evernote.android.job.v14.JobProxy14
    protected void plantOneOffFlexSupport(JobRequest jobRequest, AlarmManager alarmManager, PendingIntent pendingIntent) {
        alarmManager.setWindow(1, System.currentTimeMillis() + JobProxy.Common.getStartMsSupportFlex(jobRequest), JobProxy.Common.getEndMsSupportFlex(jobRequest) - JobProxy.Common.getStartMsSupportFlex(jobRequest), pendingIntent);
        this.mCat.d("Scheduled repeating alarm (flex support), %s, start %s, end %s, flex %s", jobRequest, JobUtil.timeToString(JobProxy.Common.getStartMsSupportFlex(jobRequest)), JobUtil.timeToString(JobProxy.Common.getEndMsSupportFlex(jobRequest)), JobUtil.timeToString(jobRequest.getFlexMs()));
    }
}
