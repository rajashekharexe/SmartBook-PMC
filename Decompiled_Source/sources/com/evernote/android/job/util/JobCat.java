package com.evernote.android.job.util;

import android.util.Log;
import java.util.Arrays;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class JobCat implements JobLogger {
    private static volatile boolean logcatEnabled = true;
    private static volatile JobLogger[] loggers = new JobLogger[0];
    protected final boolean mEnabled;
    protected final String mTag;

    public static synchronized boolean addLogger(JobLogger jobLogger) {
        synchronized (JobCat.class) {
            for (JobLogger jobLogger2 : loggers) {
                if (jobLogger.equals(jobLogger2)) {
                    return false;
                }
            }
            for (int i = 0; i < loggers.length; i++) {
                if (loggers[i] == null) {
                    loggers[i] = jobLogger;
                    return true;
                }
            }
            int length = loggers.length;
            loggers = (JobLogger[]) Arrays.copyOf(loggers, loggers.length + 2);
            loggers[length] = jobLogger;
            return true;
        }
    }

    public static synchronized void removeLogger(JobLogger jobLogger) {
        synchronized (JobCat.class) {
            for (int i = 0; i < loggers.length; i++) {
                if (jobLogger.equals(loggers[i])) {
                    loggers[i] = null;
                }
            }
        }
    }

    public static synchronized void clearLogger() {
        synchronized (JobCat.class) {
            Arrays.fill(loggers, (Object) null);
        }
    }

    public static void setLogcatEnabled(boolean z) {
        logcatEnabled = z;
    }

    public static boolean isLogcatEnabled() {
        return logcatEnabled;
    }

    public JobCat(Class<?> cls) {
        this(cls.getSimpleName());
    }

    public JobCat(String str) {
        this(str, true);
    }

    public JobCat(String str, boolean z) {
        this.mTag = str;
        this.mEnabled = z;
    }

    public void i(String str) {
        log(4, this.mTag, str, null);
    }

    public void i(String str, Object... objArr) {
        log(4, this.mTag, String.format(str, objArr), null);
    }

    public void d(String str) {
        log(3, this.mTag, str, null);
    }

    public void d(String str, Object... objArr) {
        log(3, this.mTag, String.format(str, objArr), null);
    }

    public void d(Throwable th, String str, Object... objArr) {
        log(3, this.mTag, String.format(str, objArr), th);
    }

    public void w(String str) {
        log(5, this.mTag, str, null);
    }

    public void w(String str, Object... objArr) {
        log(5, this.mTag, String.format(str, objArr), null);
    }

    public void w(Throwable th, String str, Object... objArr) {
        log(5, this.mTag, String.format(str, objArr), th);
    }

    public void e(Throwable th) {
        String message = th.getMessage();
        String str = this.mTag;
        if (message == null) {
            message = "empty message";
        }
        log(6, str, message, th);
    }

    public void e(String str) {
        log(6, this.mTag, str, null);
    }

    public void e(String str, Object... objArr) {
        log(6, this.mTag, String.format(str, objArr), null);
    }

    public void e(Throwable th, String str, Object... objArr) {
        log(6, this.mTag, String.format(str, objArr), th);
    }

    @Override // com.evernote.android.job.util.JobLogger
    public void log(int i, String str, String str2, Throwable th) {
        if (this.mEnabled) {
            if (logcatEnabled) {
                Log.println(i, str, str2 + (th == null ? "" : IOUtils.LINE_SEPARATOR_UNIX + Log.getStackTraceString(th)));
            }
            JobLogger[] jobLoggerArr = loggers;
            if (jobLoggerArr.length > 0) {
                for (JobLogger jobLogger : jobLoggerArr) {
                    if (jobLogger != null) {
                        jobLogger.log(i, str, str2, th);
                    }
                }
            }
        }
    }
}
