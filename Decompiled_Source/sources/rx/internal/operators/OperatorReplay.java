package rx.internal.operators;

import com.crashlytics.android.answers.BackgroundManager$$ExternalSyntheticBackportWithForwarding0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.internal.LongCompanionObject;
import rx.Observable;
import rx.Producer;
import rx.Scheduler;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.Exceptions;
import rx.exceptions.OnErrorThrowable;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Func0;
import rx.functions.Func1;
import rx.observables.ConnectableObservable;
import rx.schedulers.Timestamped;
import rx.subscriptions.Subscriptions;

/* loaded from: classes2.dex */
public final class OperatorReplay<T> extends ConnectableObservable<T> {
    static final Func0 DEFAULT_UNBOUNDED_FACTORY = new Func0() { // from class: rx.internal.operators.OperatorReplay.1
        @Override // rx.functions.Func0, java.util.concurrent.Callable
        public Object call() {
            return new UnboundedReplayBuffer(16);
        }
    };
    final Func0<? extends ReplayBuffer<T>> bufferFactory;
    final AtomicReference<ReplaySubscriber<T>> current;
    final Observable<? extends T> source;

    interface ReplayBuffer<T> {
        void complete();

        void error(Throwable th);

        void next(T t);

        void replay(InnerProducer<T> innerProducer);
    }

    public static <T, U, R> Observable<R> multicastSelector(final Func0<? extends ConnectableObservable<U>> func0, final Func1<? super Observable<U>, ? extends Observable<R>> func1) {
        return Observable.create(new Observable.OnSubscribe<R>() { // from class: rx.internal.operators.OperatorReplay.2
            @Override // rx.functions.Action1
            public void call(final Subscriber<? super R> subscriber) {
                try {
                    ConnectableObservable connectableObservable = (ConnectableObservable) Func0.this.call();
                    ((Observable) func1.call(connectableObservable)).subscribe((Subscriber) subscriber);
                    connectableObservable.connect(new Action1<Subscription>() { // from class: rx.internal.operators.OperatorReplay.2.1
                        @Override // rx.functions.Action1
                        public void call(Subscription subscription) {
                            subscriber.add(subscription);
                        }
                    });
                } catch (Throwable th) {
                    Exceptions.throwOrReport(th, subscriber);
                }
            }
        });
    }

    public static <T> ConnectableObservable<T> observeOn(final ConnectableObservable<T> connectableObservable, Scheduler scheduler) {
        final Observable<T> observeOn = connectableObservable.observeOn(scheduler);
        return new ConnectableObservable<T>(new Observable.OnSubscribe<T>() { // from class: rx.internal.operators.OperatorReplay.3
            @Override // rx.functions.Action1
            public void call(final Subscriber<? super T> subscriber) {
                Observable.this.unsafeSubscribe(new Subscriber<T>(subscriber) { // from class: rx.internal.operators.OperatorReplay.3.1
                    @Override // rx.Observer
                    public void onNext(T t) {
                        subscriber.onNext(t);
                    }

                    @Override // rx.Observer
                    public void onError(Throwable th) {
                        subscriber.onError(th);
                    }

                    @Override // rx.Observer
                    public void onCompleted() {
                        subscriber.onCompleted();
                    }
                });
            }
        }) { // from class: rx.internal.operators.OperatorReplay.4
            @Override // rx.observables.ConnectableObservable
            public void connect(Action1<? super Subscription> action1) {
                connectableObservable.connect(action1);
            }
        };
    }

    public static <T> ConnectableObservable<T> create(Observable<? extends T> observable) {
        return create(observable, DEFAULT_UNBOUNDED_FACTORY);
    }

    public static <T> ConnectableObservable<T> create(Observable<? extends T> observable, final int i) {
        if (i == Integer.MAX_VALUE) {
            return create(observable);
        }
        return create(observable, new Func0<ReplayBuffer<T>>() { // from class: rx.internal.operators.OperatorReplay.5
            @Override // rx.functions.Func0, java.util.concurrent.Callable
            public ReplayBuffer<T> call() {
                return new SizeBoundReplayBuffer(i);
            }
        });
    }

    public static <T> ConnectableObservable<T> create(Observable<? extends T> observable, long j, TimeUnit timeUnit, Scheduler scheduler) {
        return create(observable, j, timeUnit, scheduler, Integer.MAX_VALUE);
    }

