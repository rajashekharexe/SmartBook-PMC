package com.evernote.android.job;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
public interface JobCreator {
    public static final String ACTION_ADD_JOB_CREATOR = "com.evernote.android.job.ADD_JOB_CREATOR";

    Job create(String str);

    public static abstract class AddJobCreatorReceiver extends BroadcastReceiver {
        protected abstract void addJobCreator(Context context, JobManager jobManager);

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (context == null || intent == null || !JobCreator.ACTION_ADD_JOB_CREATOR.equals(intent.getAction())) {
                return;
            }
            try {
                addJobCreator(context, JobManager.create(context));
            } catch (JobManagerCreateException unused) {
            }
        }
    }
}
