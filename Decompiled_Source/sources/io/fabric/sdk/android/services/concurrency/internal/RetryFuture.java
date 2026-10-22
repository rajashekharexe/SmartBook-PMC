package io.fabric.sdk.android.services.concurrency.internal;

import com.crashlytics.android.answers.BackgroundManager$$ExternalSyntheticBackportWithForwarding0;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
class RetryFuture<T> extends AbstractFuture<T> implements Runnable {
    private final RetryThreadPoolExecutor executor;
    RetryState retryState;
    private final AtomicReference<Thread> runner = new AtomicReference<>();
    private final Callable<T> task;

    RetryFuture(Callable<T> callable, RetryState retryState, RetryThreadPoolExecutor retryThreadPoolExecutor) {
        this.task = callable;
        this.retryState = retryState;
        this.executor = retryThreadPoolExecutor;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (isDone()) {
            return;
        }
        if (BackgroundManager$$ExternalSyntheticBackportWithForwarding0.m(this.runner, null, Thread.currentThread())) {
            try {
                set(this.task.call());
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    private RetryPolicy getRetryPolicy() {
        return this.retryState.getRetryPolicy();
    }

    private Backoff getBackoff() {
        return this.retryState.getBackoff();
    }

    private int getRetryCount() {
        return this.retryState.getRetryCount();
    }

    @Override // io.fabric.sdk.android.services.concurrency.internal.AbstractFuture
    protected void interruptTask() {
        Thread andSet = this.runner.getAndSet(null);
        if (andSet != null) {
            andSet.interrupt();
        }
    }
}
