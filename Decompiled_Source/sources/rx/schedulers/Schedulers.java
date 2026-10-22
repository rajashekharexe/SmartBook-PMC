package rx.schedulers;

import java.util.concurrent.Executor;
import rx.Scheduler;
import rx.internal.schedulers.ExecutorScheduler;
import rx.internal.schedulers.GenericScheduledExecutorService;
import rx.internal.schedulers.SchedulerLifecycle;
import rx.internal.util.RxRingBuffer;
import rx.plugins.RxJavaPlugins;
import rx.plugins.RxJavaSchedulersHook;

/* loaded from: classes2.dex */
public final class Schedulers {
    private static final Schedulers INSTANCE = new Schedulers();
    private final Scheduler computationScheduler;
    private final Scheduler ioScheduler;
    private final Scheduler newThreadScheduler;

    private Schedulers() {
        RxJavaSchedulersHook schedulersHook = RxJavaPlugins.getInstance().getSchedulersHook();
        Scheduler computationScheduler = schedulersHook.getComputationScheduler();
        if (computationScheduler != null) {
            this.computationScheduler = computationScheduler;
        } else {
            this.computationScheduler = RxJavaSchedulersHook.createComputationScheduler();
        }
        Scheduler iOScheduler = schedulersHook.getIOScheduler();
        if (iOScheduler != null) {
            this.ioScheduler = iOScheduler;
        } else {
            this.ioScheduler = RxJavaSchedulersHook.createIoScheduler();
        }
        Scheduler newThreadScheduler = schedulersHook.getNewThreadScheduler();
        if (newThreadScheduler != null) {
            this.newThreadScheduler = newThreadScheduler;
        } else {
            this.newThreadScheduler = RxJavaSchedulersHook.createNewThreadScheduler();
        }
    }

    public static Scheduler immediate() {
        return rx.internal.schedulers.ImmediateScheduler.INSTANCE;
    }

    public static Scheduler trampoline() {
        return rx.internal.schedulers.TrampolineScheduler.INSTANCE;
    }

    public static Scheduler newThread() {
        return INSTANCE.newThreadScheduler;
    }

    public static Scheduler computation() {
        return INSTANCE.computationScheduler;
    }

    public static Scheduler io() {
        return INSTANCE.ioScheduler;
    }

    public static TestScheduler test() {
        return new TestScheduler();
    }

    public static Scheduler from(Executor executor) {
        return new ExecutorScheduler(executor);
    }

    static void start() {
        Schedulers schedulers = INSTANCE;
        synchronized (schedulers) {
            Object obj = schedulers.computationScheduler;
            if (obj instanceof SchedulerLifecycle) {
                ((SchedulerLifecycle) obj).start();
            }
            Object obj2 = schedulers.ioScheduler;
            if (obj2 instanceof SchedulerLifecycle) {
                ((SchedulerLifecycle) obj2).start();
            }
            Object obj3 = schedulers.newThreadScheduler;
            if (obj3 instanceof SchedulerLifecycle) {
                ((SchedulerLifecycle) obj3).start();
            }
            GenericScheduledExecutorService.INSTANCE.start();
            RxRingBuffer.SPSC_POOL.start();
            RxRingBuffer.SPMC_POOL.start();
        }
    }

    public static void shutdown() {
        Schedulers schedulers = INSTANCE;
        synchronized (schedulers) {
            Object obj = schedulers.computationScheduler;
            if (obj instanceof SchedulerLifecycle) {
                ((SchedulerLifecycle) obj).shutdown();
            }
            Object obj2 = schedulers.ioScheduler;
            if (obj2 instanceof SchedulerLifecycle) {
                ((SchedulerLifecycle) obj2).shutdown();
            }
            Object obj3 = schedulers.newThreadScheduler;
            if (obj3 instanceof SchedulerLifecycle) {
                ((SchedulerLifecycle) obj3).shutdown();
            }
            GenericScheduledExecutorService.INSTANCE.shutdown();
            RxRingBuffer.SPSC_POOL.shutdown();
            RxRingBuffer.SPMC_POOL.shutdown();
        }
    }
}
