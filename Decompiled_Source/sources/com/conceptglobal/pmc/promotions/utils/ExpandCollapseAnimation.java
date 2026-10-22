package com.conceptglobal.pmc.promotions.utils;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class ExpandCollapseAnimation {
    private ValueAnimator mAnimator;

    public void expand(View view) {
        view.setVisibility(0);
        view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), 300);
        ValueAnimator slideAnimator = slideAnimator(0, 300, view);
        this.mAnimator = slideAnimator;
        slideAnimator.start();
    }

    public void collapse(final View view) {
        ValueAnimator slideAnimator = slideAnimator(view.getHeight(), 0, view);
        slideAnimator.addListener(new Animator.AnimatorListener() { // from class: com.conceptglobal.pmc.promotions.utils.ExpandCollapseAnimation.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view.setVisibility(8);
            }
        });
        slideAnimator.start();
    }

    private ValueAnimator slideAnimator(int i, int i2, final View view) {
        ValueAnimator ofInt = ValueAnimator.ofInt(i, i2);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.conceptglobal.pmc.promotions.utils.ExpandCollapseAnimation.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                layoutParams.height = intValue;
                view.setLayoutParams(layoutParams);
            }
        });
        return ofInt;
    }
}
