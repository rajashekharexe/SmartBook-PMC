package retrofit2;

import android.os.Handler;
import android.os.Looper;
import java.lang.invoke.MethodHandle;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import okhttp3.Headers$Builder$$ExternalSyntheticApiModelOutline0;
import retrofit2.CallAdapter;

/* loaded from: classes2.dex */
class Platform {
    private static final Platform PLATFORM = findPlatform();

    Executor defaultCallbackExecutor() {
        return null;
    }

    boolean isDefaultMethod(Method method) {
        return false;
    }

    Platform() {
    }

    static Platform get() {
        return PLATFORM;
    }

    private static Platform findPlatform() {
        try {
            try {
                try {
                    Class.forName("android.os.Build");
                    return new Android();
                } catch (ClassNotFoundException unused) {
                    Class.forName("org.robovm.apple.foundation.NSObject");
                    return new IOS();
                }
            } catch (ClassNotFoundException unused2) {
                return new Platform();
            }
        } catch (ClassNotFoundException unused3) {
            Class.forName("java.util.Optional");
            return new Java8();
        }
    }

    CallAdapter.Factory defaultCallAdapterFactory(Executor executor) {
        if (executor != null) {
            return new ExecutorCallAdapterFactory(executor);
        }
        return DefaultCallAdapterFactory.INSTANCE;
    }

    Object invokeDefaultMethod(Method method, Class<?> cls, Object obj, Object... objArr) throws Throwable {
        throw new UnsupportedOperationException();
    }

    static class Java8 extends Platform {
        Java8() {
        }

        @Override // retrofit2.Platform
        boolean isDefaultMethod(Method method) {
            boolean isDefault;
            isDefault = method.isDefault();
            return isDefault;
        }

        @Override // retrofit2.Platform
        Object invokeDefaultMethod(Method method, Class<?> cls, Object obj, Object... objArr) throws Throwable {
            MethodHandle unreflectSpecial;
            MethodHandle bindTo;
            Object invokeWithArguments;
            Constructor declaredConstructor = Headers$Builder$$ExternalSyntheticApiModelOutline0.m$1().getDeclaredConstructor(Class.class, Integer.TYPE);
            declaredConstructor.setAccessible(true);
            unreflectSpecial = Headers$Builder$$ExternalSyntheticApiModelOutline0.m(declaredConstructor.newInstance(cls, -1)).unreflectSpecial(method, cls);
            bindTo = unreflectSpecial.bindTo(obj);
            invokeWithArguments = bindTo.invokeWithArguments(objArr);
            return invokeWithArguments;
        }
    }

    static class Android extends Platform {
        Android() {
        }

        @Override // retrofit2.Platform
        public Executor defaultCallbackExecutor() {
            return new MainThreadExecutor();
        }

        @Override // retrofit2.Platform
        CallAdapter.Factory defaultCallAdapterFactory(Executor executor) {
            return new ExecutorCallAdapterFactory(executor);
        }

        static class MainThreadExecutor implements Executor {
            private final Handler handler = new Handler(Looper.getMainLooper());

            MainThreadExecutor() {
            }

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                this.handler.post(runnable);
            }
        }
    }

    static class IOS extends Platform {
        IOS() {
        }

        @Override // retrofit2.Platform
        public Executor defaultCallbackExecutor() {
            return new MainThreadExecutor();
        }

        @Override // retrofit2.Platform
        CallAdapter.Factory defaultCallAdapterFactory(Executor executor) {
            return new ExecutorCallAdapterFactory(executor);
        }

        static class MainThreadExecutor implements Executor {
            private static Method addOperation;
            private static Object queue;

            MainThreadExecutor() {
            }

            static {
                try {
                    Class<?> cls = Class.forName("org.robovm.apple.foundation.NSOperationQueue");
                    queue = cls.getDeclaredMethod("getMainQueue", null).invoke(null, null);
                    addOperation = cls.getDeclaredMethod("addOperation", Runnable.class);
                } catch (Exception e) {
                    throw new AssertionError(e);
                }
            }

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                try {
                    addOperation.invoke(queue, runnable);
                } catch (IllegalAccessException e) {
                    e = e;
                    throw new AssertionError(e);
                } catch (IllegalArgumentException e2) {
                    e = e2;
                    throw new AssertionError(e);
                } catch (InvocationTargetException e3) {
                    Throwable cause = e3.getCause();
                    if (cause instanceof RuntimeException) {
                        throw ((RuntimeException) cause);
                    }
                    if (cause instanceof Error) {
                        throw ((Error) cause);
                    }
                    throw new RuntimeException(cause);
                }
            }
        }
    }
}
