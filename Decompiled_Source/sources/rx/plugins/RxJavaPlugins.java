package rx.plugins;

import com.crashlytics.android.answers.BackgroundManager$$ExternalSyntheticBackportWithForwarding0;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public class RxJavaPlugins {
    private static final RxJavaPlugins INSTANCE = new RxJavaPlugins();
    static final RxJavaErrorHandler DEFAULT_ERROR_HANDLER = new RxJavaErrorHandler() { // from class: rx.plugins.RxJavaPlugins.1
    };
    private final AtomicReference<RxJavaErrorHandler> errorHandler = new AtomicReference<>();
    private final AtomicReference<RxJavaObservableExecutionHook> observableExecutionHook = new AtomicReference<>();
    private final AtomicReference<RxJavaSingleExecutionHook> singleExecutionHook = new AtomicReference<>();
    private final AtomicReference<RxJavaSchedulersHook> schedulersHook = new AtomicReference<>();

    public static RxJavaPlugins getInstance() {
        return INSTANCE;
    }

    RxJavaPlugins() {
    }

    public void reset() {
        RxJavaPlugins rxJavaPlugins = INSTANCE;
        rxJavaPlugins.errorHandler.set(null);
        rxJavaPlugins.observableExecutionHook.set(null);
        rxJavaPlugins.singleExecutionHook.set(null);
        rxJavaPlugins.schedulersHook.set(null);
    }

    public RxJavaErrorHandler getErrorHandler() {
        if (this.errorHandler.get() == null) {
            Object pluginImplementationViaProperty = getPluginImplementationViaProperty(RxJavaErrorHandler.class, System.getProperties());
            if (pluginImplementationViaProperty == null) {
                BackgroundManager$$ExternalSyntheticBackportWithForwarding0.m(this.errorHandler, null, DEFAULT_ERROR_HANDLER);
            } else {
                BackgroundManager$$ExternalSyntheticBackportWithForwarding0.m(this.errorHandler, null, (RxJavaErrorHandler) pluginImplementationViaProperty);
            }
        }
        return this.errorHandler.get();
    }

    public void registerErrorHandler(RxJavaErrorHandler rxJavaErrorHandler) {
        if (BackgroundManager$$ExternalSyntheticBackportWithForwarding0.m(this.errorHandler, null, rxJavaErrorHandler)) {
            return;
        }
        throw new IllegalStateException("Another strategy was already registered: " + this.errorHandler.get());
    }

    public RxJavaObservableExecutionHook getObservableExecutionHook() {
        if (this.observableExecutionHook.get() == null) {
            Object pluginImplementationViaProperty = getPluginImplementationViaProperty(RxJavaObservableExecutionHook.class, System.getProperties());
            if (pluginImplementationViaProperty == null) {
                BackgroundManager$$ExternalSyntheticBackportWithForwarding0.m(this.observableExecutionHook, null, RxJavaObservableExecutionHookDefault.getInstance());
            } else {
                BackgroundManager$$ExternalSyntheticBackportWithForwarding0.m(this.observableExecutionHook, null, (RxJavaObservableExecutionHook) pluginImplementationViaProperty);
            }
        }
        return this.observableExecutionHook.get();
    }

    public void registerObservableExecutionHook(RxJavaObservableExecutionHook rxJavaObservableExecutionHook) {
        if (BackgroundManager$$ExternalSyntheticBackportWithForwarding0.m(this.observableExecutionHook, null, rxJavaObservableExecutionHook)) {
            return;
        }
        throw new IllegalStateException("Another strategy was already registered: " + this.observableExecutionHook.get());
    }

    public RxJavaSingleExecutionHook getSingleExecutionHook() {
        if (this.singleExecutionHook.get() == null) {
            Object pluginImplementationViaProperty = getPluginImplementationViaProperty(RxJavaSingleExecutionHook.class, System.getProperties());
            if (pluginImplementationViaProperty == null) {
                BackgroundManager$$ExternalSyntheticBackportWithForwarding0.m(this.singleExecutionHook, null, RxJavaSingleExecutionHookDefault.getInstance());
            } else {
                BackgroundManager$$ExternalSyntheticBackportWithForwarding0.m(this.singleExecutionHook, null, (RxJavaSingleExecutionHook) pluginImplementationViaProperty);
            }
        }
        return this.singleExecutionHook.get();
    }

    public void registerSingleExecutionHook(RxJavaSingleExecutionHook rxJavaSingleExecutionHook) {
        if (BackgroundManager$$ExternalSyntheticBackportWithForwarding0.m(this.singleExecutionHook, null, rxJavaSingleExecutionHook)) {
            return;
        }
        throw new IllegalStateException("Another strategy was already registered: " + this.singleExecutionHook.get());
    }

    static Object getPluginImplementationViaProperty(Class<?> cls, Properties properties) {
        Properties properties2 = (Properties) properties.clone();
        String simpleName = cls.getSimpleName();
        String property = properties2.getProperty("rxjava.plugin." + simpleName + ".implementation");
        if (property == null) {
            Iterator it = properties2.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                String obj = entry.getKey().toString();
                if (obj.startsWith("rxjava.plugin.") && obj.endsWith(".class") && simpleName.equals(entry.getValue().toString())) {
                    String str = "rxjava.plugin." + obj.substring(0, obj.length() - 6).substring(14) + ".impl";
                    String property2 = properties2.getProperty(str);
                    if (property2 == null) {
                        throw new RuntimeException("Implementing class declaration for " + simpleName + " missing: " + str);
                    }
                    property = property2;
                }
            }
        }
        if (property == null) {
            return null;
        }
        try {
            return Class.forName(property).asSubclass(cls).newInstance();
        } catch (ClassCastException unused) {
            throw new RuntimeException(simpleName + " implementation is not an instance of " + simpleName + ": " + property);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(simpleName + " implementation class not found: " + property, e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException(simpleName + " implementation not able to be accessed: " + property, e2);
        } catch (InstantiationException e3) {
            throw new RuntimeException(simpleName + " implementation not able to be instantiated: " + property, e3);
        }
    }

    public RxJavaSchedulersHook getSchedulersHook() {
        if (this.schedulersHook.get() == null) {
            Object pluginImplementationViaProperty = getPluginImplementationViaProperty(RxJavaSchedulersHook.class, System.getProperties());
            if (pluginImplementationViaProperty == null) {
                BackgroundManager$$ExternalSyntheticBackportWithForwarding0.m(this.schedulersHook, null, RxJavaSchedulersHook.getDefaultInstance());
            } else {
                BackgroundManager$$ExternalSyntheticBackportWithForwarding0.m(this.schedulersHook, null, (RxJavaSchedulersHook) pluginImplementationViaProperty);
            }
        }
        return this.schedulersHook.get();
    }

    public void registerSchedulersHook(RxJavaSchedulersHook rxJavaSchedulersHook) {
        if (BackgroundManager$$ExternalSyntheticBackportWithForwarding0.m(this.schedulersHook, null, rxJavaSchedulersHook)) {
            return;
        }
        throw new IllegalStateException("Another strategy was already registered: " + this.schedulersHook.get());
    }
}
