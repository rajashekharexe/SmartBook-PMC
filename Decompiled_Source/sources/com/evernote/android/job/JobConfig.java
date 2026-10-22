package com.evernote.android.job;

import android.os.Build;
import com.evernote.android.job.util.Clock;
import com.evernote.android.job.util.JobCat;
import com.evernote.android.job.util.JobLogger;
import com.evernote.android.job.util.JobPreconditions;
import java.util.EnumMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class JobConfig {
    private static final JobCat CAT = new JobCat("JobConfig");
    private static final ExecutorService DEFAULT_EXECUTOR_SERVICE;
    private static final long DEFAULT_JOB_RESCHEDULE_PAUSE = 3000;
    private static final EnumMap<JobApi, Boolean> ENABLED_APIS;
    private static volatile boolean allowSmallerIntervals;
    private static volatile Clock clock;
    private static volatile boolean closeDatabase;
    private static volatile ExecutorService executorService;
    private static volatile boolean forceAllowApi14;
    private static volatile boolean forceRtc;
    private static volatile int jobIdOffset;
    private static volatile long jobReschedulePause;
    private static volatile boolean skipJobReschedule;

    private JobConfig() {
        throw new UnsupportedOperationException();
    }

    static {
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool(new ThreadFactory() { // from class: com.evernote.android.job.JobConfig.1
            private final AtomicInteger mThreadNumber = new AtomicInteger();

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, "AndroidJob-" + this.mThreadNumber.incrementAndGet());
                if (thread.isDaemon()) {
                    thread.setDaemon(false);
                }
                if (thread.getPriority() != 5) {
                    thread.setPriority(5);
                }
                return thread;
            }
        });
        DEFAULT_EXECUTOR_SERVICE = newCachedThreadPool;
        forceAllowApi14 = false;
        jobReschedulePause = DEFAULT_JOB_RESCHEDULE_PAUSE;
        skipJobReschedule = false;
        jobIdOffset = 0;
        forceRtc = false;
        clock = Clock.DEFAULT;
        executorService = newCachedThreadPool;
        closeDatabase = false;
        ENABLED_APIS = new EnumMap<>(JobApi.class);
        for (JobApi jobApi : JobApi.values()) {
            ENABLED_APIS.put((EnumMap<JobApi, Boolean>) jobApi, (JobApi) Boolean.TRUE);
        }
    }

    public static boolean isApiEnabled(JobApi jobApi) {
        return ENABLED_APIS.get(jobApi).booleanValue();
    }

    public static void setApiEnabled(JobApi jobApi, boolean z) {
        ENABLED_APIS.put((EnumMap<JobApi, Boolean>) jobApi, (JobApi) Boolean.valueOf(z));
        CAT.w("setApiEnabled - %s, %b", jobApi, Boolean.valueOf(z));
    }

    public static void forceApi(JobApi jobApi) {
        JobApi[] values = JobApi.values();
        int length = values.length;
        int i = 0;
        while (true) {
            boolean z = true;
            if (i < length) {
                JobApi jobApi2 = values[i];
                EnumMap<JobApi, Boolean> enumMap = ENABLED_APIS;
                if (jobApi2 != jobApi) {
                    z = false;
                }
                enumMap.put((EnumMap<JobApi, Boolean>) jobApi2, (JobApi) Boolean.valueOf(z));
                i++;
            } else {
                CAT.w("forceApi - %s", jobApi);
                return;
            }
        }
    }

    public static boolean isAllowSmallerIntervalsForMarshmallow() {
        return allowSmallerIntervals && Build.VERSION.SDK_INT < 24;
    }

    public static void setAllowSmallerIntervalsForMarshmallow(boolean z) {
        if (z && Build.VERSION.SDK_INT >= 24) {
            throw new IllegalStateException("This method is only allowed to call on Android M or earlier");
        }
        allowSmallerIntervals = z;
    }

    public static void setForceAllowApi14(boolean z) {
        forceAllowApi14 = z;
    }

    public static boolean isForceAllowApi14() {
        return forceAllowApi14;
    }

    public static synchronized boolean addLogger(JobLogger jobLogger) {
        boolean addLogger;
        synchronized (JobConfig.class) {
            addLogger = JobCat.addLogger(jobLogger);
        }
        return addLogger;
    }

    public static synchronized void removeLogger(JobLogger jobLogger) {
        synchronized (JobConfig.class) {
            JobCat.removeLogger(jobLogger);
        }
    }

    public static void setLogcatEnabled(boolean z) {
        JobCat.setLogcatEnabled(z);
    }

    public static boolean isLogcatEnabled() {
        return JobCat.isLogcatEnabled();
    }

    public static long getJobReschedulePause() {
        return jobReschedulePause;
    }

    public static void setJobReschedulePause(long j, TimeUnit timeUnit) {
        jobReschedulePause = timeUnit.toMillis(j);
    }

    static boolean isSkipJobReschedule() {
        return skipJobReschedule;
    }

    static void setSkipJobReschedule(boolean z) {
        skipJobReschedule = z;
    }

    public static int getJobIdOffset() {
        return jobIdOffset;
    }

    public static void setJobIdOffset(int i) {
        JobPreconditions.checkArgumentNonnegative(i, "offset can't be negative");
        if (i > 2147479500) {
            throw new IllegalArgumentException("offset is too close to Integer.MAX_VALUE");
        }
        jobIdOffset = i;
    }

    public static boolean isForceRtc() {
        return forceRtc;
    }

    public static void setForceRtc(boolean z) {
        forceRtc = z;
    }

    public static Clock getClock() {
        return clock;
    }

    static void setClock(Clock clock2) {
        clock = clock2;
    }

    public static ExecutorService getExecutorService() {
        return executorService;
    }

    public static void setExecutorService(ExecutorService executorService2) {
        executorService = (ExecutorService) JobPreconditions.checkNotNull(executorService2);
    }

    public static boolean isCloseDatabase() {
        return closeDatabase;
    }

    public static void setCloseDatabase(boolean z) {
        closeDatabase = z;
    }

    public static void reset() {
        for (JobApi jobApi : JobApi.values()) {
            ENABLED_APIS.put((EnumMap<JobApi, Boolean>) jobApi, (JobApi) Boolean.TRUE);
        }
        allowSmallerIntervals = false;
        forceAllowApi14 = false;
        jobReschedulePause = DEFAULT_JOB_RESCHEDULE_PAUSE;
        skipJobReschedule = false;
        jobIdOffset = 0;
        forceRtc = false;
        clock = Clock.DEFAULT;
        executorService = DEFAULT_EXECUTOR_SERVICE;
        closeDatabase = false;
        JobCat.setLogcatEnabled(true);
        JobCat.clearLogger();
    }
}
