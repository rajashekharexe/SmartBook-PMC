package com.github.amlcurran.showcaseview.targets;

import android.app.Activity;
import android.graphics.Point;

/* loaded from: classes.dex */
public class ActionViewTarget implements Target {
    ActionBarViewWrapper mActionBarWrapper;
    private final Activity mActivity;
    Reflector mReflector;
    private final Type mType;

    public enum Type {
        SPINNER,
        HOME,
        TITLE,
        OVERFLOW,
        MEDIA_ROUTE_BUTTON
    }

    public ActionViewTarget(Activity activity, Type type) {
        this.mActivity = activity;
        this.mType = type;
    }

    protected void setUp() {
        Reflector reflectorForActivity = ReflectorFactory.getReflectorForActivity(this.mActivity);
        this.mReflector = reflectorForActivity;
        this.mActionBarWrapper = new ActionBarViewWrapper(reflectorForActivity.getActionBarView());
    }

    /* renamed from: com.github.amlcurran.showcaseview.targets.ActionViewTarget$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$github$amlcurran$showcaseview$targets$ActionViewTarget$Type;

        static {
            int[] iArr = new int[Type.values().length];
            $SwitchMap$com$github$amlcurran$showcaseview$targets$ActionViewTarget$Type = iArr;
            try {
                iArr[Type.SPINNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$github$amlcurran$showcaseview$targets$ActionViewTarget$Type[Type.HOME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$github$amlcurran$showcaseview$targets$ActionViewTarget$Type[Type.OVERFLOW.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$github$amlcurran$showcaseview$targets$ActionViewTarget$Type[Type.TITLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$github$amlcurran$showcaseview$targets$ActionViewTarget$Type[Type.MEDIA_ROUTE_BUTTON.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @Override // com.github.amlcurran.showcaseview.targets.Target
    public Point getPoint() {
        ViewTarget viewTarget;
        setUp();
        int i = AnonymousClass1.$SwitchMap$com$github$amlcurran$showcaseview$targets$ActionViewTarget$Type[this.mType.ordinal()];
        if (i == 1) {
            viewTarget = new ViewTarget(this.mActionBarWrapper.getSpinnerView());
        } else if (i == 2) {
            viewTarget = new ViewTarget(this.mReflector.getHomeButton());
        } else if (i == 3) {
            viewTarget = new ViewTarget(this.mActionBarWrapper.getOverflowView());
        } else if (i == 4) {
            viewTarget = new ViewTarget(this.mActionBarWrapper.getTitleView());
        } else {
            viewTarget = i != 5 ? null : new ViewTarget(this.mActionBarWrapper.getMediaRouterButtonView());
        }
        return viewTarget.getPoint();
    }
}
