package com.conceptglobal.pmc.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import androidx.collection.SparseArrayCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.VelocityTrackerCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.EdgeEffectCompat;
import com.conceptglobal.pmc.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import org.apache.http.conn.ssl.TokenParser;

/* loaded from: classes.dex */
public class StaggeredGridView extends ViewGroup {
    public static final int COLUMN_COUNT_AUTO = -1;
    private static final int INVALID_POSITION = -1;
    private static final String TAG = "StaggeredGridView";
    private static final int TOUCH_MODE_DONE_WAITING = 5;
    private static final int TOUCH_MODE_DOWN = 3;
    private static final int TOUCH_MODE_DRAGGING = 1;
    private static final int TOUCH_MODE_FLINGING = 2;
    private static final int TOUCH_MODE_IDLE = 0;
    private static final int TOUCH_MODE_REST = 6;
    private static final int TOUCH_MODE_TAP = 4;
    private int mActivePointerId;
    private ListAdapter mAdapter;
    private boolean mBeginClick;
    private final EdgeEffectCompat mBottomEdge;
    private int mColCount;
    private int mColCountSetting;
    private ArrayList<HashSet<Integer>> mColMappings;
    private int mColWidth;
    private ContextMenu.ContextMenuInfo mContextMenuInfo;
    private boolean mDataChanged;
    boolean mDrawSelectorOnTop;
    private boolean mFastChildLayout;
    private long mFirstAdapterId;
    private int mFirstPosition;
    private int mFlingVelocity;
    private boolean mHasStableIds;
    private boolean mInLayout;
    private boolean mIsChildViewEnabled;
    private int[] mItemBottoms;
    private int mItemCount;
    private int mItemMargin;
    private int[] mItemTops;
    private float mLastTouchX;
    private float mLastTouchY;
    private final SparseArrayCompat<LayoutRecord> mLayoutRecords;
    private int mMaximumVelocity;
    private int mMinColWidth;
    private int mMotionPosition;
    private int mNumCols;
    private final AdapterDataSetObserver mObserver;
    OnItemClickListener mOnItemClickListener;
    OnItemLongClickListener mOnItemLongClickListener;
    private CheckForLongPress mPendingCheckForLongPress;
    private Runnable mPendingCheckForTap;
    private PerformClick mPerformClick;
    private boolean mPopulating;
    private final RecycleBin mRecycler;
    private int[] mRestoreOffsets;
    private final ScrollerCompat mScroller;
    int mSelectionBottomPadding;
    int mSelectionLeftPadding;
    int mSelectionRightPadding;
    int mSelectionTopPadding;
    Drawable mSelector;
    int mSelectorPosition;
    Rect mSelectorRect;
    private final EdgeEffectCompat mTopEdge;
    private Rect mTouchFrame;
    private int mTouchMode;
    private Runnable mTouchModeReset;
    private float mTouchRemainderY;
    private int mTouchSlop;
    private final VelocityTracker mVelocityTracker;

    public interface OnItemClickListener {
        void onItemClick(StaggeredGridView staggeredGridView, View view, int i, long j);
    }

    public interface OnItemLongClickListener {
        boolean onItemLongClick(StaggeredGridView staggeredGridView, View view, int i, long j);
    }

    public interface SelectionBoundsAdjuster {
        void adjustListItemSelectionBounds(Rect rect);
    }

    void hideSelector() {
    }

    private static final class LayoutRecord {
        public int column;
        public int height;
        public long id;
        private int[] mMargins;
        public int span;

        private LayoutRecord() {
            this.id = -1L;
        }

        private final void ensureMargins() {
            if (this.mMargins == null) {
                this.mMargins = new int[this.span * 2];
            }
        }

        public final int getMarginAbove(int i) {
            int[] iArr = this.mMargins;
            if (iArr == null) {
                return 0;
            }
            return iArr[i * 2];
        }

        public final int getMarginBelow(int i) {
            int[] iArr = this.mMargins;
            if (iArr == null) {
                return 0;
            }
            return iArr[(i * 2) + 1];
        }

        public final void setMarginAbove(int i, int i2) {
            if (this.mMargins == null && i2 == 0) {
                return;
            }
            ensureMargins();
            this.mMargins[i * 2] = i2;
        }

        public final void setMarginBelow(int i, int i2) {
            if (this.mMargins == null && i2 == 0) {
                return;
            }
            ensureMargins();
            this.mMargins[(i * 2) + 1] = i2;
        }

        public String toString() {
            String str = "LayoutRecord{c=" + this.column + ", id=" + this.id + " h=" + this.height + " s=" + this.span;
            if (this.mMargins != null) {
                String str2 = str + " margins[above, below](";
                for (int i = 0; i < this.mMargins.length; i += 2) {
                    str2 = str2 + "[" + this.mMargins[i] + ", " + this.mMargins[i + 1] + "]";
                }
                str = str2 + ")";
            }
            return str + "}";
        }
    }

    public StaggeredGridView(Context context) {
        this(context, null);
    }

