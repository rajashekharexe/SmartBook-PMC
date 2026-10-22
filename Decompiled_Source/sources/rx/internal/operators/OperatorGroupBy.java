package rx.internal.operators;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.LongCompanionObject;
import rx.Observable;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.functions.Action0;
import rx.functions.Func1;
import rx.internal.producers.ProducerArbiter;
import rx.internal.util.RxRingBuffer;
import rx.internal.util.UtilityFunctions;
import rx.observables.GroupedObservable;
import rx.plugins.RxJavaPlugins;
import rx.subscriptions.Subscriptions;

/* loaded from: classes2.dex */
public final class OperatorGroupBy<T, K, V> implements Observable.Operator<GroupedObservable<K, V>, T> {
    final int bufferSize;
    final boolean delayError;
    final Func1<? super T, ? extends K> keySelector;
    final Func1<? super T, ? extends V> valueSelector;

    public OperatorGroupBy(Func1<? super T, ? extends K> func1) {
        this(func1, UtilityFunctions.identity(), RxRingBuffer.SIZE, false);
    }

    public OperatorGroupBy(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12) {
        this(func1, func12, RxRingBuffer.SIZE, false);
    }

    public OperatorGroupBy(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12, int i, boolean z) {
        this.keySelector = func1;
        this.valueSelector = func12;
        this.bufferSize = i;
        this.delayError = z;
    }

    @Override // rx.functions.Func1
    public Subscriber<? super T> call(Subscriber<? super GroupedObservable<K, V>> subscriber) {
        final GroupBySubscriber groupBySubscriber = new GroupBySubscriber(subscriber, this.keySelector, this.valueSelector, this.bufferSize, this.delayError);
        subscriber.add(Subscriptions.create(new Action0() { // from class: rx.internal.operators.OperatorGroupBy.1
            @Override // rx.functions.Action0
            public void call() {
                groupBySubscriber.cancel();
            }
        }));
        subscriber.setProducer(groupBySubscriber.producer);
        return groupBySubscriber;
    }

    public static final class GroupByProducer implements Producer {
        final GroupBySubscriber<?, ?, ?> parent;

        public GroupByProducer(GroupBySubscriber<?, ?, ?> groupBySubscriber) {
            this.parent = groupBySubscriber;
        }

        @Override // rx.Producer
        public void request(long j) {
            this.parent.requestMore(j);
        }
    }

    public static final class GroupBySubscriber<T, K, V> extends Subscriber<T> {
        final Subscriber<? super GroupedObservable<K, V>> actual;
        final int bufferSize;
        volatile int cancelled;
        final boolean delayError;
        volatile boolean done;
        Throwable error;
        volatile int groupCount;
        final Func1<? super T, ? extends K> keySelector;
        final GroupByProducer producer;
        volatile long requested;
        final ProducerArbiter s;
        final Func1<? super T, ? extends V> valueSelector;
        volatile int wip;
        static final Object NULL_KEY = new Object();
        static final AtomicIntegerFieldUpdater<GroupBySubscriber> CANCELLED = AtomicIntegerFieldUpdater.newUpdater(GroupBySubscriber.class, "cancelled");
        static final AtomicLongFieldUpdater<GroupBySubscriber> REQUESTED = AtomicLongFieldUpdater.newUpdater(GroupBySubscriber.class, "requested");
        static final AtomicIntegerFieldUpdater<GroupBySubscriber> GROUP_COUNT = AtomicIntegerFieldUpdater.newUpdater(GroupBySubscriber.class, "groupCount");
        static final AtomicIntegerFieldUpdater<GroupBySubscriber> WIP = AtomicIntegerFieldUpdater.newUpdater(GroupBySubscriber.class, "wip");
        final Map<Object, GroupedUnicast<K, V>> groups = new ConcurrentHashMap();
        final Queue<GroupedObservable<K, V>> queue = new ConcurrentLinkedQueue();

        public GroupBySubscriber(Subscriber<? super GroupedObservable<K, V>> subscriber, Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12, int i, boolean z) {
            this.actual = subscriber;
            this.keySelector = func1;
            this.valueSelector = func12;
            this.bufferSize = i;
            this.delayError = z;
            GROUP_COUNT.lazySet(this, 1);
            ProducerArbiter producerArbiter = new ProducerArbiter();
            this.s = producerArbiter;
            producerArbiter.request(i);
            this.producer = new GroupByProducer(this);
        }

