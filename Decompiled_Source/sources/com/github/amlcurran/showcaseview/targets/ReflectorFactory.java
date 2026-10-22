package com.github.amlcurran.showcaseview.targets;

import android.app.Activity;
import com.github.amlcurran.showcaseview.targets.Reflector;

/* loaded from: classes.dex */
class ReflectorFactory {
    ReflectorFactory() {
    }

    /* renamed from: com.github.amlcurran.showcaseview.targets.ReflectorFactory$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$github$amlcurran$showcaseview$targets$Reflector$ActionBarType;

        static {
            int[] iArr = new int[Reflector.ActionBarType.values().length];
            $SwitchMap$com$github$amlcurran$showcaseview$targets$Reflector$ActionBarType = iArr;
            try {
                iArr[Reflector.ActionBarType.STANDARD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$github$amlcurran$showcaseview$targets$Reflector$ActionBarType[Reflector.ActionBarType.APP_COMPAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$github$amlcurran$showcaseview$targets$Reflector$ActionBarType[Reflector.ActionBarType.ACTIONBAR_SHERLOCK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static Reflector getReflectorForActivity(Activity activity) {
        int i = AnonymousClass1.$SwitchMap$com$github$amlcurran$showcaseview$targets$Reflector$ActionBarType[searchForActivitySuperClass(activity).ordinal()];
        if (i == 1) {
            return new ActionBarReflector(activity);
        }
        if (i == 2) {
            return new AppCompatReflector(activity);
        }
        if (i != 3) {
            return null;
        }
        return new SherlockReflector(activity);
    }

    private static Reflector.ActionBarType searchForActivitySuperClass(Activity activity) {
        for (Class<?> cls = activity.getClass(); cls != Activity.class; cls = cls.getSuperclass()) {
            if (cls.getSimpleName().equals("SherlockActivity") || cls.getSimpleName().equals("SherlockFragmentActivity")) {
                return Reflector.ActionBarType.ACTIONBAR_SHERLOCK;
            }
            if (cls.getSimpleName().equals("ActionBarActivity")) {
                return Reflector.ActionBarType.APP_COMPAT;
            }
        }
        return Reflector.ActionBarType.STANDARD;
    }
}