    public static <T> ConnectableObservable<T> create(Observable<? extends T> observable, long j, TimeUnit timeUnit, final Scheduler scheduler, final int i) {
        final long millis = timeUnit.toMillis(j);
        return create(observable, new Func0<ReplayBuffer<T>>() { // from class: rx.internal.operators.OperatorReplay.6
            @Override // rx.functions.Func0, java.util.concurrent.Callable
            public ReplayBuffer<T> call() {
                return new SizeAndTimeBoundReplayBuffer(i, millis, scheduler);
            }
        });
    }

    static <T> ConnectableObservable<T> create(Observable<? extends T> observable, final Func0<? extends ReplayBuffer<T>> func0) {
        final AtomicReference atomicReference = new AtomicReference();
        return new OperatorReplay(new Observable.OnSubscribe<T>() { // from class: rx.internal.operators.OperatorReplay.7
            @Override // rx.functions.Action1
            public void call(Subscriber<? super T> subscriber) {
                ReplaySubscriber replaySubscriber;
                while (true) {
                    replaySubscriber = (ReplaySubscriber) atomicReference.get();
                    if (replaySubscriber != null) {
                        break;
                    }
                    ReplaySubscriber replaySubscriber2 = new ReplaySubscriber(atomicReference, (ReplayBuffer) func0.call());
                    replaySubscriber2.init();
                    if (BackgroundManager$$ExternalSyntheticBackportWithForwarding0.m(atomicReference, replaySubscriber, replaySubscriber2)) {
                        replaySubscriber = replaySubscriber2;
                        break;
                    }
                }
                InnerProducer<T> innerProducer = new InnerProducer<>(replaySubscriber, subscriber);
                replaySubscriber.add((InnerProducer) innerProducer);
                subscriber.add(innerProducer);
                replaySubscriber.buffer.replay(innerProducer);
                subscriber.setProducer(innerProducer);
            }
        }, observable, atomicReference, func0);
    }

    private OperatorReplay(Observable.OnSubscribe<T> onSubscribe, Observable<? extends T> observable, AtomicReference<ReplaySubscriber<T>> atomicReference, Func0<? extends ReplayBuffer<T>> func0) {
        super(onSubscribe);
        this.source = observable;
        this.current = atomicReference;
        this.bufferFactory = func0;
    }

    @Override // rx.observables.ConnectableObservable
    public void connect(Action1<? super Subscription> action1) {
        ReplaySubscriber<T> replaySubscriber;
        while (true) {
            replaySubscriber = this.current.get();
            if (replaySubscriber != null && !replaySubscriber.isUnsubscribed()) {
                break;
            }
            ReplaySubscriber<T> replaySubscriber2 = new ReplaySubscriber<>(this.current, this.bufferFactory.call());
            replaySubscriber2.init();
            if (BackgroundManager$$ExternalSyntheticBackportWithForwarding0.m(this.current, replaySubscriber, replaySubscriber2)) {
                replaySubscriber = replaySubscriber2;
                break;
            }
        }
        boolean z = false;
        if (!replaySubscriber.shouldConnect.get() && replaySubscriber.shouldConnect.compareAndSet(false, true)) {
            z = true;
        }
        action1.call(replaySubscriber);
        if (z) {
            this.source.unsafeSubscribe(replaySubscriber);
        }
    }

    static final class ReplaySubscriber<T> extends Subscriber<T> implements Subscription {
        static final InnerProducer[] EMPTY = new InnerProducer[0];
        static final InnerProducer[] TERMINATED = new InnerProducer[0];
        final ReplayBuffer<T> buffer;
        boolean done;
        boolean emitting;
        long maxChildRequested;
        long maxUpstreamRequested;
        boolean missed;
        volatile Producer producer;
        final NotificationLite<T> nl = NotificationLite.instance();
        final AtomicReference<InnerProducer[]> producers = new AtomicReference<>(EMPTY);
        final AtomicBoolean shouldConnect = new AtomicBoolean();

        public ReplaySubscriber(AtomicReference<ReplaySubscriber<T>> atomicReference, ReplayBuffer<T> replayBuffer) {
            this.buffer = replayBuffer;
            request(0L);
        }

        void init() {
            add(Subscriptions.create(new Action0() { // from class: rx.internal.operators.OperatorReplay.ReplaySubscriber.1
                @Override // rx.functions.Action0
                public void call() {
                    ReplaySubscriber.this.producers.getAndSet(ReplaySubscriber.TERMINATED);
                }
            }));
        }

