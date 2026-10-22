package rx.android.plugins;

import com.crashlytics.android.answers.BackgroundManager$$ExternalSyntheticBackportWithForwarding0;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class RxAndroidPlugins {
    private static final RxAndroidPlugins INSTANCE = new RxAndroidPlugins();
    private final AtomicReference<RxAndroidSchedulersHook> schedulersHook = new AtomicReference<>();

    public static RxAndroidPlugins getInstance() {
        return INSTANCE;
    }

    RxAndroidPlugins() {
    }

    public void reset() {
        this.schedulersHook.set(null);
    }

    public RxAndroidSchedulersHook getSchedulersHook() {
        if (this.schedulersHook.get() == null) {
            BackgroundManager$$ExternalSyntheticBackportWithForwarding0.m(this.schedulersHook, null, RxAndroidSchedulersHook.getDefaultInstance());
        }
        return this.schedulersHook.get();
    }

    public void registerSchedulersHook(RxAndroidSchedulersHook rxAndroidSchedulersHook) {
        if (BackgroundManager$$ExternalSyntheticBackportWithForwarding0.m(this.schedulersHook, null, rxAndroidSchedulersHook)) {
            return;
        }
        throw new IllegalStateException("Another strategy was already registered: " + this.schedulersHook.get());
    }
}
