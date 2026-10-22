package org.android10.gintonic.internal;

import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class StopWatch {
    private long elapsedTime;
    private long endTime;
    private long startTime;

    private void reset() {
        this.startTime = 0L;
        this.endTime = 0L;
        this.elapsedTime = 0L;
    }

    public void start() {
        reset();
        this.startTime = System.nanoTime();
    }

    public void stop() {
        if (this.startTime != 0) {
            long nanoTime = System.nanoTime();
            this.endTime = nanoTime;
            this.elapsedTime = nanoTime - this.startTime;
            return;
        }
        reset();
    }

    public long getTotalTimeMillis() {
        if (this.elapsedTime != 0) {
            return TimeUnit.NANOSECONDS.toMillis(this.endTime - this.startTime);
        }
        return 0L;
    }
}
