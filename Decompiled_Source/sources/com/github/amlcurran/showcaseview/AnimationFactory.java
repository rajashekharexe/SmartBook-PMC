package com.github.amlcurran.showcaseview;

import android.graphics.Point;
import android.view.View;

/* loaded from: classes.dex */
interface AnimationFactory {

    public interface AnimationEndListener {
        void onAnimationEnd();
    }

    public interface AnimationStartListener {
        void onAnimationStart();
    }

    void animateTargetToPoint(ShowcaseView showcaseView, Point point);

    void fadeInView(View view, long j, AnimationStartListener animationStartListener);

    void fadeOutView(View view, long j, AnimationEndListener animationEndListener);
}