        boolean add(InnerProducer<T> innerProducer) {
            InnerProducer[] innerProducerArr;
            InnerProducer[] innerProducerArr2;
            innerProducer.getClass();
            do {
                innerProducerArr = this.producers.get();
                if (innerProducerArr == TERMINATED) {
                    return false;
                }
                int length = innerProducerArr.length;
                innerProducerArr2 = new InnerProducer[length + 1];
                System.arraycopy(innerProducerArr, 0, innerProducerArr2, 0, length);
                innerProducerArr2[length] = innerProducer;
            } while (!BackgroundManager$$ExternalSyntheticBackportWithForwarding0.m(this.producers, innerProducerArr, innerProducerArr2));
            return true;
        }

        void remove(InnerProducer<T> innerProducer) {
            InnerProducer[] innerProducerArr;
            InnerProducer[] innerProducerArr2;
            do {
                innerProducerArr = this.producers.get();
                if (innerProducerArr == EMPTY || innerProducerArr == TERMINATED) {
                    return;
                }
                int length = innerProducerArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        i = -1;
                        break;
                    } else if (innerProducerArr[i].equals(innerProducer)) {
                        break;
                    } else {
                        i++;
                    }
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    innerProducerArr2 = EMPTY;
                } else {
                    InnerProducer[] innerProducerArr3 = new InnerProducer[length - 1];
                    System.arraycopy(innerProducerArr, 0, innerProducerArr3, 0, i);
                    System.arraycopy(innerProducerArr, i + 1, innerProducerArr3, i, (length - i) - 1);
                    innerProducerArr2 = innerProducerArr3;
                }
            } while (!BackgroundManager$$ExternalSyntheticBackportWithForwarding0.m(this.producers, innerProducerArr, innerProducerArr2));
        }

        @Override // rx.Subscriber
        public void setProducer(Producer producer) {
            if (this.producer != null) {
                throw new IllegalStateException("Only a single producer can be set on a Subscriber.");
            }
            this.producer = producer;
            manageRequests();
            replay();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            this.buffer.next(t);
            replay();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.done) {
                return;
            }
            this.done = true;
            try {
                this.buffer.error(th);
                replay();
            } finally {
                unsubscribe();
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.done) {
                return;
            }
            this.done = true;
            try {
                this.buffer.complete();
                replay();
            } finally {
                unsubscribe();
            }
        }

        void manageRequests() {
            if (isUnsubscribed()) {
                return;
            }
            synchronized (this) {
                if (this.emitting) {
                    this.missed = true;
                    return;
                }
                this.emitting = true;
                while (!isUnsubscribed()) {
                    InnerProducer[] innerProducerArr = this.producers.get();
                    long j = this.maxChildRequested;
                    long j2 = j;
                    for (InnerProducer innerProducer : innerProducerArr) {
                        j2 = Math.max(j2, innerProducer.totalRequested.get());
                    }
                    long j3 = this.maxUpstreamRequested;
                    Producer producer = this.producer;
                    long j4 = j2 - j;
                    if (j4 != 0) {
                        this.maxChildRequested = j2;
                        if (producer == null) {
                            long j5 = j3 + j4;
                            if (j5 < 0) {
                                j5 = LongCompanionObject.MAX_VALUE;
                            }
                            this.maxUpstreamRequested = j5;
                        } else if (j3 != 0) {
                            this.maxUpstreamRequested = 0L;
                            producer.request(j3 + j4);
                        } else {
                            producer.request(j4);
                        }
                    } else if (j3 != 0 && producer != null) {
                        this.maxUpstreamRequested = 0L;
                        producer.request(j3);
                    }
                    synchronized (this) {
                        if (!this.missed) {
                            this.emitting = false;
                            return;
                        }
                        this.missed = false;
                    }
                }
            }
        }

        void replay() {
            for (InnerProducer<T> innerProducer : this.producers.get()) {
                this.buffer.replay(innerProducer);
            }
        }
    }

    static final class InnerProducer<T> extends AtomicLong implements Producer, Subscription {
        static final long UNSUBSCRIBED = Long.MIN_VALUE;
        private static final long serialVersionUID = -4453897557930727610L;
        final Subscriber<? super T> child;
        boolean emitting;
        Object index;
        boolean missed;
        final ReplaySubscriber<T> parent;
        final AtomicLong totalRequested = new AtomicLong();

        public InnerProducer(ReplaySubscriber<T> replaySubscriber, Subscriber<? super T> subscriber) {
            this.parent = replaySubscriber;
            this.child = subscriber;
        }

        @Override // rx.Producer
        public void request(long j) {
            long j2;
            long j3;
            if (j < 0) {
                return;
            }
            do {
                j2 = get();
                if (j2 == Long.MIN_VALUE) {
                    return;
                }
                if (j2 >= 0 && j == 0) {
                    return;
                }
                j3 = j2 + j;
                if (j3 < 0) {
                    j3 = LongCompanionObject.MAX_VALUE;
                }
            } while (!compareAndSet(j2, j3));
            addTotalRequested(j);
            this.parent.manageRequests();
            this.parent.buffer.replay(this);
        }

        void addTotalRequested(long j) {
            long j2;
            long j3;
            do {
                j2 = this.totalRequested.get();
                j3 = j2 + j;
                if (j3 < 0) {
                    j3 = LongCompanionObject.MAX_VALUE;
                }
            } while (!this.totalRequested.compareAndSet(j2, j3));
        }

        public long produced(long j) {
            long j2;
            long j3;
            if (j <= 0) {
                throw new IllegalArgumentException("Cant produce zero or less");
            }
            do {
                j2 = get();
                if (j2 == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                j3 = j2 - j;
                if (j3 < 0) {
                    throw new IllegalStateException("More produced (" + j + ") than requested (" + j2 + ")");
                }
            } while (!compareAndSet(j2, j3));
            return j3;
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return get() == Long.MIN_VALUE;
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            if (get() == Long.MIN_VALUE || getAndSet(Long.MIN_VALUE) == Long.MIN_VALUE) {
                return;
            }
            this.parent.remove(this);
            this.parent.manageRequests();
        }

        <U> U index() {
            return (U) this.index;
        }
    }

    static final class UnboundedReplayBuffer<T> extends ArrayList<Object> implements ReplayBuffer<T> {
        private static final long serialVersionUID = 7063189396499112664L;
        final NotificationLite<T> nl;
        volatile int size;

        public UnboundedReplayBuffer(int i) {
            super(i);
            this.nl = NotificationLite.instance();
        }

        @Override // rx.internal.operators.OperatorReplay.ReplayBuffer
        public void next(T t) {
            add(this.nl.next(t));
            this.size++;
        }

        @Override // rx.internal.operators.OperatorReplay.ReplayBuffer
        public void error(Throwable th) {
            add(this.nl.error(th));
            this.size++;
        }

        @Override // rx.internal.operators.OperatorReplay.ReplayBuffer
        public void complete() {
            add(this.nl.completed());
            this.size++;
        }

        @Override // rx.internal.operators.OperatorReplay.ReplayBuffer
        public void replay(InnerProducer<T> innerProducer) {
            synchronized (innerProducer) {
                if (innerProducer.emitting) {
                    innerProducer.missed = true;
                    return;
                }
                innerProducer.emitting = true;
                while (!innerProducer.isUnsubscribed()) {
                    int i = this.size;
                    Integer num = (Integer) innerProducer.index();
                    int intValue = num != null ? num.intValue() : 0;
                    long j = innerProducer.get();
                    long j2 = j;
                    long j3 = 0;
                    while (j2 != 0 && intValue < i) {
                        Object obj = get(intValue);
                        try {
                            if (this.nl.accept(innerProducer.child, obj) || innerProducer.isUnsubscribed()) {
                                return;
                            }
                            intValue++;
                            j2--;
                            j3++;
                        } catch (Throwable th) {
                            Exceptions.throwIfFatal(th);
                            innerProducer.unsubscribe();
                            if (this.nl.isError(obj) || this.nl.isCompleted(obj)) {
                                return;
                            }
                            innerProducer.child.onError(OnErrorThrowable.addValueAsLastCause(th, this.nl.getValue(obj)));
                            return;
                        }
                    }
                    if (j3 != 0) {
                        innerProducer.index = Integer.valueOf(intValue);
                        if (j != LongCompanionObject.MAX_VALUE) {
                            innerProducer.produced(j3);
                        }
                    }
                    synchronized (innerProducer) {
                        if (!innerProducer.missed) {
                            innerProducer.emitting = false;
                            return;
                        }
                        innerProducer.missed = false;
                    }
                }
            }
        }
    }

    static final class Node extends AtomicReference<Node> {
        private static final long serialVersionUID = 245354315435971818L;
        final long index;
        final Object value;

        public Node(Object obj, long j) {
            this.value = obj;
            this.index = j;
        }
    }

    static class BoundedReplayBuffer<T> extends AtomicReference<Node> implements ReplayBuffer<T> {
        private static final long serialVersionUID = 2346567790059478686L;
        long index;
        final NotificationLite<T> nl = NotificationLite.instance();
        int size;
        Node tail;

        Object enterTransform(Object obj) {
            return obj;
        }

        Object leaveTransform(Object obj) {
            return obj;
        }

        void truncate() {
        }

        void truncateFinal() {
        }

        public BoundedReplayBuffer() {
            Node node = new Node(null, 0L);
            this.tail = node;
            set(node);
        }

        final void addLast(Node node) {
            this.tail.set(node);
            this.tail = node;
            this.size++;
        }

        final void removeFirst() {
            Node node = get().get();
            if (node == null) {
                throw new IllegalStateException("Empty list!");
            }
            this.size--;
            setFirst(node);
        }

        final void removeSome(int i) {
            Node node = get();
            while (i > 0) {
                node = node.get();
                i--;
                this.size--;
            }
            setFirst(node);
        }

        final void setFirst(Node node) {
            set(node);
        }

        @Override // rx.internal.operators.OperatorReplay.ReplayBuffer
        public final void next(T t) {
            Object enterTransform = enterTransform(this.nl.next(t));
            long j = this.index + 1;
            this.index = j;
            addLast(new Node(enterTransform, j));
            truncate();
        }

        @Override // rx.internal.operators.OperatorReplay.ReplayBuffer
        public final void error(Throwable th) {
            Object enterTransform = enterTransform(this.nl.error(th));
            long j = this.index + 1;
            this.index = j;
            addLast(new Node(enterTransform, j));
            truncateFinal();
        }

        @Override // rx.internal.operators.OperatorReplay.ReplayBuffer
        public final void complete() {
            Object enterTransform = enterTransform(this.nl.completed());
            long j = this.index + 1;
            this.index = j;
            addLast(new Node(enterTransform, j));
            truncateFinal();
        }

        @Override // rx.internal.operators.OperatorReplay.ReplayBuffer
        public final void replay(InnerProducer<T> innerProducer) {
            Node node;
            synchronized (innerProducer) {
                if (innerProducer.emitting) {
                    innerProducer.missed = true;
                    return;
                }
                innerProducer.emitting = true;
                while (!innerProducer.isUnsubscribed()) {
                    long j = innerProducer.get();
                    boolean z = j == LongCompanionObject.MAX_VALUE;
                    Node node2 = (Node) innerProducer.index();
                    if (node2 == null) {
                        node2 = get();
                        innerProducer.index = node2;
                        innerProducer.addTotalRequested(node2.index);
                    }
                    if (innerProducer.isUnsubscribed()) {
                        return;
                    }
                    long j2 = 0;
                    while (j != 0 && (node = node2.get()) != null) {
                        Object leaveTransform = leaveTransform(node.value);
                        try {
                            if (this.nl.accept(innerProducer.child, leaveTransform)) {
                                innerProducer.index = null;
                                return;
                            }
                            j2++;
                            j--;
                            if (innerProducer.isUnsubscribed()) {
                                return;
                            } else {
                                node2 = node;
                            }
                        } catch (Throwable th) {
                            innerProducer.index = null;
                            Exceptions.throwIfFatal(th);
                            innerProducer.unsubscribe();
                            if (this.nl.isError(leaveTransform) || this.nl.isCompleted(leaveTransform)) {
                                return;
                            }
                            innerProducer.child.onError(OnErrorThrowable.addValueAsLastCause(th, this.nl.getValue(leaveTransform)));
                            return;
                        }
                    }
                    if (j2 != 0) {
                        innerProducer.index = node2;
                        if (!z) {
                            innerProducer.produced(j2);
                        }
                    }
                    synchronized (innerProducer) {
                        if (!innerProducer.missed) {
                            innerProducer.emitting = false;
                            return;
                        }
                        innerProducer.missed = false;
                    }
                }
            }
        }

        final void collect(Collection<? super T> collection) {
            Node node = get();
            while (true) {
                node = node.get();
                if (node == null) {
                    return;
                }
                Object leaveTransform = leaveTransform(node.value);
                if (this.nl.isCompleted(leaveTransform) || this.nl.isError(leaveTransform)) {
                    return;
                } else {
                    collection.add(this.nl.getValue(leaveTransform));
                }
            }
        }

        boolean hasError() {
            return this.tail.value != null && this.nl.isError(leaveTransform(this.tail.value));
        }

        boolean hasCompleted() {
            return this.tail.value != null && this.nl.isCompleted(leaveTransform(this.tail.value));
        }
    }

    static final class SizeBoundReplayBuffer<T> extends BoundedReplayBuffer<T> {
        private static final long serialVersionUID = -5898283885385201806L;
        final int limit;

        public SizeBoundReplayBuffer(int i) {
            this.limit = i;
        }

        @Override // rx.internal.operators.OperatorReplay.BoundedReplayBuffer
        void truncate() {
            if (this.size > this.limit) {
                removeFirst();
            }
        }
    }

    static final class SizeAndTimeBoundReplayBuffer<T> extends BoundedReplayBuffer<T> {
        private static final long serialVersionUID = 3457957419649567404L;
        final int limit;
        final long maxAgeInMillis;
        final Scheduler scheduler;

        public SizeAndTimeBoundReplayBuffer(int i, long j, Scheduler scheduler) {
            this.scheduler = scheduler;
            this.limit = i;
            this.maxAgeInMillis = j;
        }

        @Override // rx.internal.operators.OperatorReplay.BoundedReplayBuffer
        Object enterTransform(Object obj) {
            return new Timestamped(this.scheduler.now(), obj);
        }

        @Override // rx.internal.operators.OperatorReplay.BoundedReplayBuffer
        Object leaveTransform(Object obj) {
            return ((Timestamped) obj).getValue();
        }

        @Override // rx.internal.operators.OperatorReplay.BoundedReplayBuffer
        void truncate() {
            Node node;
            long now = this.scheduler.now() - this.maxAgeInMillis;
            Node node2 = (Node) get();
            Node node3 = node2.get();
            int i = 0;
            while (true) {
                Node node4 = node3;
                node = node2;
                node2 = node4;
                if (node2 != null) {
                    if (this.size <= this.limit) {
                        if (((Timestamped) node2.value).getTimestampMillis() > now) {
                            break;
                        }
                        i++;
                        this.size--;
                        node3 = node2.get();
                    } else {
                        i++;
                        this.size--;
                        node3 = node2.get();
                    }
                } else {
                    break;
                }
            }
            if (i != 0) {
                setFirst(node);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x003c, code lost:
        
            setFirst(r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x003f, code lost:
        
            return;
         */
        @Override // rx.internal.operators.OperatorReplay.BoundedReplayBuffer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void truncateFinal() {
            /*
                r10 = this;
                rx.Scheduler r0 = r10.scheduler
                long r0 = r0.now()
                long r2 = r10.maxAgeInMillis
                long r0 = r0 - r2
                java.lang.Object r2 = r10.get()
                rx.internal.operators.OperatorReplay$Node r2 = (rx.internal.operators.OperatorReplay.Node) r2
                java.lang.Object r3 = r2.get()
                rx.internal.operators.OperatorReplay$Node r3 = (rx.internal.operators.OperatorReplay.Node) r3
                r4 = 0
            L16:
                r9 = r3
                r3 = r2
                r2 = r9
                if (r2 == 0) goto L3a
                int r5 = r10.size
                r6 = 1
                if (r5 <= r6) goto L3a
                java.lang.Object r5 = r2.value
                rx.schedulers.Timestamped r5 = (rx.schedulers.Timestamped) r5
                long r7 = r5.getTimestampMillis()
                int r5 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
                if (r5 > 0) goto L3a
                int r4 = r4 + 1
                int r3 = r10.size
                int r3 = r3 - r6
                r10.size = r3
                java.lang.Object r3 = r2.get()
                rx.internal.operators.OperatorReplay$Node r3 = (rx.internal.operators.OperatorReplay.Node) r3
                goto L16
            L3a:
                if (r4 == 0) goto L3f
                r10.setFirst(r3)
            L3f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorReplay.SizeAndTimeBoundReplayBuffer.truncateFinal():void");
        }
    }
}
