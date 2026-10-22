package com.evernote.android.job;

import com.evernote.android.job.Job;
import com.evernote.android.job.JobRequest;
import com.evernote.android.job.util.JobCat;
import com.evernote.android.job.util.JobPreconditions;
import com.evernote.android.job.util.support.PersistableBundleCompat;
import java.util.Calendar;
import java.util.HashSet;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public abstract class DailyJob extends Job {
    private static final JobCat CAT = new JobCat("DailyJob");
    private static final long DAY = TimeUnit.DAYS.toMillis(1);
    static final String EXTRA_END_MS = "EXTRA_END_MS";
    private static final String EXTRA_ONCE = "EXTRA_ONCE";
    static final String EXTRA_START_MS = "EXTRA_START_MS";

    public enum DailyJobResult {
        SUCCESS,
        CANCEL
    }

    protected abstract DailyJobResult onRunDailyJob(Job.Params params);

    public static int schedule(JobRequest.Builder builder, long j, long j2) {
        return schedule(builder, true, j, j2, false);
    }

    public static void scheduleAsync(JobRequest.Builder builder, long j, long j2) {
        scheduleAsync(builder, j, j2, JobRequest.DEFAULT_JOB_SCHEDULED_CALLBACK);
    }

    public static void scheduleAsync(final JobRequest.Builder builder, final long j, final long j2, final JobRequest.JobScheduledCallback jobScheduledCallback) {
        JobPreconditions.checkNotNull(jobScheduledCallback);
        JobConfig.getExecutorService().execute(new Runnable() { // from class: com.evernote.android.job.DailyJob.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    jobScheduledCallback.onJobScheduled(DailyJob.schedule(JobRequest.Builder.this, j, j2), JobRequest.Builder.this.mTag, null);
                } catch (Exception e) {
                    jobScheduledCallback.onJobScheduled(-1, JobRequest.Builder.this.mTag, e);
                }
            }
        });
    }

    public static int startNowOnce(JobRequest.Builder builder) {
        PersistableBundleCompat persistableBundleCompat = new PersistableBundleCompat();
        persistableBundleCompat.putBoolean(EXTRA_ONCE, true);
        return builder.startNow().addExtras(persistableBundleCompat).build().schedule();
    }

    private static int schedule(JobRequest.Builder builder, boolean z, long j, long j2, boolean z2) {
        long j3 = DAY;
        if (j >= j3 || j2 >= j3 || j < 0 || j2 < 0) {
            throw new IllegalArgumentException("startMs or endMs should be less than one day (in milliseconds)");
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(JobConfig.getClock().currentTimeMillis());
        int i = calendar.get(11);
        int i2 = calendar.get(12);
        long millis = ((((((TimeUnit.SECONDS.toMillis(60 - calendar.get(13)) + TimeUnit.MINUTES.toMillis(60 - i2)) + TimeUnit.HOURS.toMillis((24 - i) % 24)) - TimeUnit.HOURS.toMillis(1L)) - TimeUnit.MINUTES.toMillis(1L)) + TimeUnit.DAYS.toMillis(1L)) + j) % TimeUnit.DAYS.toMillis(1L);
        if (z2 && millis < TimeUnit.HOURS.toMillis(12L)) {
            millis += TimeUnit.DAYS.toMillis(1L);
        }
        if (j > j2) {
            j2 += TimeUnit.DAYS.toMillis(1L);
        }
        long j4 = (j2 - j) + millis;
        PersistableBundleCompat persistableBundleCompat = new PersistableBundleCompat();
        persistableBundleCompat.putLong(EXTRA_START_MS, j);
        persistableBundleCompat.putLong(EXTRA_END_MS, j2);
        builder.addExtras(persistableBundleCompat);
        if (z) {
            JobManager instance = JobManager.instance();
            for (JobRequest jobRequest : new HashSet(instance.getAllJobRequestsForTag(builder.mTag))) {
                if (!jobRequest.isExact() || jobRequest.getStartMs() != 1) {
                    instance.cancel(jobRequest.getJobId());
                }
            }
        }
        JobRequest build = builder.setExecutionWindow(Math.max(1L, millis), Math.max(1L, j4)).build();
        if (z && (build.isExact() || build.isPeriodic() || build.isTransient())) {
            throw new IllegalArgumentException("Daily jobs cannot be exact, periodic or transient");
        }
        return build.schedule();
    }

    @Override // com.evernote.android.job.Job
    protected final Job.Result onRunJob(Job.Params params) {
        DailyJobResult dailyJobResult;
        PersistableBundleCompat extras = params.getExtras();
        boolean z = extras.getBoolean(EXTRA_ONCE, false);
        if (!z && (!extras.containsKey(EXTRA_START_MS) || !extras.containsKey(EXTRA_END_MS))) {
            CAT.e("Daily job doesn't contain start and end time");
            return Job.Result.FAILURE;
        }
        DailyJobResult dailyJobResult2 = null;
        try {
            if (meetsRequirements(true)) {
                dailyJobResult = onRunDailyJob(params);
            } else {
                DailyJobResult dailyJobResult3 = DailyJobResult.SUCCESS;
                CAT.i("Daily job requirements not met, reschedule for the next day");
                dailyJobResult = dailyJobResult3;
            }
            if (dailyJobResult == null) {
                dailyJobResult = DailyJobResult.SUCCESS;
                CAT.e("Daily job result was null");
            }
            if (!z) {
                JobRequest request = params.getRequest();
                if (dailyJobResult == DailyJobResult.SUCCESS) {
                    CAT.i("Rescheduling daily job %s", request);
                    JobRequest.Builder createBuilder = request.createBuilder();
                    long j = extras.getLong(EXTRA_START_MS, 0L);
                    long j2 = DAY;
                    JobRequest jobRequest = JobManager.instance().getJobRequest(schedule(createBuilder, false, j % j2, extras.getLong(EXTRA_END_MS, 0L) % j2, true));
                    if (jobRequest != null) {
                        jobRequest.updateStats(false, true);
                    }
                } else {
                    CAT.i("Cancel daily job %s", request);
                }
            }
            return Job.Result.SUCCESS;
        } catch (Throwable th) {
            if (0 == 0) {
                dailyJobResult2 = DailyJobResult.SUCCESS;
                CAT.e("Daily job result was null");
            }
            if (!z) {
                JobRequest request2 = params.getRequest();
                if (dailyJobResult2 == DailyJobResult.SUCCESS) {
                    CAT.i("Rescheduling daily job %s", request2);
                    JobRequest.Builder createBuilder2 = request2.createBuilder();
                    long j3 = extras.getLong(EXTRA_START_MS, 0L);
                    long j4 = DAY;
                    JobRequest jobRequest2 = JobManager.instance().getJobRequest(schedule(createBuilder2, false, j3 % j4, extras.getLong(EXTRA_END_MS, 0L) % j4, true));
                    if (jobRequest2 != null) {
                        jobRequest2.updateStats(false, true);
                    }
                } else {
                    CAT.i("Cancel daily job %s", request2);
                }
            }
            throw th;
        }
    }
}
