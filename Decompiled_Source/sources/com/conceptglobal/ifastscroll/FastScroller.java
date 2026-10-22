package com.conceptglobal.ifastscroll;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class FastScroller extends LinearLayout {
    private FastScrollBubble bubble;
    private int bubbleOffset;
    private ImageView handle;
    private boolean manuallyChangingPosition;
    private RecyclerView recyclerView;
    private final ScrollListener scrollListener;
    private int scrollerOrientation;
    private SectionTitleProvider titleProvider;

    public FastScroller(Context context) {
        super(context, null);
        this.scrollListener = new ScrollListener();
    }

    public FastScroller(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.scrollListener = new ScrollListener();
        setClipChildren(false);
        LayoutInflater.from(getContext()).inflate(R.layout.fastscroller, this);
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        this.scrollerOrientation = i;
        super.setOrientation(i == 0 ? 1 : 0);
    }

    public void setRecyclerView(RecyclerView recyclerView) {
        this.recyclerView = recyclerView;
        if (recyclerView.getAdapter() instanceof SectionTitleProvider) {
            this.titleProvider = (SectionTitleProvider) recyclerView.getAdapter();
        }
        recyclerView.addOnScrollListener(this.scrollListener);
        invalidateVisibility();
        recyclerView.setOnHierarchyChangeListener(new ViewGroup.OnHierarchyChangeListener() { // from class: com.conceptglobal.ifastscroll.FastScroller.1
            @Override // android.view.ViewGroup.OnHierarchyChangeListener
            public void onChildViewAdded(View view, View view2) {
                FastScroller.this.invalidateVisibility();
            }

            @Override // android.view.ViewGroup.OnHierarchyChangeListener
            public void onChildViewRemoved(View view, View view2) {
                FastScroller.this.invalidateVisibility();
            }
        });
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        float width;
        int width2;
        super.onLayout(z, i, i2, i3, i4);
        this.bubble = (FastScrollBubble) findViewById(R.id.fastscroller_bubble);
        this.handle = (ImageView) findViewById(R.id.fastscroller_handle);
        if (isVertical()) {
            width = this.handle.getHeight() / 2.0f;
            width2 = this.bubble.getHeight();
        } else {
            width = this.handle.getWidth() / 2.0f;
            width2 = this.bubble.getWidth();
        }
        this.bubbleOffset = (int) (width - width2);
        initHandleBackground();
        initHandleMovement();
    }

    private void initHandleBackground() {
        this.handle.setImageDrawable(getResources().getDrawable(isVertical() ? R.drawable.fastscroller_handle_vertical : R.drawable.fastscroller_handle_horizontal, getContext().getApplicationContext().getTheme()));
    }

    private void initHandleMovement() {
        this.handle.setOnTouchListener(new View.OnTouchListener() { // from class: com.conceptglobal.ifastscroll.FastScroller.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0 || motionEvent.getAction() == 2) {
                    if (FastScroller.this.titleProvider != null) {
                        FastScroller.this.bubble.show();
                    }
                    FastScroller.this.manuallyChangingPosition = true;
                    float relativeTouchPosition = FastScroller.this.getRelativeTouchPosition(motionEvent);
                    FastScroller.this.setHandlePosition(relativeTouchPosition);
                    FastScroller.this.setRecyclerViewPosition(relativeTouchPosition);
                    return true;
                }
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                FastScroller.this.manuallyChangingPosition = false;
                if (FastScroller.this.titleProvider != null) {
                    FastScroller.this.bubble.hide();
                }
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getRelativeTouchPosition(MotionEvent motionEvent) {
        float rawX;
        int width;
        int width2;
        if (isVertical()) {
            rawX = motionEvent.getRawY() - Utils.getViewRawY(this.handle);
            width = getHeight();
            width2 = this.handle.getHeight();
        } else {
            rawX = motionEvent.getRawX() - Utils.getViewRawX(this.handle);
            width = getWidth();
            width2 = this.handle.getWidth();
        }
        return rawX / (width - width2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidateVisibility() {
        if (this.recyclerView.getAdapter() == null || this.recyclerView.getAdapter().getItemCount() == 0 || this.recyclerView.getChildAt(0) == null || isRecyclerViewScrollable()) {
            setVisibility(8);
        } else {
            setVisibility(0);
        }
    }

    private boolean isRecyclerViewScrollable() {
        return isVertical() ? this.recyclerView.getChildAt(0).getHeight() * this.recyclerView.getAdapter().getItemCount() <= getHeight() : this.recyclerView.getChildAt(0).getWidth() * this.recyclerView.getAdapter().getItemCount() <= getWidth();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRecyclerViewPosition(float f) {
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView != null) {
            int itemCount = recyclerView.getAdapter().getItemCount();
            int valueInRange = (int) Utils.getValueInRange(0.0f, itemCount - 1, (int) (f * itemCount));
            this.recyclerView.scrollToPosition(valueInRange);
            SectionTitleProvider sectionTitleProvider = this.titleProvider;
            if (sectionTitleProvider != null) {
                this.bubble.setText(sectionTitleProvider.getSectionTitle(valueInRange));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHandlePosition(float f) {
        if (isVertical()) {
            this.bubble.setY(Utils.getValueInRange(0.0f, getHeight() - this.bubble.getHeight(), ((getHeight() - this.handle.getHeight()) * f) + this.bubbleOffset));
            this.handle.setY(Utils.getValueInRange(0.0f, getHeight() - this.handle.getHeight(), f * (getHeight() - this.handle.getHeight())));
        } else {
            this.bubble.setX(Utils.getValueInRange(0.0f, getWidth() - this.bubble.getWidth(), ((getWidth() - this.handle.getWidth()) * f) + this.bubbleOffset));
            this.handle.setX(Utils.getValueInRange(0.0f, getWidth() - this.handle.getWidth(), f * (getWidth() - this.handle.getWidth())));
        }
    }

    private class ScrollListener extends RecyclerView.OnScrollListener {
        private ScrollListener() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            float width;
            int childLayoutPosition;
            int left;
            if (FastScroller.this.handle == null || FastScroller.this.manuallyChangingPosition || FastScroller.this.recyclerView.getChildCount() <= 0) {
                return;
            }
            View childAt = FastScroller.this.recyclerView.getChildAt(0);
            if (FastScroller.this.isVertical()) {
                width = (childAt.getHeight() * recyclerView.getAdapter().getItemCount()) - FastScroller.this.getHeight();
                childLayoutPosition = FastScroller.this.recyclerView.getChildLayoutPosition(childAt) * childAt.getHeight();
                left = childAt.getTop();
            } else {
                width = (childAt.getWidth() * recyclerView.getAdapter().getItemCount()) - FastScroller.this.getWidth();
                childLayoutPosition = FastScroller.this.recyclerView.getChildLayoutPosition(childAt) * childAt.getWidth();
                left = childAt.getLeft();
            }
            FastScroller.this.setHandlePosition((childLayoutPosition - left) / width);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isVertical() {
        return this.scrollerOrientation == 1;
    }
}
