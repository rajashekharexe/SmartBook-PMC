package com.conceptglobal.pmc;

import android.content.Context;
import com.conceptglobal.pmc.service.SyncServiceJob;
import com.evernote.android.job.Job;
import com.evernote.android.job.JobCreator;
import com.evernote.android.job.JobManager;

/* loaded from: classes.dex */
public class PMCJobCreator implements JobCreator {

    public static final class AddReceiver extends JobCreator.AddJobCreatorReceiver {
        @Override // com.evernote.android.job.JobCreator.AddJobCreatorReceiver
        protected void addJobCreator(Context context, JobManager jobManager) {
        }
    }

    @Override // com.evernote.android.job.JobCreator
    public Job create(String str) {
        str.hashCode();
        if (str.equals(SyncServiceJob.TAG)) {
            return new SyncServiceJob();
        }
        return null;
    }
}
