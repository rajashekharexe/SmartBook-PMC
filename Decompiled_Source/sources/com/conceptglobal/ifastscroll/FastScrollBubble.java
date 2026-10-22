package com.conceptglobal.ifastscroll;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;

/* loaded from: classes.dex */
public class FastScrollBubble extends FrameLayout {
    private static final String ALPHA = "alpha";
    private static final int BUBBLE_ANIMATION_DURATION = 200;
    private static final int BUBBLE_HIDE_DELAY = 1000;
    private static final String SCALE_X = "scaleX";
    private static final String SCALE_Y = "scaleY";
    private AnimatorSet bubbleHideAnimator;
    private final BubbleHider bubbleHider;
    private TextView textView;

    public FastScrollBubble(Context context) {
        super(context);
        this.bubbleHider = new BubbleHider();
        this.bubbleHideAnimator = null;
        init();
    }

    public FastScrollBubble(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.bubbleHider = new BubbleHider();
        this.bubbleHideAnimator = null;
        init();
    }

    public FastScrollBubble(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.bubbleHider = new BubbleHider();
        this.bubbleHideAnimator = null;
        init();
    }

    private void init() {
        TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.default_bubble, (ViewGroup) null);
        this.textView = textView;
        textView.setTextColor(-1);
        addView(this.textView);
    }

    public void show() {
        AnimatorSet animatorSet = this.bubbleHideAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        getHandler().removeCallbacks(this.bubbleHider);
        if (getVisibility() == 4) {
            animateShow();
        }
    }

    public void hide() {
        getHandler().postDelayed(this.bubbleHider, 1000L);
    }

    private void animateShow() {
        AnimatorSet animatorSet = new AnimatorSet();
        setPivotX(getWidth());
        setPivotY(getHeight());
        setVisibility(0);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this, SCALE_X, 0.0f, 1.0f).setDuration(200L);
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this, SCALE_Y, 0.0f, 1.0f).setDuration(200L);
        ObjectAnimator duration3 = ObjectAnimator.ofFloat(this, ALPHA, 0.0f, 1.0f).setDuration(200L);
        animatorSet.setInterpolator(new DecelerateInterpolator());
        animatorSet.playTogether(duration, duration2, duration3);
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateHide() {
        this.bubbleHideAnimator = new AnimatorSet();
        setPivotX(getWidth());
        setPivotY(getHeight());
        ObjectAnimator duration = ObjectAnimator.ofFloat(this, SCALE_X, 1.0f, 0.0f).setDuration(200L);
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this, SCALE_Y, 1.0f, 0.0f).setDuration(200L);
        ObjectAnimator duration3 = ObjectAnimator.ofFloat(this, ALPHA, 1.0f, 0.0f).setDuration(200L);
        this.bubbleHideAnimator.setInterpolator(new AccelerateInterpolator());
        this.bubbleHideAnimator.playTogether(duration, duration2, duration3);
        this.bubbleHideAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.conceptglobal.ifastscroll.FastScrollBubble.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                FastScrollBubble.this.setVisibility(4);
                FastScrollBubble.this.bubbleHideAnimator = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                FastScrollBubble.this.setVisibility(4);
                FastScrollBubble.this.bubbleHideAnimator = null;
            }
        });
        this.bubbleHideAnimator.start();
    }

    public void setText(String str) {
        this.textView.setText(str);
    }

    private class BubbleHider implements Runnable {
        private BubbleHider() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FastScrollBubble.this.animateHide();
        }
    }
}
