package rx.internal.util;

import com.crashlytics.android.answers.BackgroundManager$$ExternalSyntheticBackportWithForwarding0;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import rx.Scheduler;
import rx.functions.Action0;
import rx.internal.schedulers.SchedulerLifecycle;
import rx.internal.util.unsafe.MpmcArrayQueue;
import rx.internal.util.unsafe.UnsafeAccess;
import rx.schedulers.Schedulers;

/* loaded from: classes2.dex */
public abstract class ObjectPool<T> implements SchedulerLifecycle {
    final int maxSize;
    final int minSize;
    Queue<T> pool;
    private final AtomicReference<Scheduler.Worker> schedulerWorker;
    private final long validationInterval;

    protected abstract T createObject();

    public ObjectPool() {
        this(0, 0, 67L);
    }

    private ObjectPool(int i, int i2, long j) {
        this.minSize = i;
        this.maxSize = i2;
        this.validationInterval = j;
        this.schedulerWorker = new AtomicReference<>();
        initialize(i);
        start();
    }

    public T borrowObject() {
        T poll = this.pool.poll();
        return poll == null ? createObject() : poll;
    }

    public void returnObject(T t) {
        if (t == null) {
            return;
        }
        this.pool.offer(t);
    }

    @Override // rx.internal.schedulers.SchedulerLifecycle
    public void shutdown() {
        Scheduler.Worker andSet = this.schedulerWorker.getAndSet(null);
        if (andSet != null) {
            andSet.unsubscribe();
        }
    }

    @Override // rx.internal.schedulers.SchedulerLifecycle
    public void start() {
        Scheduler.Worker createWorker = Schedulers.computation().createWorker();
        if (BackgroundManager$$ExternalSyntheticBackportWithForwarding0.m(this.schedulerWorker, null, createWorker)) {
            Action0 action0 = new Action0() { // from class: rx.internal.util.ObjectPool.1
                @Override // rx.functions.Action0
                public void call() {
                    int size = ObjectPool.this.pool.size();
                    int i = 0;
                    if (size < ObjectPool.this.minSize) {
                        int i2 = ObjectPool.this.maxSize - size;
                        while (i < i2) {
                            ObjectPool.this.pool.add(ObjectPool.this.createObject());
                            i++;
                        }
                        return;
                    }
                    if (size > ObjectPool.this.maxSize) {
                        int i3 = size - ObjectPool.this.maxSize;
                        while (i < i3) {
                            ObjectPool.this.pool.poll();
                            i++;
                        }
                    }
                }
            };
            long j = this.validationInterval;
            createWorker.schedulePeriodically(action0, j, j, TimeUnit.SECONDS);
            return;
        }
        createWorker.unsubscribe();
    }

    private void initialize(int i) {
        if (UnsafeAccess.isUnsafeAvailable()) {
            this.pool = new MpmcArrayQueue(Math.max(this.maxSize, 1024));
        } else {
            this.pool = new ConcurrentLinkedQueue();
        }
        for (int i2 = 0; i2 < i; i2++) {
            this.pool.add(createObject());
        }
    }
}