        @Override // rx.Subscriber
        public void setProducer(Producer producer) {
            this.s.setProducer(producer);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            boolean z;
            if (this.done) {
                return;
            }
            Queue<?> queue = this.queue;
            Subscriber<? super GroupedObservable<K, V>> subscriber = this.actual;
            try {
                K call = this.keySelector.call(t);
                Object obj = call != null ? call : NULL_KEY;
                GroupedUnicast<K, V> groupedUnicast = this.groups.get(obj);
                if (groupedUnicast != null) {
                    z = true;
                } else {
                    if (this.cancelled != 0) {
                        return;
                    }
                    groupedUnicast = GroupedUnicast.createWith(call, this.bufferSize, this, this.delayError);
                    this.groups.put(obj, groupedUnicast);
                    GROUP_COUNT.getAndIncrement(this);
                    queue.offer(groupedUnicast);
                    drain();
                    z = false;
                }
                try {
                    groupedUnicast.onNext(this.valueSelector.call(t));
                    if (z) {
                        this.s.request(1L);
                    }
                } catch (Throwable th) {
                    unsubscribe();
                    errorAll(subscriber, queue, th);
                }
            } catch (Throwable th2) {
                unsubscribe();
                errorAll(subscriber, queue, th2);
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.done) {
                RxJavaPlugins.getInstance().getErrorHandler().handleError(th);
                return;
            }
            this.error = th;
            this.done = true;
            GROUP_COUNT.decrementAndGet(this);
            drain();
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.done) {
                return;
            }
            Iterator<GroupedUnicast<K, V>> it = this.groups.values().iterator();
            while (it.hasNext()) {
                it.next().onComplete();
            }
            this.groups.clear();
            this.done = true;
            GROUP_COUNT.decrementAndGet(this);
            drain();
        }

