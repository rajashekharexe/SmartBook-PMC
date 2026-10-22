package com.evernote.android.job;

import com.evernote.android.job.util.JobCat;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
class JobCreatorHolder {
    private static final JobCat CAT = new JobCat("JobCreatorHolder");
    private final List<JobCreator> mJobCreators = new CopyOnWriteArrayList();

    public void addJobCreator(JobCreator jobCreator) {
        this.mJobCreators.add(jobCreator);
    }

    public void removeJobCreator(JobCreator jobCreator) {
        this.mJobCreators.remove(jobCreator);
    }

    public Job createJob(String str) {
        Iterator<JobCreator> it = this.mJobCreators.iterator();
        Job job = null;
        boolean z = false;
        while (it.hasNext()) {
            job = it.next().create(str);
            z = true;
            if (job != null) {
                break;
            }
        }
        if (!z) {
            CAT.w("no JobCreator added");
        }
        return job;
    }

    public boolean isEmpty() {
        return this.mJobCreators.isEmpty();
    }
}
