package rx.internal.operators;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import rx.Completable;
import rx.Observable;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.MissingBackpressureException;
import rx.internal.util.unsafe.SpscArrayQueue;
import rx.plugins.RxJavaPlugins;
import rx.subscriptions.SerialSubscription;

/* loaded from: classes2.dex */
public final class CompletableOnSubscribeConcat implements Completable.CompletableOnSubscribe {
    final int prefetch;
    final Observable<Completable> sources;

    /* JADX WARN: Multi-variable type inference failed */
    public CompletableOnSubscribeConcat(Observable<? extends Completable> observable, int i) {
        this.sources = observable;
        this.prefetch = i;
    }

    @Override // rx.functions.Action1
    public void call(Completable.CompletableSubscriber completableSubscriber) {
        CompletableConcatSubscriber completableConcatSubscriber = new CompletableConcatSubscriber(completableSubscriber, this.prefetch);
        completableSubscriber.onSubscribe(completableConcatSubscriber);
        this.sources.subscribe((Subscriber<? super Completable>) completableConcatSubscriber);
    }

    static final class CompletableConcatSubscriber extends Subscriber<Completable> {
        static final AtomicIntegerFieldUpdater<CompletableConcatSubscriber> ONCE = AtomicIntegerFieldUpdater.newUpdater(CompletableConcatSubscriber.class, "once");
        final Completable.CompletableSubscriber actual;
        volatile boolean done;
        final ConcatInnerSubscriber inner;
        volatile int once;
        final int prefetch;
        final SpscArrayQueue<Completable> queue;
        final SerialSubscription sr;
        final AtomicInteger wip;

        public CompletableConcatSubscriber(Completable.CompletableSubscriber completableSubscriber, int i) {
            this.actual = completableSubscriber;
            this.prefetch = i;
            this.queue = new SpscArrayQueue<>(i);
            SerialSubscription serialSubscription = new SerialSubscription();
            this.sr = serialSubscription;
            this.inner = new ConcatInnerSubscriber();
            this.wip = new AtomicInteger();
            add(serialSubscription);
            request(i);
        }

        @Override // rx.Observer
        public void onNext(Completable completable) {
            if (!this.queue.offer(completable)) {
                onError(new MissingBackpressureException());
            } else if (this.wip.getAndIncrement() == 0) {
                next();
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (ONCE.compareAndSet(this, 0, 1)) {
                this.actual.onError(th);
            } else {
                RxJavaPlugins.getInstance().getErrorHandler().handleError(th);
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.done) {
                return;
            }
            this.done = true;
            if (this.wip.getAndIncrement() == 0) {
                next();
            }
        }

        void innerError(Throwable th) {
            unsubscribe();
            onError(th);
        }

        void innerComplete() {
            if (this.wip.decrementAndGet() != 0) {
                next();
            }
            if (this.done) {
                return;
            }
            request(1L);
        }

        void next() {
            boolean z = this.done;
            Completable poll = this.queue.poll();
            if (poll != null) {
                poll.subscribe(this.inner);
            } else {
                if (z) {
                    if (ONCE.compareAndSet(this, 0, 1)) {
                        this.actual.onCompleted();
                        return;
                    }
                    return;
                }
                RxJavaPlugins.getInstance().getErrorHandler().handleError(new IllegalStateException("Queue is empty?!"));
            }
        }

        final class ConcatInnerSubscriber implements Completable.CompletableSubscriber {
            ConcatInnerSubscriber() {
            }

            @Override // rx.Completable.CompletableSubscriber
            public void onSubscribe(Subscription subscription) {
                CompletableConcatSubscriber.this.sr.set(subscription);
            }

            @Override // rx.Completable.CompletableSubscriber
            public void onError(Throwable th) {
                CompletableConcatSubscriber.this.innerError(th);
            }

            @Override // rx.Completable.CompletableSubscriber
            public void onCompleted() {
                CompletableConcatSubscriber.this.innerComplete();
            }
        }
    }
}