        public void requestMore(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required but it was " + j);
            }
            BackpressureUtils.getAndAddRequest(REQUESTED, this, j);
            drain();
        }

        public void cancel() {
            if (CANCELLED.compareAndSet(this, 0, 1) && GROUP_COUNT.decrementAndGet(this) == 0) {
                unsubscribe();
            }
        }

        public void cancel(K k) {
            if (k == null) {
                k = (K) NULL_KEY;
            }
            if (this.groups.remove(k) == null || GROUP_COUNT.decrementAndGet(this) != 0) {
                return;
            }
            unsubscribe();
        }

        void drain() {
            if (WIP.getAndIncrement(this) != 0) {
                return;
            }
            Queue<GroupedObservable<K, V>> queue = this.queue;
            Subscriber<? super GroupedObservable<K, V>> subscriber = this.actual;
            int i = 1;
            while (!checkTerminated(this.done, queue.isEmpty(), subscriber, queue)) {
                long j = this.requested;
                boolean z = j == LongCompanionObject.MAX_VALUE;
                long j2 = 0;
                while (j != 0) {
                    boolean z2 = this.done;
                    GroupedObservable<K, V> poll = queue.poll();
                    boolean z3 = poll == null;
                    if (checkTerminated(z2, z3, subscriber, queue)) {
                        return;
                    }
                    if (z3) {
                        break;
                    }
                    subscriber.onNext(poll);
                    j--;
                    j2--;
                }
                if (j2 != 0) {
                    if (!z) {
                        REQUESTED.addAndGet(this, j2);
                    }
                    this.s.request(-j2);
                }
                i = WIP.addAndGet(this, -i);
                if (i == 0) {
                    return;
                }
            }
        }

        void errorAll(Subscriber<? super GroupedObservable<K, V>> subscriber, Queue<?> queue, Throwable th) {
            queue.clear();
            ArrayList arrayList = new ArrayList(this.groups.values());
            this.groups.clear();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((GroupedUnicast) it.next()).onError(th);
            }
            subscriber.onError(th);
        }

        boolean checkTerminated(boolean z, boolean z2, Subscriber<? super GroupedObservable<K, V>> subscriber, Queue<?> queue) {
            if (!z) {
                return false;
            }
            Throwable th = this.error;
            if (th != null) {
                errorAll(subscriber, queue, th);
                return true;
            }
            if (!z2) {
                return false;
            }
            this.actual.onCompleted();
            return true;
        }
    }

    static final class GroupedUnicast<K, T> extends GroupedObservable<K, T> {
        final State<T, K> state;

        public static <T, K> GroupedUnicast<K, T> createWith(K k, int i, GroupBySubscriber<?, K, T> groupBySubscriber, boolean z) {
            return new GroupedUnicast<>(k, new State(i, groupBySubscriber, k, z));
        }

        protected GroupedUnicast(K k, State<T, K> state) {
            super(k, state);
            this.state = state;
        }

        public void onNext(T t) {
            this.state.onNext(t);
        }

        public void onError(Throwable th) {
            this.state.onError(th);
        }

        public void onComplete() {
            this.state.onComplete();
        }
    }

    static final class State<T, K> extends AtomicInteger implements Producer, Subscription, Observable.OnSubscribe<T> {
        private static final long serialVersionUID = -3852313036005250360L;
        volatile Subscriber<? super T> actual;
        volatile int cancelled;
        final boolean delayError;
        volatile boolean done;
        Throwable error;
        final K key;
        volatile int once;
        final GroupBySubscriber<?, K, T> parent;
        final Queue<Object> queue = new ConcurrentLinkedQueue();
        volatile long requested;
        static final AtomicLongFieldUpdater<State> REQUESTED = AtomicLongFieldUpdater.newUpdater(State.class, "requested");
        static final AtomicIntegerFieldUpdater<State> CANCELLED = AtomicIntegerFieldUpdater.newUpdater(State.class, "cancelled");
        static final AtomicReferenceFieldUpdater<State, Subscriber> ACTUAL = AtomicReferenceFieldUpdater.newUpdater(State.class, Subscriber.class, "actual");
        static final AtomicIntegerFieldUpdater<State> ONCE = AtomicIntegerFieldUpdater.newUpdater(State.class, "once");

        public State(int i, GroupBySubscriber<?, K, T> groupBySubscriber, K k, boolean z) {
            this.parent = groupBySubscriber;
            this.key = k;
            this.delayError = z;
        }

        @Override // rx.Producer
        public void request(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= required but it was " + j);
            }
            if (j != 0) {
                BackpressureUtils.getAndAddRequest(REQUESTED, this, j);
                drain();
            }
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return this.cancelled != 0;
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            if (CANCELLED.compareAndSet(this, 0, 1) && getAndIncrement() == 0) {
                this.parent.cancel(this.key);
            }
        }

        @Override // rx.functions.Action1
        public void call(Subscriber<? super T> subscriber) {
            if (ONCE.compareAndSet(this, 0, 1)) {
                subscriber.add(this);
                subscriber.setProducer(this);
                ACTUAL.lazySet(this, subscriber);
                drain();
                return;
            }
            subscriber.onError(new IllegalStateException("Only one Subscriber allowed!"));
        }

        public void onNext(T t) {
            if (t == null) {
                this.error = new NullPointerException();
                this.done = true;
            } else {
                this.queue.offer(NotificationLite.instance().next(t));
            }
            drain();
        }

        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        public void onComplete() {
            this.done = true;
            drain();
        }

        void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            Queue<Object> queue = this.queue;
            boolean z = this.delayError;
            Subscriber<? super T> subscriber = this.actual;
            NotificationLite instance = NotificationLite.instance();
            int i = 1;
            while (true) {
                if (subscriber != null) {
                    if (checkTerminated(this.done, queue.isEmpty(), subscriber, z)) {
                        return;
                    }
                    long j = this.requested;
                    boolean z2 = j == LongCompanionObject.MAX_VALUE;
                    long j2 = 0;
                    while (j != 0) {
                        boolean z3 = this.done;
                        Object poll = queue.poll();
                        boolean z4 = poll == null;
                        if (checkTerminated(z3, z4, subscriber, z)) {
                            return;
                        }
                        if (z4) {
                            break;
                        }
                        subscriber.onNext((Object) instance.getValue(poll));
                        j--;
                        j2--;
                    }
                    if (j2 != 0) {
                        if (!z2) {
                            REQUESTED.addAndGet(this, j2);
                        }
                        this.parent.s.request(-j2);
                    }
                }
                i = addAndGet(-i);
                if (i == 0) {
                    return;
                }
                if (subscriber == null) {
                    subscriber = this.actual;
                }
            }
        }

        boolean checkTerminated(boolean z, boolean z2, Subscriber<? super T> subscriber, boolean z3) {
            if (this.cancelled != 0) {
                this.queue.clear();
                this.parent.cancel(this.key);
                return true;
            }
            if (!z) {
                return false;
            }
            if (z3) {
                if (!z2) {
                    return false;
                }
                Throwable th = this.error;
                if (th != null) {
                    subscriber.onError(th);
                } else {
                    subscriber.onCompleted();
                }
                return true;
            }
            Throwable th2 = this.error;
            if (th2 != null) {
                this.queue.clear();
                subscriber.onError(th2);
                return true;
            }
            if (!z2) {
                return false;
            }
            subscriber.onCompleted();
            return true;
        }
    }
}
