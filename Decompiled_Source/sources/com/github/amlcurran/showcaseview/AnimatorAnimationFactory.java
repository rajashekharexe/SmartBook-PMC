package com.github.amlcurran.showcaseview;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.Point;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.github.amlcurran.showcaseview.AnimationFactory;

/* loaded from: classes.dex */
class AnimatorAnimationFactory implements AnimationFactory {
    private static final String ALPHA = "alpha";
    private static final float INVISIBLE = 0.0f;
    private static final float VISIBLE = 1.0f;
    private final AccelerateDecelerateInterpolator interpolator = new AccelerateDecelerateInterpolator();

    @Override // com.github.amlcurran.showcaseview.AnimationFactory
    public void fadeInView(View view, long j, final AnimationFactory.AnimationStartListener animationStartListener) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, ALPHA, 0.0f, 1.0f);
        ofFloat.setDuration(j).addListener(new AnimatorListenerAdapter() { // from class: com.github.amlcurran.showcaseview.AnimatorAnimationFactory.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                animationStartListener.onAnimationStart();
            }
        });
        ofFloat.start();
    }

    @Override // com.github.amlcurran.showcaseview.AnimationFactory
    public void fadeOutView(View view, long j, final AnimationFactory.AnimationEndListener animationEndListener) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, ALPHA, 0.0f);
        ofFloat.setDuration(j).addListener(new AnimatorListenerAdapter() { // from class: com.github.amlcurran.showcaseview.AnimatorAnimationFactory.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animationEndListener.onAnimationEnd();
            }
        });
        ofFloat.start();
    }

    @Override // com.github.amlcurran.showcaseview.AnimationFactory
    public void animateTargetToPoint(ShowcaseView showcaseView, Point point) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofInt(showcaseView, "showcaseX", point.x), ObjectAnimator.ofInt(showcaseView, "showcaseY", point.y));
        animatorSet.setInterpolator(this.interpolator);
        animatorSet.start();
    }
}