    public StaggeredGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StaggeredGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mColCountSetting = 2;
        this.mColCount = 2;
        this.mMinColWidth = 0;
        this.mRecycler = new RecycleBin();
        this.mObserver = new AdapterDataSetObserver();
        this.mVelocityTracker = VelocityTracker.obtain();
        this.mColMappings = new ArrayList<>();
        this.mContextMenuInfo = null;
        this.mDrawSelectorOnTop = false;
        this.mSelectionLeftPadding = 0;
        this.mSelectionTopPadding = 0;
        this.mSelectionRightPadding = 0;
        this.mSelectionBottomPadding = 0;
        this.mSelectorRect = new Rect();
        this.mSelectorPosition = -1;
        this.mLayoutRecords = new SparseArrayCompat<>();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.StaggeredGridView);
            this.mColCount = obtainStyledAttributes.getInteger(2, 2);
            this.mDrawSelectorOnTop = obtainStyledAttributes.getBoolean(0, false);
            this.mItemMargin = (int) obtainStyledAttributes.getDimension(1, 0.0f);
        } else {
            this.mColCount = 2;
            this.mDrawSelectorOnTop = false;
        }
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mScroller = ScrollerCompat.from(context);
        this.mTopEdge = new EdgeEffectCompat(context);
        this.mBottomEdge = new EdgeEffectCompat(context);
        setWillNotDraw(false);
        setClipToPadding(false);
        setFocusableInTouchMode(false);
        if (this.mSelector == null) {
            useDefaultSelector();
        }
    }

    public void setColumnCount(int i) {
        if (i < 1 && i != -1) {
            throw new IllegalArgumentException("Column count must be at least 1 - received " + i);
        }
        boolean z = i != this.mColCount;
        this.mColCountSetting = i;
        this.mColCount = i;
        if (z) {
            populate(false);
        }
    }

    public int getColumnCount() {
        return this.mColCount;
    }

    public void setMinColumnWidth(int i) {
        this.mMinColWidth = i;
        setColumnCount(-1);
    }

    public void setItemMargin(int i) {
        boolean z = i != this.mItemMargin;
        this.mItemMargin = i;
        if (z) {
            populate(false);
        }
    }

    public int getFirstPosition() {
        return this.mFirstPosition;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.mVelocityTracker.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.mVelocityTracker.clear();
            this.mScroller.abortAnimation();
            this.mLastTouchY = motionEvent.getY();
            this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, 0);
            this.mTouchRemainderY = 0.0f;
            if (this.mTouchMode == 2) {
                this.mTouchMode = 1;
                return true;
            }
        } else if (action == 2) {
            int findPointerIndex = MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId);
            if (findPointerIndex < 0) {
                Log.e(TAG, "onInterceptTouchEvent could not find pointer with id " + this.mActivePointerId + " - did StaggeredGridView receive an inconsistent event stream?");
                return false;
            }
            float y = (MotionEventCompat.getY(motionEvent, findPointerIndex) - this.mLastTouchY) + this.mTouchRemainderY;
            this.mTouchRemainderY = y - ((int) y);
            if (Math.abs(y) > this.mTouchSlop) {
                this.mTouchMode = 1;
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ListAdapter listAdapter;
        ListAdapter listAdapter2;
        Drawable current;
        ListAdapter listAdapter3;
        ListAdapter listAdapter4;
        this.mVelocityTracker.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        if (action == 0) {
            this.mVelocityTracker.clear();
            this.mScroller.abortAnimation();
            this.mLastTouchY = motionEvent.getY();
            float x = motionEvent.getX();
            this.mLastTouchX = x;
            int pointToPosition2 = pointToPosition((int) x, (int) this.mLastTouchY);
            this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, 0);
            this.mTouchRemainderY = 0.0f;
            if (this.mTouchMode != 2 && !this.mDataChanged && pointToPosition2 >= 0 && (listAdapter = this.mAdapter) != null && listAdapter.isEnabled(pointToPosition2)) {
                this.mTouchMode = 3;
                this.mBeginClick = true;
                if (this.mPendingCheckForTap == null) {
                    this.mPendingCheckForTap = new CheckForTap();
                }
                postDelayed(this.mPendingCheckForTap, ViewConfiguration.getTapTimeout());
            }
            this.mMotionPosition = pointToPosition2;
            invalidate();
        } else if (action == 1) {
            this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
            float yVelocity = VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId);
            int i = this.mTouchMode;
            if (Math.abs(yVelocity) > this.mFlingVelocity) {
                this.mTouchMode = 2;
                this.mScroller.fling(0, 0, 0, (int) yVelocity, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
                this.mLastTouchY = 0.0f;
                invalidate();
            } else {
                this.mTouchMode = 0;
            }
            if (!this.mDataChanged && (listAdapter4 = this.mAdapter) != null && listAdapter4.isEnabled(pointToPosition)) {
                this.mTouchMode = 4;
            } else {
                this.mTouchMode = 6;
            }
            if (i == 3 || i == 4 || i == 5) {
                final View childAt = getChildAt(pointToPosition - this.mFirstPosition);
                float x2 = motionEvent.getX();
                boolean z = x2 > ((float) getPaddingLeft()) && x2 < ((float) (getWidth() - getPaddingRight()));
                if (childAt != null && !childAt.hasFocusable() && z) {
                    if (this.mTouchMode != 3) {
                        childAt.setPressed(false);
                    }
                    if (this.mPerformClick == null) {
                        invalidate();
                        this.mPerformClick = new PerformClick();
                    }
                    final PerformClick performClick = this.mPerformClick;
                    performClick.mClickMotionPosition = pointToPosition;
                    performClick.rememberWindowAttachCount();
                    int i2 = this.mTouchMode;
                    if (i2 == 3 || i2 == 4) {
                        Handler handler = getHandler();
                        if (handler != null) {
                            handler.removeCallbacks(this.mTouchMode == 3 ? this.mPendingCheckForTap : this.mPendingCheckForLongPress);
                        }
                        if (!this.mDataChanged && (listAdapter2 = this.mAdapter) != null && listAdapter2.isEnabled(pointToPosition)) {
                            this.mTouchMode = 4;
                            layoutChildren(this.mDataChanged);
                            childAt.setPressed(true);
                            positionSelector(this.mMotionPosition, childAt);
                            setPressed(true);
                            Drawable drawable = this.mSelector;
                            if (drawable != null && (current = drawable.getCurrent()) != null && (current instanceof TransitionDrawable)) {
                                ((TransitionDrawable) current).resetTransition();
                            }
                            Runnable runnable = this.mTouchModeReset;
                            if (runnable != null) {
                                removeCallbacks(runnable);
                            }
                            Runnable runnable2 = new Runnable() { // from class: com.conceptglobal.pmc.views.StaggeredGridView.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    StaggeredGridView.this.mTouchMode = 6;
                                    childAt.setPressed(false);
                                    StaggeredGridView.this.setPressed(false);
                                    if (StaggeredGridView.this.mDataChanged) {
                                        return;
                                    }
                                    performClick.run();
                                }
                            };
                            this.mTouchModeReset = runnable2;
                            postDelayed(runnable2, ViewConfiguration.getPressedStateDuration());
                        } else {
                            this.mTouchMode = 6;
                        }
                        return true;
                    }
                    if (!this.mDataChanged && (listAdapter3 = this.mAdapter) != null && listAdapter3.isEnabled(pointToPosition)) {
                        performClick.run();
                    }
                }
                this.mTouchMode = 6;
            }
            this.mBeginClick = false;
            updateSelectorState();
        } else if (action == 2) {
            int findPointerIndex = MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId);
            if (findPointerIndex < 0) {
                Log.e(TAG, "onInterceptTouchEvent could not find pointer with id " + this.mActivePointerId + " - did StaggeredGridView receive an inconsistent event stream?");
                return false;
            }
            float y = MotionEventCompat.getY(motionEvent, findPointerIndex);
            float f = (y - this.mLastTouchY) + this.mTouchRemainderY;
            int i3 = (int) f;
            this.mTouchRemainderY = f - i3;
            if (Math.abs(f) > this.mTouchSlop) {
                this.mTouchMode = 1;
            }
            if (this.mTouchMode == 1) {
                this.mLastTouchY = y;
                if (!trackMotionScroll(i3, true)) {
                    this.mVelocityTracker.clear();
                }
            }
            updateSelectorState();
        } else if (action == 3) {
            this.mTouchMode = 0;
            updateSelectorState();
            setPressed(false);
            View childAt2 = getChildAt(this.mMotionPosition - this.mFirstPosition);
            if (childAt2 != null) {
                childAt2.setPressed(false);
            }
            Handler handler2 = getHandler();
            if (handler2 != null) {
                handler2.removeCallbacks(this.mPendingCheckForLongPress);
            }
            EdgeEffectCompat edgeEffectCompat = this.mTopEdge;
            if (edgeEffectCompat != null) {
                edgeEffectCompat.onRelease();
                this.mBottomEdge.onRelease();
            }
            this.mTouchMode = 0;
        }
        return true;
    }

    private boolean trackMotionScroll(int i, boolean z) {
        int i2;
        int overScrollMode;
        int fillDown;
        boolean z2;
        boolean contentFits = contentFits();
        int abs = Math.abs(i);
        if (contentFits) {
            i2 = 0;
        } else {
            this.mPopulating = true;
            if (i > 0) {
                fillDown = fillUp(this.mFirstPosition - 1, abs) + this.mItemMargin;
                z2 = true;
            } else {
                fillDown = fillDown(this.mFirstPosition + getChildCount(), abs) + this.mItemMargin;
                z2 = false;
            }
            i2 = Math.min(fillDown, abs);
            offsetChildren(z2 ? i2 : -i2);
            recycleOffscreenViews();
            this.mPopulating = false;
            abs -= fillDown;
        }
        if (z && (((overScrollMode = ViewCompat.getOverScrollMode(this)) == 0 || (overScrollMode == 1 && !contentFits)) && abs > 0)) {
            (i > 0 ? this.mTopEdge : this.mBottomEdge).onPull(Math.abs(i) / getHeight());
            invalidate();
        }
        int i3 = this.mSelectorPosition;
        if (i3 != -1) {
            int i4 = i3 - this.mFirstPosition;
            if (i4 >= 0 && i4 < getChildCount()) {
                positionSelector(-1, getChildAt(i4));
            }
        } else {
            this.mSelectorRect.setEmpty();
        }
        return i == 0 || i2 != 0;
    }

    private final boolean contentFits() {
        if (this.mFirstPosition != 0 || getChildCount() != this.mItemCount) {
            return false;
        }
        int i = Integer.MAX_VALUE;
        int i2 = Integer.MIN_VALUE;
        for (int i3 = 0; i3 < this.mColCount; i3++) {
            int i4 = this.mItemTops[i3];
            if (i4 < i) {
                i = i4;
            }
            int i5 = this.mItemBottoms[i3];
            if (i5 > i2) {
                i2 = i5;
            }
        }
        return i >= getPaddingTop() && i2 <= getHeight() - getPaddingBottom();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recycleAllViews() {
        for (int i = 0; i < getChildCount(); i++) {
            this.mRecycler.addScrap(getChildAt(i));
        }
        if (this.mInLayout) {
            removeAllViewsInLayout();
        } else {
            removeAllViews();
        }
    }

    private void recycleOffscreenViews() {
        int height = getHeight();
        int i = this.mItemMargin;
        int i2 = -i;
        int i3 = height + i;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getTop() <= i3) {
                break;
            }
            if (this.mInLayout) {
                removeViewsInLayout(childCount, 1);
            } else {
                removeViewAt(childCount);
            }
            this.mRecycler.addScrap(childAt);
        }
        while (getChildCount() > 0) {
            View childAt2 = getChildAt(0);
            if (childAt2.getBottom() >= i2) {
                break;
            }
            if (this.mInLayout) {
                removeViewsInLayout(0, 1);
            } else {
                removeViewAt(0);
            }
            this.mRecycler.addScrap(childAt2);
            this.mFirstPosition++;
        }
        int childCount2 = getChildCount();
        if (childCount2 > 0) {
            Arrays.fill(this.mItemTops, Integer.MAX_VALUE);
            Arrays.fill(this.mItemBottoms, Integer.MIN_VALUE);
            for (int i4 = 0; i4 < childCount2; i4++) {
                View childAt3 = getChildAt(i4);
                LayoutParams layoutParams = (LayoutParams) childAt3.getLayoutParams();
                int top = childAt3.getTop() - this.mItemMargin;
                int bottom = childAt3.getBottom();
                LayoutRecord layoutRecord = this.mLayoutRecords.get(this.mFirstPosition + i4);
                int min = layoutParams.column + Math.min(this.mColCount, layoutParams.span);
                for (int i5 = layoutParams.column; i5 < min; i5++) {
                    int marginAbove = top - layoutRecord.getMarginAbove(i5 - layoutParams.column);
                    int marginBelow = layoutRecord.getMarginBelow(i5 - layoutParams.column) + bottom;
                    int[] iArr = this.mItemTops;
                    if (marginAbove < iArr[i5]) {
                        iArr[i5] = marginAbove;
                    }
                    int[] iArr2 = this.mItemBottoms;
                    if (marginBelow > iArr2[i5]) {
                        iArr2[i5] = marginBelow;
                    }
                }
            }
            for (int i6 = 0; i6 < this.mColCount; i6++) {
                int[] iArr3 = this.mItemTops;
                if (iArr3[i6] == Integer.MAX_VALUE) {
                    iArr3[i6] = 0;
                    this.mItemBottoms[i6] = 0;
                }
            }
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        EdgeEffectCompat edgeEffectCompat;
        if (this.mScroller.computeScrollOffset()) {
            float currY = this.mScroller.getCurrY();
            int i = (int) (currY - this.mLastTouchY);
            this.mLastTouchY = currY;
            boolean z = !trackMotionScroll(i, false);
            if (!z && !this.mScroller.isFinished()) {
                postInvalidate();
                return;
            }
            if (z) {
                if (ViewCompat.getOverScrollMode(this) != 2) {
                    if (i > 0) {
                        edgeEffectCompat = this.mTopEdge;
                    } else {
                        edgeEffectCompat = this.mBottomEdge;
                    }
                    edgeEffectCompat.onAbsorb(Math.abs((int) this.mScroller.getCurrVelocity()));
                    postInvalidate();
                }
                this.mScroller.abortAnimation();
            }
            this.mTouchMode = 0;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        boolean z = this.mDrawSelectorOnTop;
        if (!z) {
            drawSelector(canvas);
        }
        super.dispatchDraw(canvas);
        if (z) {
            drawSelector(canvas);
        }
    }

    private void drawSelector(Canvas canvas) {
        Drawable drawable;
        if (this.mSelectorRect.isEmpty() || (drawable = this.mSelector) == null || !this.mBeginClick) {
            return;
        }
        drawable.setBounds(this.mSelectorRect);
        drawable.draw(canvas);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        super.draw(canvas);
        EdgeEffectCompat edgeEffectCompat = this.mTopEdge;
        if (edgeEffectCompat != null) {
            boolean z2 = true;
            if (edgeEffectCompat.isFinished()) {
                z = false;
            } else {
                this.mTopEdge.draw(canvas);
                z = true;
            }
            if (this.mBottomEdge.isFinished()) {
                z2 = z;
            } else {
                int save = canvas.save();
                int width = getWidth();
                canvas.translate(-width, getHeight());
                canvas.rotate(180.0f, width, 0.0f);
                this.mBottomEdge.draw(canvas);
                canvas.restoreToCount(save);
            }
            if (z2) {
                invalidate();
            }
        }
    }

    public void beginFastChildLayout() {
        this.mFastChildLayout = true;
    }

    public void endFastChildLayout() {
        this.mFastChildLayout = false;
        populate(false);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mPopulating || this.mFastChildLayout) {
            return;
        }
        super.requestLayout();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        View.MeasureSpec.getMode(i);
        View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        setMeasuredDimension(size, View.MeasureSpec.getSize(i2));
        if (this.mColCountSetting != -1 || (i3 = size / this.mMinColWidth) == this.mColCount) {
            return;
        }
        this.mColCount = i3;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.mInLayout = true;
        populate(false);
        this.mInLayout = false;
        int i5 = i3 - i;
        int i6 = i4 - i2;
        this.mTopEdge.setSize(i5, i6);
        this.mBottomEdge.setSize(i5, i6);
    }

    private void populate(boolean z) {
        int[] iArr;
        int width;
        if (getWidth() == 0 || getHeight() == 0) {
            return;
        }
        if (this.mColCount == -1 && (width = getWidth() / this.mMinColWidth) != this.mColCount) {
            this.mColCount = width;
        }
        int i = this.mColCount;
        if (this.mColMappings.size() != this.mColCount) {
            this.mColMappings.clear();
            for (int i2 = 0; i2 < this.mColCount; i2++) {
                this.mColMappings.add(new HashSet<>());
            }
        }
        int[] iArr2 = this.mItemTops;
        if (iArr2 == null || iArr2.length != i) {
            this.mItemTops = new int[i];
            this.mItemBottoms = new int[i];
            this.mLayoutRecords.clear();
            if (this.mInLayout) {
                removeAllViewsInLayout();
            } else {
                removeAllViews();
            }
        }
        int paddingTop = getPaddingTop();
        for (int i3 = 0; i3 < i; i3++) {
            int[] iArr3 = this.mRestoreOffsets;
            int min = (iArr3 != null ? Math.min(iArr3[i3], 0) : 0) + paddingTop;
            int[] iArr4 = this.mItemTops;
            iArr4[i3] = min == 0 ? iArr4[i3] : min;
            int[] iArr5 = this.mItemBottoms;
            if (min == 0) {
                min = iArr5[i3];
            }
            iArr5[i3] = min;
        }
        this.mPopulating = true;
        layoutChildren(this.mDataChanged);
        fillDown(this.mFirstPosition + getChildCount(), 0);
        fillUp(this.mFirstPosition - 1, 0);
        this.mPopulating = false;
        this.mDataChanged = false;
        if (!z || (iArr = this.mRestoreOffsets) == null) {
            return;
        }
        Arrays.fill(iArr, 0);
    }

    final void offsetChildren(int i) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            childAt.layout(childAt.getLeft(), childAt.getTop() + i, childAt.getRight(), childAt.getBottom() + i);
        }
        int i3 = this.mColCount;
        for (int i4 = 0; i4 < i3; i4++) {
            int[] iArr = this.mItemTops;
            iArr[i4] = iArr[i4] + i;
            int[] iArr2 = this.mItemBottoms;
            iArr2[i4] = iArr2[i4] + i;
        }
    }

    final void layoutChildren(boolean z) {
        int i;
        int i2;
        int makeMeasureSpec;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i3 = this.mItemMargin;
        int width = (getWidth() - paddingLeft) - paddingRight;
        int i4 = this.mColCount;
        int i5 = (width - ((i4 - 1) * i3)) / i4;
        this.mColWidth = i5;
        Arrays.fill(this.mItemBottoms, Integer.MIN_VALUE);
        int childCount = getChildCount();
        int i6 = 0;
        int i7 = -1;
        int i8 = -1;
        int i9 = 0;
        while (i6 < childCount) {
            View childAt = getChildAt(i6);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int i10 = layoutParams.column;
            int i11 = this.mFirstPosition + i6;
            boolean z2 = z || childAt.isLayoutRequested();
            if (z) {
                View obtainView = obtainView(i11, childAt);
                if (obtainView == null) {
                    removeViewAt(i6);
                    int i12 = i6 - 1;
                    if (i12 >= 0) {
                        invalidateLayoutRecordsAfterPosition(i12);
                    }
                    i9++;
                    i2 = paddingLeft;
                    i = childCount;
                    i6++;
                    paddingLeft = i2;
                    childCount = i;
                } else {
                    if (obtainView != childAt) {
                        removeViewAt(i6);
                        addView(obtainView, i6);
                        childAt = obtainView;
                    }
                    layoutParams = (LayoutParams) childAt.getLayoutParams();
                }
            }
            int min = Math.min(this.mColCount, layoutParams.span);
            int i13 = (i5 * min) + ((min - 1) * i3);
            if (z2) {
                int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i13, 1073741824);
                i = childCount;
                if (layoutParams.height == -2) {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                } else {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824);
                }
                childAt.measure(makeMeasureSpec2, makeMeasureSpec);
            } else {
                i = childCount;
            }
            int i14 = this.mItemBottoms[i10];
            int top = i14 > Integer.MIN_VALUE ? i14 + this.mItemMargin : childAt.getTop();
            if (min > 1) {
                for (int i15 = i10 + 1; i15 < i10 + min; i15++) {
                    int i16 = this.mItemBottoms[i15] + this.mItemMargin;
                    if (i16 > top) {
                        top = i16;
                    }
                }
            }
            int measuredHeight = childAt.getMeasuredHeight();
            int i17 = top + measuredHeight;
            int i18 = ((i5 + i3) * i10) + paddingLeft;
            i2 = paddingLeft;
            childAt.layout(i18, top, i18 + childAt.getMeasuredWidth(), i17);
            for (int i19 = i10; i19 < i10 + min; i19++) {
                this.mItemBottoms[i19] = i17;
            }
            LayoutRecord layoutRecord = this.mLayoutRecords.get(i11);
            if (layoutRecord != null && layoutRecord.height != measuredHeight) {
                layoutRecord.height = measuredHeight;
                i7 = i11;
            }
            if (layoutRecord != null && layoutRecord.span != min) {
                layoutRecord.span = min;
                i8 = i11;
            }
            i6++;
            paddingLeft = i2;
            childCount = i;
        }
        int i20 = childCount;
        for (int i21 = 0; i21 < this.mColCount; i21++) {
            int[] iArr = this.mItemBottoms;
            if (iArr[i21] == Integer.MIN_VALUE) {
                iArr[i21] = this.mItemTops[i21];
            }
        }
        if (i7 >= 0 || i8 >= 0) {
            if (i7 >= 0) {
                invalidateLayoutRecordsBeforePosition(i7);
            }
            if (i8 >= 0) {
                invalidateLayoutRecordsAfterPosition(i8);
            }
            for (int i22 = 0; i22 < i20 - i9; i22++) {
                int i23 = this.mFirstPosition + i22;
                View childAt2 = getChildAt(i22);
                LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                LayoutRecord layoutRecord2 = this.mLayoutRecords.get(i23);
                if (layoutRecord2 == null) {
                    layoutRecord2 = new LayoutRecord();
                    this.mLayoutRecords.put(i23, layoutRecord2);
                }
                layoutRecord2.column = layoutParams2.column;
                layoutRecord2.height = childAt2.getHeight();
                layoutRecord2.id = layoutParams2.id;
                layoutRecord2.span = Math.min(this.mColCount, layoutParams2.span);
            }
        }
        if (this.mSelectorPosition != -1) {
            View childAt3 = getChildAt(this.mMotionPosition - this.mFirstPosition);
            if (childAt3 != null) {
                positionSelector(this.mMotionPosition, childAt3);
                return;
            }
            return;
        }
        if (this.mTouchMode > 3) {
            View childAt4 = getChildAt(this.mMotionPosition - this.mFirstPosition);
            if (childAt4 != null) {
                positionSelector(this.mMotionPosition, childAt4);
                return;
            }
            return;
        }
        this.mSelectorRect.setEmpty();
    }

    final void invalidateLayoutRecordsBeforePosition(int i) {
        int i2 = 0;
        while (i2 < this.mLayoutRecords.size() && this.mLayoutRecords.keyAt(i2) < i) {
            i2++;
        }
        this.mLayoutRecords.removeAtRange(0, i2);
    }

    final void invalidateLayoutRecordsAfterPosition(int i) {
        int size = this.mLayoutRecords.size() - 1;
        while (size >= 0 && this.mLayoutRecords.keyAt(size) > i) {
            size--;
        }
        SparseArrayCompat<LayoutRecord> sparseArrayCompat = this.mLayoutRecords;
        sparseArrayCompat.removeAtRange(size + 2, sparseArrayCompat.size() - (size + 1));
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x013a A[LOOP:3: B:62:0x0136->B:64:0x013a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int fillUp(int r19, int r20) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.views.StaggeredGridView.fillUp(int, int):int");
    }

    private View getFirstChildAtColumn(int i) {
        if (getChildCount() <= i) {
            return null;
        }
        for (int i2 = 0; i2 < this.mColCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt != null) {
                int i3 = 0;
                while (childAt.getLeft() > ((this.mColWidth + (this.mItemMargin * 2)) * i3) + getPaddingLeft()) {
                    i3++;
                }
                if (i3 == i) {
                    return childAt;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0146 A[LOOP:3: B:59:0x0142->B:61:0x0146, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int fillDown(int r19, int r20) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.views.StaggeredGridView.fillDown(int, int):int");
    }

    private void displayMapping() {
        Log.w("DISPLAY", "MAP ****************");
        StringBuilder sb = new StringBuilder();
        Iterator<HashSet<Integer>> it = this.mColMappings.iterator();
        int i = 0;
        while (it.hasNext()) {
            HashSet<Integer> next = it.next();
            sb.append("COL" + i + ":");
            sb.append(TokenParser.SP);
            Iterator<Integer> it2 = next.iterator();
            while (it2.hasNext()) {
                sb.append(it2.next());
                sb.append(" , ");
            }
            Log.w("DISPLAY", sb.toString());
            sb = new StringBuilder();
            i++;
        }
        Log.w("DISPLAY", "MAP END ****************");
    }

    final int getNextColumnUp() {
        int i = -1;
        int i2 = Integer.MIN_VALUE;
        for (int i3 = this.mColCount - 1; i3 >= 0; i3--) {
            int i4 = this.mItemTops[i3];
            if (i4 > i2) {
                i = i3;
                i2 = i4;
            }
        }
        return i;
    }

    final LayoutRecord getNextRecordUp(int i, int i2) {
        LayoutRecord layoutRecord = this.mLayoutRecords.get(i);
        if (layoutRecord == null) {
            layoutRecord = new LayoutRecord();
            layoutRecord.span = i2;
            this.mLayoutRecords.put(i, layoutRecord);
        } else if (layoutRecord.span != i2) {
            throw new IllegalStateException("Invalid LayoutRecord! Record had span=" + layoutRecord.span + " but caller requested span=" + i2 + " for position=" + i);
        }
        int i3 = -1;
        int i4 = Integer.MIN_VALUE;
        for (int i5 = this.mColCount - i2; i5 >= 0; i5--) {
            int i6 = Integer.MAX_VALUE;
            for (int i7 = i5; i7 < i5 + i2; i7++) {
                int i8 = this.mItemTops[i7];
                if (i8 < i6) {
                    i6 = i8;
                }
            }
            if (i6 > i4) {
                i3 = i5;
                i4 = i6;
            }
        }
        layoutRecord.column = i3;
        for (int i9 = 0; i9 < i2; i9++) {
            layoutRecord.setMarginBelow(i9, this.mItemTops[i9 + i3] - i4);
        }
        return layoutRecord;
    }

    final int getNextColumnDown(int i) {
        int i2 = this.mColCount;
        int i3 = -1;
        int i4 = Integer.MAX_VALUE;
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = this.mItemBottoms[i5];
            if (i6 < i4) {
                i3 = i5;
                i4 = i6;
            }
        }
        return i3;
    }

    final LayoutRecord getNextRecordDown(int i, int i2) {
        LayoutRecord layoutRecord = this.mLayoutRecords.get(i);
        if (layoutRecord == null) {
            layoutRecord = new LayoutRecord();
            layoutRecord.span = i2;
            this.mLayoutRecords.put(i, layoutRecord);
        } else if (layoutRecord.span != i2) {
            throw new IllegalStateException("Invalid LayoutRecord! Record had span=" + layoutRecord.span + " but caller requested span=" + i2 + " for position=" + i);
        }
        int i3 = this.mColCount;
        int i4 = -1;
        int i5 = Integer.MAX_VALUE;
        for (int i6 = 0; i6 <= i3 - i2; i6++) {
            int i7 = Integer.MIN_VALUE;
            for (int i8 = i6; i8 < i6 + i2; i8++) {
                int i9 = this.mItemBottoms[i8];
                if (i9 > i7) {
                    i7 = i9;
                }
            }
            if (i7 < i5) {
                i4 = i6;
                i5 = i7;
            }
        }
        layoutRecord.column = i4;
        for (int i10 = 0; i10 < i2; i10++) {
            layoutRecord.setMarginAbove(i10, i5 - this.mItemBottoms[i10 + i4]);
        }
        return layoutRecord;
    }

    final View obtainView(int i, View view) {
        View transientStateView = this.mRecycler.getTransientStateView(i);
        if (transientStateView != null) {
            return transientStateView;
        }
        if (i >= this.mAdapter.getCount()) {
            return null;
        }
        int i2 = view != null ? ((LayoutParams) view.getLayoutParams()).viewType : -1;
        int itemViewType = this.mAdapter.getItemViewType(i);
        if (i2 != itemViewType) {
            view = this.mRecycler.getScrapView(itemViewType);
        }
        View view2 = this.mAdapter.getView(i, view, this);
        if (view2 != view && view != null) {
            this.mRecycler.addScrap(view);
        }
        ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
        if (view2.getParent() != this) {
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
            } else if (!checkLayoutParams(layoutParams)) {
                layoutParams = generateLayoutParams(layoutParams);
            }
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        layoutParams2.position = i;
        layoutParams2.viewType = itemViewType;
        view2.setLayoutParams(layoutParams2);
        return view2;
    }

    public ListAdapter getAdapter() {
        return this.mAdapter;
    }

    public void setAdapter(ListAdapter listAdapter) {
        ListAdapter listAdapter2 = this.mAdapter;
        if (listAdapter2 != null) {
            listAdapter2.unregisterDataSetObserver(this.mObserver);
        }
        clearAllState();
        this.mAdapter = listAdapter;
        this.mDataChanged = true;
        this.mItemCount = listAdapter != null ? listAdapter.getCount() : 0;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.mObserver);
            this.mRecycler.setViewTypeCount(listAdapter.getViewTypeCount());
            this.mHasStableIds = listAdapter.hasStableIds();
        } else {
            this.mHasStableIds = false;
        }
        populate(listAdapter != null);
    }

    private void clearAllState() {
        this.mLayoutRecords.clear();
        removeAllViews();
        resetStateForGridTop();
        this.mRecycler.clear();
        this.mSelectorRect.setEmpty();
        this.mSelectorPosition = -1;
    }

    private void resetStateForGridTop() {
        int i = this.mColCount;
        int[] iArr = this.mItemTops;
        if (iArr == null || iArr.length != i) {
            this.mItemTops = new int[i];
            this.mItemBottoms = new int[i];
        }
        int paddingTop = getPaddingTop();
        Arrays.fill(this.mItemTops, paddingTop);
        Arrays.fill(this.mItemBottoms, paddingTop);
        this.mFirstPosition = 0;
        int[] iArr2 = this.mRestoreOffsets;
        if (iArr2 != null) {
            Arrays.fill(iArr2, 0);
        }
    }

    public void setSelectionToTop() {
        removeAllViews();
        resetStateForGridTop();
        populate(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        ListAdapter listAdapter;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int i = this.mFirstPosition;
        savedState.position = i;
        if (i >= 0 && (listAdapter = this.mAdapter) != null && i < listAdapter.getCount()) {
            savedState.firstId = this.mAdapter.getItemId(i);
        }
        if (getChildCount() > 0) {
            int[] iArr = new int[this.mColCount];
            if (this.mColWidth > 0) {
                for (int i2 = 0; i2 < this.mColCount; i2++) {
                    if (getChildAt(i2) != null) {
                        int left = getChildAt(i2).getLeft();
                        Log.w("mColWidth", this.mColWidth + " " + left);
                        int i3 = 0;
                        while (left > ((this.mColWidth + (this.mItemMargin * 2)) * i3) + getPaddingLeft()) {
                            i3++;
                        }
                        iArr[i3] = (getChildAt(i2).getTop() - this.mItemMargin) - getPaddingTop();
                    }
                }
            }
            savedState.topOffsets = iArr;
            ArrayList<ColMap> arrayList = new ArrayList<>();
            Iterator<HashSet<Integer>> it = this.mColMappings.iterator();
            while (it.hasNext()) {
                arrayList.add(new ColMap((ArrayList<Integer>) new ArrayList(it.next())));
            }
            savedState.mapping = arrayList;
        }
        return savedState;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.mDataChanged = true;
        this.mFirstPosition = savedState.position;
        this.mRestoreOffsets = savedState.topOffsets;
        ArrayList<ColMap> arrayList = savedState.mapping;
        if (arrayList != null) {
            this.mColMappings.clear();
            Iterator<ColMap> it = arrayList.iterator();
            while (it.hasNext()) {
                this.mColMappings.add(new HashSet<>(it.next().values));
            }
        }
        if (savedState.firstId >= 0) {
            this.mFirstAdapterId = savedState.firstId;
            this.mSelectorPosition = -1;
        }
        requestLayout();
    }

    public static class LayoutParams extends ViewGroup.LayoutParams {
        private static final int[] LAYOUT_ATTRS = {android.R.attr.layout_span};
        private static final int SPAN_INDEX = 0;
        int column;
        long id;
        int position;
        public int span;
        int viewType;

        public LayoutParams(int i) {
            super(-1, i);
            this.span = 1;
            this.id = -1L;
            if (this.height == -1) {
                Log.w(StaggeredGridView.TAG, "Constructing LayoutParams with height FILL_PARENT - impossible! Falling back to WRAP_CONTENT");
                this.height = -2;
            }
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.span = 1;
            this.id = -1L;
            if (this.width != -1) {
                Log.w(StaggeredGridView.TAG, "Inflation setting LayoutParams width to " + this.width + " - must be MATCH_PARENT");
                this.width = -1;
            }
            if (this.height == -1) {
                Log.w(StaggeredGridView.TAG, "Inflation setting LayoutParams height to MATCH_PARENT - impossible! Falling back to WRAP_CONTENT");
                this.height = -2;
            }
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, LAYOUT_ATTRS);
            this.span = obtainStyledAttributes.getInteger(0, 1);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.span = 1;
            this.id = -1L;
            if (this.width != -1) {
                Log.w(StaggeredGridView.TAG, "Constructing LayoutParams with width " + this.width + " - must be MATCH_PARENT");
                this.width = -1;
            }
            if (this.height == -1) {
                Log.w(StaggeredGridView.TAG, "Constructing LayoutParams with height MATCH_PARENT - impossible! Falling back to WRAP_CONTENT");
                this.height = -2;
            }
        }
    }

    private class RecycleBin {
        private int mMaxScrap;
        private ArrayList<View>[] mScrapViews;
        private SparseArray<View> mTransientStateViews;
        private int mViewTypeCount;

        private RecycleBin() {
        }

        public void setViewTypeCount(int i) {
            if (i < 1) {
                throw new IllegalArgumentException("Must have at least one view type (" + i + " types reported)");
            }
            if (i == this.mViewTypeCount) {
                return;
            }
            ArrayList<View>[] arrayListArr = new ArrayList[i];
            for (int i2 = 0; i2 < i; i2++) {
                arrayListArr[i2] = new ArrayList<>();
            }
            this.mViewTypeCount = i;
            this.mScrapViews = arrayListArr;
        }

        public void clear() {
            int i = this.mViewTypeCount;
            for (int i2 = 0; i2 < i; i2++) {
                this.mScrapViews[i2].clear();
            }
            SparseArray<View> sparseArray = this.mTransientStateViews;
            if (sparseArray != null) {
                sparseArray.clear();
            }
        }

        public void clearTransientViews() {
            SparseArray<View> sparseArray = this.mTransientStateViews;
            if (sparseArray != null) {
                sparseArray.clear();
            }
        }

        public void addScrap(View view) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (ViewCompat.hasTransientState(view)) {
                if (this.mTransientStateViews == null) {
                    this.mTransientStateViews = new SparseArray<>();
                }
                this.mTransientStateViews.put(layoutParams.position, view);
                return;
            }
            int childCount = StaggeredGridView.this.getChildCount();
            if (childCount > this.mMaxScrap) {
                this.mMaxScrap = childCount;
            }
            ArrayList<View> arrayList = this.mScrapViews[layoutParams.viewType];
            if (arrayList.size() < this.mMaxScrap) {
                arrayList.add(view);
            }
        }

        public View getTransientStateView(int i) {
            SparseArray<View> sparseArray = this.mTransientStateViews;
            if (sparseArray == null) {
                return null;
            }
            View view = sparseArray.get(i);
            if (view != null) {
                this.mTransientStateViews.remove(i);
            }
            return view;
        }

        public View getScrapView(int i) {
            ArrayList<View> arrayList = this.mScrapViews[i];
            if (arrayList.isEmpty()) {
                return null;
            }
            int size = arrayList.size() - 1;
            View view = arrayList.get(size);
            arrayList.remove(size);
            return view;
        }
    }

    private class AdapterDataSetObserver extends DataSetObserver {
        @Override // android.database.DataSetObserver
        public void onInvalidated() {
        }

        private AdapterDataSetObserver() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            StaggeredGridView.this.mDataChanged = true;
            StaggeredGridView staggeredGridView = StaggeredGridView.this;
            staggeredGridView.mItemCount = staggeredGridView.mAdapter.getCount();
            StaggeredGridView.this.mRecycler.clearTransientViews();
            if (!StaggeredGridView.this.mHasStableIds) {
                StaggeredGridView.this.mLayoutRecords.clear();
                StaggeredGridView.this.recycleAllViews();
                int i = StaggeredGridView.this.mColCount;
                for (int i2 = 0; i2 < i; i2++) {
                    StaggeredGridView.this.mItemBottoms[i2] = StaggeredGridView.this.mItemTops[i2];
                }
            }
            if (StaggeredGridView.this.mFirstPosition > StaggeredGridView.this.mItemCount - 1 || StaggeredGridView.this.mAdapter.getItemId(StaggeredGridView.this.mFirstPosition) != StaggeredGridView.this.mFirstAdapterId) {
                StaggeredGridView.this.mFirstPosition = 0;
                Arrays.fill(StaggeredGridView.this.mItemTops, 0);
                Arrays.fill(StaggeredGridView.this.mItemBottoms, 0);
                if (StaggeredGridView.this.mRestoreOffsets != null) {
                    Arrays.fill(StaggeredGridView.this.mRestoreOffsets, 0);
                }
            }
            StaggeredGridView.this.requestLayout();
        }
    }

    static class ColMap implements Parcelable {
        public static final Parcelable.Creator<ColMap> CREATOR = new Parcelable.Creator<ColMap>() { // from class: com.conceptglobal.pmc.views.StaggeredGridView.ColMap.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ColMap createFromParcel(Parcel parcel) {
                return new ColMap(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ColMap[] newArray(int i) {
                return new ColMap[i];
            }
        };
        int[] tempMap;
        private ArrayList<Integer> values;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public ColMap(ArrayList<Integer> arrayList) {
            this.values = arrayList;
        }

        private ColMap(Parcel parcel) {
            this.tempMap = parcel.createIntArray();
            this.values = new ArrayList<>();
            int i = 0;
            while (true) {
                int[] iArr = this.tempMap;
                if (i >= iArr.length) {
                    return;
                }
                this.values.add(Integer.valueOf(iArr[i]));
                i++;
            }
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            int[] intArray = toIntArray(this.values);
            this.tempMap = intArray;
            parcel.writeIntArray(intArray);
        }

        int[] toIntArray(ArrayList<Integer> arrayList) {
            int size = arrayList.size();
            int[] iArr = new int[size];
            for (int i = 0; i < size; i++) {
                iArr[i] = arrayList.get(i).intValue();
            }
            return iArr;
        }
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.conceptglobal.pmc.views.StaggeredGridView.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        long firstId;
        ArrayList<ColMap> mapping;
        int position;
        int[] topOffsets;

        SavedState(Parcelable parcelable) {
            super(parcelable);
            this.firstId = -1L;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.firstId = -1L;
            this.firstId = parcel.readLong();
            this.position = parcel.readInt();
            this.topOffsets = parcel.createIntArray();
            this.mapping = parcel.createTypedArrayList(ColMap.CREATOR);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeLong(this.firstId);
            parcel.writeInt(this.position);
            parcel.writeIntArray(this.topOffsets);
            parcel.writeTypedList(this.mapping);
        }

        public String toString() {
            return "StaggereGridView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " firstId=" + this.firstId + " position=" + this.position + "}";
        }
    }

    private class WindowRunnnable {
        private int mOriginalAttachCount;

        private WindowRunnnable() {
        }

        public void rememberWindowAttachCount() {
            this.mOriginalAttachCount = StaggeredGridView.this.getWindowAttachCount();
        }

        public boolean sameWindow() {
            return StaggeredGridView.this.hasWindowFocus() && StaggeredGridView.this.getWindowAttachCount() == this.mOriginalAttachCount;
        }
    }

    private void useDefaultSelector() {
        setSelector(getResources().getDrawable(android.R.drawable.list_selector_background));
    }

    /* JADX WARN: Multi-variable type inference failed */
    void positionSelector(int i, View view) {
        if (i != -1) {
            this.mSelectorPosition = i;
        }
        Rect rect = this.mSelectorRect;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        if (view instanceof SelectionBoundsAdjuster) {
            ((SelectionBoundsAdjuster) view).adjustListItemSelectionBounds(rect);
        }
        positionSelector(rect.left, rect.top, rect.right, rect.bottom);
        boolean z = this.mIsChildViewEnabled;
        if (view.isEnabled() != z) {
            this.mIsChildViewEnabled = !z;
            if (getSelectedItemPosition() != -1) {
                refreshDrawableState();
            }
        }
    }

    private int getSelectedItemPosition() {
        return this.mSelectorPosition;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        if (this.mIsChildViewEnabled) {
            return super.onCreateDrawableState(i);
        }
        int i2 = ENABLED_STATE_SET[0];
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        int length = onCreateDrawableState.length - 1;
        while (true) {
            if (length < 0) {
                length = -1;
                break;
            }
            if (onCreateDrawableState[length] == i2) {
                break;
            }
            length--;
        }
        if (length >= 0) {
            System.arraycopy(onCreateDrawableState, length + 1, onCreateDrawableState, length, (onCreateDrawableState.length - length) - 1);
        }
        return onCreateDrawableState;
    }

    private void positionSelector(int i, int i2, int i3, int i4) {
        this.mSelectorRect.set(i - this.mSelectionLeftPadding, i2 - this.mSelectionTopPadding, i3 + this.mSelectionRightPadding, i4 + this.mSelectionBottomPadding);
    }

    final class CheckForTap implements Runnable {
        CheckForTap() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (StaggeredGridView.this.mTouchMode == 3) {
                StaggeredGridView.this.mTouchMode = 4;
                StaggeredGridView staggeredGridView = StaggeredGridView.this;
                View childAt = staggeredGridView.getChildAt(staggeredGridView.mMotionPosition - StaggeredGridView.this.mFirstPosition);
                if (childAt == null || childAt.hasFocusable()) {
                    return;
                }
                if (StaggeredGridView.this.mDataChanged) {
                    StaggeredGridView.this.mTouchMode = 5;
                    return;
                }
                childAt.setSelected(true);
                childAt.setPressed(true);
                StaggeredGridView.this.setPressed(true);
                StaggeredGridView staggeredGridView2 = StaggeredGridView.this;
                staggeredGridView2.positionSelector(staggeredGridView2.mMotionPosition, childAt);
                StaggeredGridView.this.refreshDrawableState();
                int longPressTimeout = ViewConfiguration.getLongPressTimeout();
                boolean isLongClickable = StaggeredGridView.this.isLongClickable();
                if (StaggeredGridView.this.mSelector != null) {
                    Drawable current = StaggeredGridView.this.mSelector.getCurrent();
                    if (current instanceof TransitionDrawable) {
                        if (isLongClickable) {
                            ((TransitionDrawable) current).startTransition(longPressTimeout);
                        } else {
                            ((TransitionDrawable) current).resetTransition();
                        }
                    }
                }
                if (isLongClickable) {
                    if (StaggeredGridView.this.mPendingCheckForLongPress == null) {
                        StaggeredGridView.this.mPendingCheckForLongPress = new CheckForLongPress();
                    }
                    StaggeredGridView.this.mPendingCheckForLongPress.rememberWindowAttachCount();
                    StaggeredGridView staggeredGridView3 = StaggeredGridView.this;
                    staggeredGridView3.postDelayed(staggeredGridView3.mPendingCheckForLongPress, longPressTimeout);
                } else {
                    StaggeredGridView.this.mTouchMode = 5;
                }
                StaggeredGridView.this.postInvalidate();
            }
        }
    }

    private class CheckForLongPress extends WindowRunnnable implements Runnable {
        private CheckForLongPress() {
            super();
        }

        @Override // java.lang.Runnable
        public void run() {
            int i = StaggeredGridView.this.mMotionPosition;
            StaggeredGridView staggeredGridView = StaggeredGridView.this;
            View childAt = staggeredGridView.getChildAt(i - staggeredGridView.mFirstPosition);
            if (childAt != null) {
                if ((!sameWindow() || StaggeredGridView.this.mDataChanged) ? false : StaggeredGridView.this.performLongPress(childAt, StaggeredGridView.this.mMotionPosition, StaggeredGridView.this.mAdapter.getItemId(StaggeredGridView.this.mMotionPosition))) {
                    StaggeredGridView.this.mTouchMode = 6;
                    StaggeredGridView.this.setPressed(false);
                    childAt.setPressed(false);
                    return;
                }
                StaggeredGridView.this.mTouchMode = 5;
            }
        }
    }

    private class PerformClick extends WindowRunnnable implements Runnable {
        int mClickMotionPosition;

        private PerformClick() {
            super();
        }

        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridView staggeredGridView;
            View childAt;
            if (StaggeredGridView.this.mDataChanged) {
                return;
            }
            ListAdapter listAdapter = StaggeredGridView.this.mAdapter;
            int i = this.mClickMotionPosition;
            if (listAdapter == null || StaggeredGridView.this.mItemCount <= 0 || i == -1 || i >= listAdapter.getCount() || !sameWindow() || (childAt = (staggeredGridView = StaggeredGridView.this).getChildAt(i - staggeredGridView.mFirstPosition)) == null) {
                return;
            }
            StaggeredGridView.this.performItemClick(childAt, i, listAdapter.getItemId(i));
        }
    }

    public boolean performItemClick(View view, int i, long j) {
        if (this.mOnItemClickListener == null) {
            return false;
        }
        playSoundEffect(0);
        if (view != null) {
            view.sendAccessibilityEvent(1);
        }
        this.mOnItemClickListener.onItemClick(this, view, i, j);
        return true;
    }

    boolean performLongPress(View view, int i, long j) {
        OnItemLongClickListener onItemLongClickListener = this.mOnItemLongClickListener;
        boolean onItemLongClick = onItemLongClickListener != null ? onItemLongClickListener.onItemLongClick(this, view, i, j) : false;
        if (!onItemLongClick) {
            this.mContextMenuInfo = createContextMenuInfo(view, i, j);
            onItemLongClick = super.showContextMenuForChild(this);
        }
        if (onItemLongClick) {
            performHapticFeedback(0);
        }
        return onItemLongClick;
    }

    @Override // android.view.View
    protected ContextMenu.ContextMenuInfo getContextMenuInfo() {
        return this.mContextMenuInfo;
    }

    ContextMenu.ContextMenuInfo createContextMenuInfo(View view, int i, long j) {
        return new AdapterContextMenuInfo(view, i, j);
    }

    public static class AdapterContextMenuInfo implements ContextMenu.ContextMenuInfo {
        public long id;
        public int position;
        public View targetView;

        public AdapterContextMenuInfo(View view, int i, long j) {
            this.targetView = view;
            this.position = i;
            this.id = j;
        }
    }

    public Drawable getSelector() {
        return this.mSelector;
    }

    public void setSelector(int i) {
        setSelector(getResources().getDrawable(i));
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return this.mSelector == drawable || super.verifyDrawable(drawable);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.mSelector;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    public void setSelector(Drawable drawable) {
        Drawable drawable2 = this.mSelector;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.mSelector);
        }
        this.mSelector = drawable;
        if (drawable == null) {
            return;
        }
        Rect rect = new Rect();
        drawable.getPadding(rect);
        this.mSelectionLeftPadding = rect.left;
        this.mSelectionTopPadding = rect.top;
        this.mSelectionRightPadding = rect.right;
        this.mSelectionBottomPadding = rect.bottom;
        drawable.setCallback(this);
        updateSelectorState();
    }

    void updateSelectorState() {
        if (this.mSelector != null) {
            if (shouldShowSelector()) {
                this.mSelector.setState(getDrawableState());
            } else {
                this.mSelector.setState(new int[]{0});
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        updateSelectorState();
    }

    boolean shouldShowSelector() {
        return ((hasFocus() && !isInTouchMode()) || touchModeDrawsInPressedState()) && this.mBeginClick;
    }

    boolean touchModeDrawsInPressedState() {
        int i = this.mTouchMode;
        return i == 4 || i == 5;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.mOnItemClickListener = onItemClickListener;
    }

    public final OnItemClickListener getOnItemClickListener() {
        return this.mOnItemClickListener;
    }

    public void setOnItemLongClickListener(OnItemLongClickListener onItemLongClickListener) {
        if (!isLongClickable()) {
            setLongClickable(true);
        }
        this.mOnItemLongClickListener = onItemLongClickListener;
    }

    public final OnItemLongClickListener getOnItemLongClickListener() {
        return this.mOnItemLongClickListener;
    }

    public int pointToPosition(int i, int i2) {
        Rect rect = this.mTouchFrame;
        if (rect == null) {
            rect = new Rect();
            this.mTouchFrame = rect;
        }
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() == 0) {
                childAt.getHitRect(rect);
                if (rect.contains(i, i2)) {
                    return this.mFirstPosition + childCount;
                }
            }
        }
        return -1;
    }

    public boolean isDrawSelectorOnTop() {
        return this.mDrawSelectorOnTop;
    }

    public void setDrawSelectorOnTop(boolean z) {
        this.mDrawSelectorOnTop = z;
    }
}
