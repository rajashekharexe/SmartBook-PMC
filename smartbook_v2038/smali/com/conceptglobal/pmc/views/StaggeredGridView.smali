.class public Lcom/conceptglobal/pmc/views/StaggeredGridView;
.super Landroid/view/ViewGroup;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;,
        Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;,
        Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;,
        Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForTap;,
        Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;,
        Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;,
        Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;,
        Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;,
        Lcom/conceptglobal/pmc/views/StaggeredGridView$ColMap;,
        Lcom/conceptglobal/pmc/views/StaggeredGridView$SelectionBoundsAdjuster;,
        Lcom/conceptglobal/pmc/views/StaggeredGridView$OnItemClickListener;,
        Lcom/conceptglobal/pmc/views/StaggeredGridView$OnItemLongClickListener;,
        Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterContextMenuInfo;,
        Lcom/conceptglobal/pmc/views/StaggeredGridView$WindowRunnnable;
    }
.end annotation


# static fields
.field public static final COLUMN_COUNT_AUTO:I = -0x1

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "StaggeredGridView"

.field private static final TOUCH_MODE_DONE_WAITING:I = 0x5

.field private static final TOUCH_MODE_DOWN:I = 0x3

.field private static final TOUCH_MODE_DRAGGING:I = 0x1

.field private static final TOUCH_MODE_FLINGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I = 0x0

.field private static final TOUCH_MODE_REST:I = 0x6

.field private static final TOUCH_MODE_TAP:I = 0x4


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBeginClick:Z

.field private final mBottomEdge:Landroidx/core/widget/EdgeEffectCompat;

.field private mColCount:I

.field private mColCountSetting:I

.field private mColMappings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mColWidth:I

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDataChanged:Z

.field mDrawSelectorOnTop:Z

.field private mFastChildLayout:Z

.field private mFirstAdapterId:J

.field private mFirstPosition:I

.field private mFlingVelocity:I

.field private mHasStableIds:Z

.field private mInLayout:Z

.field private mIsChildViewEnabled:Z

.field private mItemBottoms:[I

.field private mItemCount:I

.field private mItemMargin:I

.field private mItemTops:[I

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private final mLayoutRecords:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mMaximumVelocity:I

.field private mMinColWidth:I

.field private mMotionPosition:I

.field private mNumCols:I

.field private final mObserver:Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;

.field mOnItemClickListener:Lcom/conceptglobal/pmc/views/StaggeredGridView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/conceptglobal/pmc/views/StaggeredGridView$OnItemLongClickListener;

.field private mPendingCheckForLongPress:Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;

.field private mPopulating:Z

.field private final mRecycler:Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;

.field private mRestoreOffsets:[I

.field private final mScroller:Lcom/conceptglobal/pmc/views/ScrollerCompat;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private final mTopEdge:Landroidx/core/widget/EdgeEffectCompat;

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchRemainderY:F

.field private mTouchSlop:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 302
    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 306
    invoke-direct {p0, p1, p2, v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 310
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x2

    .line 108
    iput p3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCountSetting:I

    .line 109
    iput p3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mMinColWidth:I

    .line 121
    new-instance v1, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;-><init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;Lcom/conceptglobal/pmc/views/StaggeredGridView$1;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mRecycler:Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;

    .line 123
    new-instance v1, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;

    invoke-direct {v1, p0, v2}, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;-><init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;Lcom/conceptglobal/pmc/views/StaggeredGridView$1;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mObserver:Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;

    .line 155
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    .line 165
    iput-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 172
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mDrawSelectorOnTop:Z

    .line 182
    iput v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectionLeftPadding:I

    .line 187
    iput v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectionTopPadding:I

    .line 192
    iput v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectionRightPadding:I

    .line 197
    iput v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectionBottomPadding:I

    .line 207
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    const/4 v1, -0x1

    .line 212
    iput v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectorPosition:I

    .line 298
    new-instance v1, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v1}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLayoutRecords:Landroidx/collection/SparseArrayCompat;

    if-eqz p2, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/conceptglobal/pmc/R$styleable;->StaggeredGridView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 314
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    .line 315
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mDrawSelectorOnTop:Z

    const/4 p3, 0x1

    const/4 v1, 0x0

    .line 316
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemMargin:I

    goto :goto_0

    .line 318
    :cond_0
    iput p3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    .line 319
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mDrawSelectorOnTop:Z

    .line 322
    :goto_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 323
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchSlop:I

    .line 324
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    iput p3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mMaximumVelocity:I

    .line 325
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFlingVelocity:I

    .line 326
    invoke-static {p1}, Lcom/conceptglobal/pmc/views/ScrollerCompat;->from(Landroid/content/Context;)Lcom/conceptglobal/pmc/views/ScrollerCompat;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mScroller:Lcom/conceptglobal/pmc/views/ScrollerCompat;

    .line 328
    new-instance p2, Landroidx/core/widget/EdgeEffectCompat;

    invoke-direct {p2, p1}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTopEdge:Landroidx/core/widget/EdgeEffectCompat;

    .line 329
    new-instance p2, Landroidx/core/widget/EdgeEffectCompat;

    invoke-direct {p2, p1}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mBottomEdge:Landroidx/core/widget/EdgeEffectCompat;

    .line 330
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->setWillNotDraw(Z)V

    .line 331
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->setClipToPadding(Z)V

    .line 332
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->setFocusableInTouchMode(Z)V

    .line 334
    iget-object p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    .line 335
    invoke-direct {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->useDefaultSelector()V

    :cond_1
    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/views/StaggeredGridView;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mHasStableIds:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/views/StaggeredGridView;)Landroidx/collection/SparseArrayCompat;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLayoutRecords:Landroidx/collection/SparseArrayCompat;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/views/StaggeredGridView;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->recycleAllViews()V

    return-void
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/views/StaggeredGridView;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    return p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/views/StaggeredGridView;)[I
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemBottoms:[I

    return-object p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/views/StaggeredGridView;)[I
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemTops:[I

    return-object p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/views/StaggeredGridView;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstPosition:I

    return p0
.end method

.method static synthetic access$1602(Lcom/conceptglobal/pmc/views/StaggeredGridView;I)I
    .locals 0

    .line 73
    iput p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstPosition:I

    return p1
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/views/StaggeredGridView;)J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstAdapterId:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/views/StaggeredGridView;)[I
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mRestoreOffsets:[I

    return-object p0
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/views/StaggeredGridView;)I
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/views/StaggeredGridView;)I
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/views/StaggeredGridView;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mMotionPosition:I

    return p0
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/views/StaggeredGridView;)Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mPendingCheckForLongPress:Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/conceptglobal/pmc/views/StaggeredGridView;Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;)Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mPendingCheckForLongPress:Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/views/StaggeredGridView;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    return p0
.end method

.method static synthetic access$302(Lcom/conceptglobal/pmc/views/StaggeredGridView;I)I
    .locals 0

    .line 73
    iput p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/views/StaggeredGridView;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mDataChanged:Z

    return p0
.end method

.method static synthetic access$402(Lcom/conceptglobal/pmc/views/StaggeredGridView;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/views/StaggeredGridView;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemCount:I

    return p0
.end method

.method static synthetic access$702(Lcom/conceptglobal/pmc/views/StaggeredGridView;I)I
    .locals 0

    .line 73
    iput p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemCount:I

    return p1
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/views/StaggeredGridView;)Landroid/widget/ListAdapter;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/views/StaggeredGridView;)Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mRecycler:Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;

    return-object p0
.end method

.method private clearAllState()V
    .locals 1

    .line 1713
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLayoutRecords:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 1714
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->removeAllViews()V

    .line 1717
    invoke-direct {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->resetStateForGridTop()V

    .line 1720
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mRecycler:Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->clear()V

    .line 1722
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, -0x1

    .line 1723
    iput v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectorPosition:I

    return-void
.end method

.method private final contentFits()Z
    .locals 5

    .line 689
    iget v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstPosition:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildCount()I

    move-result v0

    iget v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemCount:I

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x7fffffff

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    .line 695
    :goto_0
    iget v4, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    if-ge v3, v4, :cond_3

    .line 696
    iget-object v4, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemTops:[I

    aget v4, v4, v3

    if-ge v4, v0, :cond_1

    move v0, v4

    .line 699
    :cond_1
    iget-object v4, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemBottoms:[I

    aget v4, v4, v3

    if-le v4, v2, :cond_2

    move v2, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 704
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getPaddingTop()I

    move-result v3

    if-lt v0, v3, :cond_4

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    if-gt v2, v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    :goto_1
    return v1
.end method

.method private displayMapping()V
    .locals 7

    .line 1492
    const-string v0, "MAP ****************"

    const-string v1, "DISPLAY"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1496
    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 1497
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "COL"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    .line 1498
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1499
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1500
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1501
    const-string v5, " , "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1503
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1507
    :cond_1
    const-string v0, "MAP END ****************"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2

    .line 843
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mBeginClick:Z

    if-eqz v1, :cond_0

    .line 845
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 846
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private getFirstChildAtColumn(I)Landroid/view/View;
    .locals 7

    .line 1324
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildCount()I

    move-result v0

    if-le v0, p1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1325
    :goto_0
    iget v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    if-ge v1, v2, :cond_2

    .line 1326
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1329
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    const/4 v4, 0x0

    .line 1333
    :goto_1
    iget v5, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColWidth:I

    iget v6, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemMargin:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int v5, v5, v4

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    if-le v3, v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    if-ne v4, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSelectedItemPosition()I
    .locals 1

    .line 2212
    iget v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectorPosition:I

    return v0
.end method

.method private populate(Z)V
    .locals 7

    .line 933
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 937
    :cond_0
    iget v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 938
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mMinColWidth:I

    div-int/2addr v0, v1

    .line 939
    iget v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    if-eq v0, v1, :cond_1

    .line 940
    iput v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    .line 944
    :cond_1
    iget v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    .line 947
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    .line 948
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 949
    :goto_0
    iget v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    if-ge v1, v2, :cond_2

    .line 950
    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 954
    :cond_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemTops:[I

    if-eqz v1, :cond_3

    array-length v1, v1

    if-eq v1, v0, :cond_5

    .line 955
    :cond_3
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemTops:[I

    .line 956
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemBottoms:[I

    .line 958
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLayoutRecords:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 959
    iget-boolean v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mInLayout:Z

    if-eqz v1, :cond_4

    .line 960
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->removeAllViewsInLayout()V

    goto :goto_1

    .line 962
    :cond_4
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->removeAllViews()V

    .line 966
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getPaddingTop()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_9

    .line 968
    iget-object v4, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mRestoreOffsets:[I

    if-eqz v4, :cond_6

    aget v4, v4, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    add-int/2addr v4, v1

    .line 969
    iget-object v5, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemTops:[I

    if-nez v4, :cond_7

    aget v6, v5, v2

    goto :goto_4

    :cond_7
    move v6, v4

    :goto_4
    aput v6, v5, v2

    .line 970
    iget-object v5, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemBottoms:[I

    if-nez v4, :cond_8

    aget v4, v5, v2

    :cond_8
    aput v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    const/4 v0, 0x1

    .line 973
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mPopulating:Z

    .line 975
    iget-boolean v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mDataChanged:Z

    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->layoutChildren(Z)V

    .line 976
    iget v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, v3}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->fillDown(II)I

    .line 977
    iget v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstPosition:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1, v3}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->fillUp(II)I

    .line 978
    iput-boolean v3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mPopulating:Z

    .line 979
    iput-boolean v3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mDataChanged:Z

    if-eqz p1, :cond_a

    .line 982
    iget-object p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mRestoreOffsets:[I

    if-eqz p1, :cond_a

    .line 983
    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([II)V

    :cond_a
    :goto_5
    return-void
.end method

.method private positionSelector(IIII)V
    .locals 2

    .line 2251
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectionLeftPadding:I

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectionTopPadding:I

    sub-int/2addr p2, v1

    iget v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectionRightPadding:I

    add-int/2addr p3, v1

    iget v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectionBottomPadding:I

    add-int/2addr p4, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private recycleAllViews()V
    .locals 3

    const/4 v0, 0x0

    .line 708
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mRecycler:Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 712
    :cond_0
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mInLayout:Z

    if-eqz v0, :cond_1

    .line 713
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->removeAllViewsInLayout()V

    goto :goto_1

    .line 715
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->removeAllViews()V

    :goto_1
    return-void
.end method

.method private recycleOffscreenViews()V
    .locals 14

    .line 725
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getHeight()I

    move-result v0

    .line 726
    iget v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemMargin:I

    neg-int v2, v1

    add-int/2addr v0, v1

    .line 728
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildCount()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_2

    .line 729
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 730
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    if-gt v5, v0, :cond_0

    goto :goto_2

    .line 736
    :cond_0
    iget-boolean v5, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mInLayout:Z

    if-eqz v5, :cond_1

    .line 737
    invoke-virtual {p0, v1, v3}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->removeViewsInLayout(II)V

    goto :goto_1

    .line 739
    :cond_1
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->removeViewAt(I)V

    .line 742
    :goto_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mRecycler:Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;

    invoke-virtual {v5, v4}, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 745
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_5

    .line 746
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 747
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    if-lt v4, v2, :cond_3

    goto :goto_4

    .line 753
    :cond_3
    iget-boolean v4, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mInLayout:Z

    if-eqz v4, :cond_4

    .line 754
    invoke-virtual {p0, v1, v3}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->removeViewsInLayout(II)V

    goto :goto_3

    .line 756
    :cond_4
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->removeViewAt(I)V

    .line 759
    :goto_3
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mRecycler:Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 760
    iget v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstPosition:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstPosition:I

    goto :goto_2

    .line 763
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_b

    .line 766
    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemTops:[I

    const v3, 0x7fffffff

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 767
    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemBottoms:[I

    const/high16 v4, -0x80000000

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_9

    .line 770
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 771
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;

    .line 772
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemMargin:I

    sub-int/2addr v6, v7

    .line 773
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 774
    iget-object v7, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLayoutRecords:Landroidx/collection/SparseArrayCompat;

    iget v8, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstPosition:I

    add-int/2addr v8, v2

    invoke-virtual {v7, v8}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;

    .line 776
    iget v8, v5, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->column:I

    iget v9, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    iget v10, v5, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->span:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/2addr v8, v9

    .line 777
    iget v9, v5, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->column:I

    :goto_6
    if-ge v9, v8, :cond_8

    .line 778
    iget v10, v5, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->column:I

    sub-int v10, v9, v10

    invoke-virtual {v7, v10}, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->getMarginAbove(I)I

    move-result v10

    sub-int v10, v6, v10

    .line 779
    iget v11, v5, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->column:I

    sub-int v11, v9, v11

    invoke-virtual {v7, v11}, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->getMarginBelow(I)I

    move-result v11

    add-int/2addr v11, v4

    .line 780
    iget-object v12, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemTops:[I

    aget v13, v12, v9

    if-ge v10, v13, :cond_6

    .line 781
    aput v10, v12, v9

    .line 783
    :cond_6
    iget-object v10, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemBottoms:[I

    aget v12, v10, v9

    if-le v11, v12, :cond_7

    .line 784
    aput v11, v10, v9

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    .line 789
    :goto_7
    iget v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    if-ge v0, v2, :cond_b

    .line 790
    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemTops:[I

    aget v4, v2, v0

    if-ne v4, v3, :cond_a

    .line 792
    aput v1, v2, v0

    .line 793
    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemBottoms:[I

    aput v1, v2, v0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    return-void
.end method

.method private resetStateForGridTop()V
    .locals 2

    .line 1731
    iget v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    .line 1732
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemTops:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 1733
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemTops:[I

    .line 1734
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemBottoms:[I

    .line 1736
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getPaddingTop()I

    move-result v0

    .line 1737
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemTops:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1738
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemBottoms:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    .line 1741
    iput v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstPosition:I

    .line 1742
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mRestoreOffsets:[I

    if-eqz v1, :cond_2

    .line 1743
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_2
    return-void
.end method

.method private trackMotionScroll(IZ)Z
    .locals 7

    .line 637
    invoke-direct {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->contentFits()Z

    move-result v0

    .line 638
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 645
    iput-boolean v3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mPopulating:Z

    if-lez p1, :cond_0

    .line 647
    iget v4, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstPosition:I

    sub-int/2addr v4, v3

    invoke-virtual {p0, v4, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->fillUp(II)I

    move-result v4

    iget v5, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemMargin:I

    add-int/2addr v4, v5

    const/4 v5, 0x1

    goto :goto_0

    .line 650
    :cond_0
    iget v4, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v4, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->fillDown(II)I

    move-result v4

    iget v5, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemMargin:I

    add-int/2addr v4, v5

    const/4 v5, 0x0

    .line 653
    :goto_0
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    neg-int v5, v6

    .line 654
    :goto_1
    invoke-virtual {p0, v5}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->offsetChildren(I)V

    .line 655
    invoke-direct {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->recycleOffscreenViews()V

    .line 656
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mPopulating:Z

    sub-int/2addr v1, v4

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-eqz p2, :cond_5

    .line 664
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result p2

    if-eqz p2, :cond_3

    if-ne p2, v3, :cond_5

    if-nez v0, :cond_5

    :cond_3
    if-lez v1, :cond_5

    if-lez p1, :cond_4

    .line 669
    iget-object p2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTopEdge:Landroidx/core/widget/EdgeEffectCompat;

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mBottomEdge:Landroidx/core/widget/EdgeEffectCompat;

    .line 670
    :goto_3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    .line 671
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->invalidate()V

    .line 676
    :cond_5
    iget p2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectorPosition:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_6

    .line 677
    iget v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstPosition:I

    sub-int/2addr p2, v1

    if-ltz p2, :cond_7

    .line 678
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildCount()I

    move-result v1

    if-ge p2, v1, :cond_7

    .line 679
    invoke-virtual {p0, p2}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    goto :goto_4

    .line 682
    :cond_6
    iget-object p2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    :cond_7
    :goto_4
    if-eqz p1, :cond_8

    if-eqz v6, :cond_9

    :cond_8
    const/4 v2, 0x1

    :cond_9
    return v2
.end method

.method private useDefaultSelector()V
    .locals 2

    .line 2167
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public beginFastChildLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 879
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFastChildLayout:Z

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1773
    instance-of p1, p1, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;

    return p1
.end method

.method public computeScroll()V
    .locals 4

    .line 800
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mScroller:Lcom/conceptglobal/pmc/views/ScrollerCompat;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/views/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 801
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mScroller:Lcom/conceptglobal/pmc/views/ScrollerCompat;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/views/ScrollerCompat;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    .line 802
    iget v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLastTouchY:F

    sub-float v1, v0, v1

    float-to-int v1, v1

    .line 803
    iput v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLastTouchY:F

    const/4 v0, 0x0

    .line 804
    invoke-direct {p0, v1, v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->trackMotionScroll(IZ)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 806
    iget-object v3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mScroller:Lcom/conceptglobal/pmc/views/ScrollerCompat;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/views/ScrollerCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 807
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->postInvalidate()V

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_3

    .line 810
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    if-lez v1, :cond_1

    .line 814
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTopEdge:Landroidx/core/widget/EdgeEffectCompat;

    goto :goto_0

    .line 816
    :cond_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mBottomEdge:Landroidx/core/widget/EdgeEffectCompat;

    .line 818
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mScroller:Lcom/conceptglobal/pmc/views/ScrollerCompat;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/views/ScrollerCompat;->getCurrVelocity()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 819
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->postInvalidate()V

    .line 821
    :cond_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mScroller:Lcom/conceptglobal/pmc/views/ScrollerCompat;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/views/ScrollerCompat;->abortAnimation()V

    .line 823
    :cond_3
    iput v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    :cond_4
    :goto_1
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 2399
    new-instance v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 830
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mDrawSelectorOnTop:Z

    if-nez v0, :cond_0

    .line 832
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 835
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_1

    .line 838
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 852
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 854
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTopEdge:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_2

    .line 856
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTopEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 860
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mBottomEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 861
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 862
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getWidth()I

    move-result v2

    neg-int v3, v2

    int-to-float v3, v3

    .line 863
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v2, v2

    const/4 v3, 0x0

    const/high16 v4, 0x43340000    # 180.0f

    .line 864
    invoke-virtual {p1, v4, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 865
    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mBottomEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    .line 866
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    .line 871
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->invalidate()V

    :cond_2
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 2501
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2502
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->updateSelectorState()V

    return-void
.end method

.method public endFastChildLayout()V
    .locals 1

    const/4 v0, 0x0

    .line 883
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFastChildLayout:Z

    .line 884
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->populate(Z)V

    return-void
.end method

.method final fillDown(II)I
    .locals 18

    move-object/from16 v0, p0

    .line 1357
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getPaddingLeft()I

    move-result v1

    .line 1358
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getPaddingRight()I

    move-result v2

    .line 1359
    iget v3, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemMargin:I

    .line 1360
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    sub-int/2addr v4, v2

    iget v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    add-int/lit8 v5, v2, -0x1

    mul-int v5, v5, v3

    sub-int/2addr v4, v5

    div-int/2addr v4, v2

    .line 1361
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v2, v5

    add-int v5, v2, p2

    .line 1363
    invoke-virtual/range {p0 .. p1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getNextColumnDown(I)I

    move-result v6

    move v7, v6

    move/from16 v6, p1

    :goto_0
    if-ltz v7, :cond_11

    .line 1366
    iget-object v9, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemBottoms:[I

    aget v9, v9, v7

    if-ge v9, v5, :cond_11

    iget v9, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemCount:I

    if-ge v6, v9, :cond_11

    const/4 v9, 0x0

    .line 1368
    invoke-virtual {v0, v6, v9}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_0

    goto :goto_0

    .line 1372
    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;

    if-nez v11, :cond_1

    .line 1374
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->generateDefaultLayoutParams()Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;

    move-result-object v11

    .line 1375
    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1377
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-eq v12, v0, :cond_3

    .line 1378
    iget-boolean v12, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mInLayout:Z

    if-eqz v12, :cond_2

    const/4 v12, -0x1

    .line 1379
    invoke-virtual {v0, v10, v12, v11}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_1

    .line 1381
    :cond_2
    invoke-virtual {v0, v10}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->addView(Landroid/view/View;)V

    .line 1385
    :cond_3
    :goto_1
    iget v12, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    iget v13, v11, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->span:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    mul-int v13, v4, v12

    add-int/lit8 v14, v12, -0x1

    mul-int v14, v14, v3

    add-int/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    .line 1387
    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    const/4 v15, 0x1

    if-le v12, v15, :cond_4

    .line 1391
    invoke-virtual {v0, v6, v12}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getNextRecordDown(II)Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;

    move-result-object v16

    goto :goto_2

    .line 1394
    :cond_4
    iget-object v15, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLayoutRecords:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v15, v6}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v15

    check-cast v16, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;

    :goto_2
    move-object/from16 v15, v16

    if-nez v15, :cond_5

    .line 1399
    new-instance v15, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;

    invoke-direct {v15, v9}, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;-><init>(Lcom/conceptglobal/pmc/views/StaggeredGridView$1;)V

    .line 1400
    iget-object v9, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLayoutRecords:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v9, v6, v15}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1401
    iput v7, v15, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->column:I

    .line 1402
    iput v12, v15, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->span:I

    goto :goto_3

    .line 1403
    :cond_5
    iget v9, v15, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->span:I

    if-eq v12, v9, :cond_6

    .line 1404
    iput v12, v15, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->span:I

    .line 1405
    iput v7, v15, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->column:I

    const/4 v9, 0x1

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v9, 0x0

    .line 1411
    :goto_4
    iget-boolean v14, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mHasStableIds:Z

    if-eqz v14, :cond_7

    .line 1412
    iget-object v14, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v17, v9

    invoke-interface {v14, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    .line 1413
    iput-wide v8, v15, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->id:J

    .line 1414
    iput-wide v8, v11, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->id:J

    goto :goto_5

    :cond_7
    move/from16 v17, v9

    .line 1417
    :goto_5
    iput v7, v11, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->column:I

    .line 1420
    iget v8, v11, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->height:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_8

    const/4 v8, 0x0

    .line 1421
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_6

    .line 1423
    :cond_8
    iget v8, v11, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->height:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1425
    :goto_6
    invoke-virtual {v10, v13, v8}, Landroid/view/View;->measure(II)V

    .line 1427
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    if-nez v17, :cond_9

    .line 1428
    iget v9, v15, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->height:I

    if-eq v8, v9, :cond_a

    iget v9, v15, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->height:I

    if-lez v9, :cond_a

    .line 1429
    :cond_9
    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->invalidateLayoutRecordsAfterPosition(I)V

    .line 1431
    :cond_a
    iput v8, v15, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->height:I

    const/4 v9, 0x1

    if-le v12, v9, :cond_c

    .line 1435
    iget-object v9, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemBottoms:[I

    aget v9, v9, v7

    add-int/lit8 v11, v7, 0x1

    :goto_7
    add-int v13, v7, v12

    if-ge v11, v13, :cond_d

    .line 1437
    iget-object v13, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemBottoms:[I

    aget v13, v13, v11

    if-le v13, v9, :cond_b

    move v9, v13

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1444
    :cond_c
    iget-object v9, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemBottoms:[I

    aget v9, v9, v7

    :cond_d
    add-int/2addr v9, v3

    add-int/2addr v8, v9

    add-int v11, v4, v3

    mul-int v11, v11, v7

    add-int/2addr v11, v1

    .line 1452
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v11

    .line 1453
    invoke-virtual {v10, v11, v9, v13, v8}, Landroid/view/View;->layout(IIII)V

    .line 1457
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1458
    iget-object v10, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashSet;

    invoke-virtual {v10, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 1462
    iget-object v10, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashSet;

    .line 1463
    invoke-virtual {v11, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1466
    :cond_e
    iget-object v10, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashSet;

    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_f
    move v9, v7

    :goto_9
    add-int v10, v7, v12

    if-ge v9, v10, :cond_10

    .line 1471
    iget-object v10, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemBottoms:[I

    sub-int v11, v9, v7

    invoke-virtual {v15, v11}, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->getMarginBelow(I)I

    move-result v11

    add-int/2addr v11, v8

    aput v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_10
    add-int/lit8 v6, v6, 0x1

    .line 1476
    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getNextColumnDown(I)I

    move-result v7

    goto/16 :goto_0

    :cond_11
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 1480
    :goto_a
    iget v3, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    if-ge v8, v3, :cond_13

    .line 1481
    iget-object v3, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemBottoms:[I

    aget v3, v3, v8

    if-le v3, v1, :cond_12

    move v1, v3

    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_13
    sub-int/2addr v1, v2

    return v1
.end method

.method final fillUp(II)I
    .locals 18

    move-object/from16 v0, p0

    .line 1166
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getPaddingLeft()I

    move-result v1

    .line 1167
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getPaddingRight()I

    move-result v2

    .line 1168
    iget v3, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemMargin:I

    .line 1170
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    sub-int/2addr v4, v2

    iget v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    add-int/lit8 v5, v2, -0x1

    mul-int v5, v5, v3

    sub-int/2addr v4, v5

    div-int/2addr v4, v2

    .line 1171
    iput v4, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColWidth:I

    .line 1172
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getPaddingTop()I

    move-result v2

    sub-int v5, v2, p2

    .line 1174
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getNextColumnUp()I

    move-result v6

    move v7, v6

    move/from16 v6, p1

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ltz v7, :cond_10

    .line 1177
    iget-object v10, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemTops:[I

    aget v10, v10, v7

    if-le v10, v5, :cond_10

    if-ltz v6, :cond_10

    .line 1180
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1181
    iget-object v11, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashSet;

    invoke-virtual {v11, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const/4 v11, 0x0

    .line 1182
    :goto_1
    iget-object v12, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_1

    .line 1183
    iget-object v12, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashSet;

    invoke-virtual {v12, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move v7, v11

    goto :goto_2

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const/4 v10, 0x0

    .line 1192
    invoke-virtual {v0, v6, v10}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_2

    goto :goto_0

    .line 1196
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;

    if-nez v12, :cond_3

    .line 1199
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->generateDefaultLayoutParams()Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;

    move-result-object v12

    .line 1200
    invoke-virtual {v11, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1203
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-eq v13, v0, :cond_5

    .line 1204
    iget-boolean v13, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mInLayout:Z

    if-eqz v13, :cond_4

    .line 1205
    invoke-virtual {v0, v11, v8, v12}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_3

    .line 1207
    :cond_4
    invoke-virtual {v0, v11, v8}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->addView(Landroid/view/View;I)V

    .line 1211
    :cond_5
    :goto_3
    iget v13, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    iget v14, v12, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->span:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    mul-int v14, v4, v13

    add-int/lit8 v15, v13, -0x1

    mul-int v15, v15, v3

    add-int/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    .line 1213
    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    if-le v13, v9, :cond_6

    .line 1217
    invoke-virtual {v0, v6, v13}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getNextRecordUp(II)Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;

    move-result-object v16

    goto :goto_4

    .line 1220
    :cond_6
    iget-object v9, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLayoutRecords:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v9, v6}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v16, v9

    check-cast v16, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;

    :goto_4
    move-object/from16 v9, v16

    if-nez v9, :cond_7

    .line 1225
    new-instance v9, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;

    invoke-direct {v9, v10}, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;-><init>(Lcom/conceptglobal/pmc/views/StaggeredGridView$1;)V

    .line 1226
    iget-object v10, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLayoutRecords:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v10, v6, v9}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1227
    iput v7, v9, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->column:I

    .line 1228
    iput v13, v9, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->span:I

    goto :goto_5

    .line 1229
    :cond_7
    iget v10, v9, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->span:I

    if-eq v13, v10, :cond_8

    .line 1230
    iput v13, v9, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->span:I

    .line 1231
    iput v7, v9, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->column:I

    move-object v10, v9

    const/4 v9, 0x1

    goto :goto_6

    :cond_8
    :goto_5
    move-object v10, v9

    const/4 v9, 0x0

    .line 1237
    :goto_6
    iget-boolean v15, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mHasStableIds:Z

    if-eqz v15, :cond_9

    .line 1238
    iget-object v15, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v17, v9

    invoke-interface {v15, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    .line 1239
    iput-wide v8, v10, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->id:J

    .line 1240
    iput-wide v8, v12, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->id:J

    goto :goto_7

    :cond_9
    move/from16 v17, v9

    .line 1243
    :goto_7
    iput v7, v12, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->column:I

    .line 1246
    iget v8, v12, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->height:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_a

    const/4 v8, 0x0

    .line 1247
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_8

    .line 1249
    :cond_a
    iget v8, v12, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->height:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1251
    :goto_8
    invoke-virtual {v11, v14, v8}, Landroid/view/View;->measure(II)V

    .line 1253
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    if-nez v17, :cond_b

    .line 1254
    iget v9, v10, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->height:I

    if-eq v8, v9, :cond_c

    iget v9, v10, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->height:I

    if-lez v9, :cond_c

    .line 1255
    :cond_b
    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->invalidateLayoutRecordsBeforePosition(I)V

    .line 1257
    :cond_c
    iput v8, v10, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->height:I

    .line 1259
    iget-object v9, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemTops:[I

    aget v9, v9, v7

    const/4 v12, 0x1

    if-le v13, v12, :cond_e

    add-int/lit8 v12, v7, 0x1

    :goto_9
    add-int v14, v7, v13

    if-ge v12, v14, :cond_e

    .line 1265
    iget-object v14, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemTops:[I

    aget v14, v14, v12

    if-ge v14, v9, :cond_d

    move v9, v14

    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_e
    sub-int v8, v9, v8

    add-int v12, v4, v3

    mul-int v12, v12, v7

    add-int/2addr v12, v1

    .line 1279
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v12

    .line 1288
    invoke-virtual {v11, v12, v8, v14, v9}, Landroid/view/View;->layout(IIII)V

    move v9, v7

    :goto_a
    add-int v11, v7, v13

    if-ge v9, v11, :cond_f

    .line 1292
    iget-object v11, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemTops:[I

    sub-int v12, v9, v7

    invoke-virtual {v10, v12}, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->getMarginAbove(I)I

    move-result v12

    sub-int v12, v8, v12

    sub-int/2addr v12, v3

    aput v12, v11, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 1295
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getNextColumnUp()I

    move-result v7

    add-int/lit8 v8, v6, -0x1

    .line 1296
    iput v6, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstPosition:I

    move v6, v8

    goto/16 :goto_0

    .line 1299
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getHeight()I

    move-result v1

    const/4 v3, 0x0

    .line 1301
    :goto_b
    iget v4, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    if-ge v3, v4, :cond_13

    .line 1302
    invoke-direct {v0, v3}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getFirstChildAtColumn(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_11

    goto :goto_c

    .line 1308
    :cond_11
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;

    .line 1309
    iget v5, v5, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->span:I

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v3, v5

    .line 1311
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-ge v4, v1, :cond_12

    move v1, v4

    :cond_12
    add-int/2addr v3, v6

    goto :goto_b

    :cond_13
    move v8, v1

    :goto_c
    sub-int/2addr v2, v8

    return v2
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->generateDefaultLayoutParams()Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;
    .locals 2

    .line 1763
    new-instance v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1778
    new-instance v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;
    .locals 1

    .line 1768
    new-instance v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 1683
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    .line 361
    iget v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 2384
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFirstPosition()I
    .locals 1

    .line 394
    iget v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstPosition:I

    return v0
.end method

.method final getNextColumnDown(I)I
    .locals 4

    .line 1580
    iget p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    const/4 v0, -0x1

    const v1, 0x7fffffff

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 1583
    iget-object v3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemBottoms:[I

    aget v3, v3, v2

    if-ge v3, v1, :cond_0

    move v0, v2

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method final getNextColumnUp()I
    .locals 4

    .line 1518
    iget v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    :goto_0
    if-ltz v0, :cond_1

    .line 1520
    iget-object v3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemTops:[I

    aget v3, v3, v0

    if-le v3, v2, :cond_0

    move v1, v0

    move v2, v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method final getNextRecordDown(II)Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;
    .locals 8

    .line 1594
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLayoutRecords:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;

    if-nez v0, :cond_0

    .line 1596
    new-instance v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;-><init>(Lcom/conceptglobal/pmc/views/StaggeredGridView$1;)V

    .line 1597
    iput p2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->span:I

    .line 1598
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLayoutRecords:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1599
    :cond_0
    iget v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->span:I

    if-ne v1, p2, :cond_6

    .line 1606
    :goto_0
    iget p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const v3, 0x7fffffff

    const/4 v4, 0x0

    :goto_1
    sub-int v5, p1, p2

    if-gt v4, v5, :cond_4

    const/high16 v5, -0x80000000

    move v6, v4

    :goto_2
    add-int v7, v4, p2

    if-ge v6, v7, :cond_2

    .line 1610
    iget-object v7, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemBottoms:[I

    aget v7, v7, v6

    if-le v7, v5, :cond_1

    move v5, v7

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    if-ge v5, v3, :cond_3

    move v2, v4

    move v3, v5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1621
    :cond_4
    iput v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->column:I

    :goto_3
    if-ge v1, p2, :cond_5

    .line 1624
    iget-object p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemBottoms:[I

    add-int v4, v1, v2

    aget p1, p1, v4

    sub-int p1, v3, p1

    invoke-virtual {v0, v1, p1}, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->setMarginAbove(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-object v0

    .line 1600
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid LayoutRecord! Record had span="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->span:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " but caller requested span="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for position="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final getNextRecordUp(II)Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;
    .locals 6

    .line 1536
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLayoutRecords:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;

    if-nez v0, :cond_0

    .line 1538
    new-instance v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;-><init>(Lcom/conceptglobal/pmc/views/StaggeredGridView$1;)V

    .line 1539
    iput p2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->span:I

    .line 1540
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLayoutRecords:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1541
    :cond_0
    iget v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->span:I

    if-ne v1, p2, :cond_6

    .line 1548
    :goto_0
    iget p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    sub-int/2addr p1, p2

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    :goto_1
    if-ltz p1, :cond_4

    const v3, 0x7fffffff

    move v4, p1

    :goto_2
    add-int v5, p1, p2

    if-ge v4, v5, :cond_2

    .line 1552
    iget-object v5, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemTops:[I

    aget v5, v5, v4

    if-ge v5, v3, :cond_1

    move v3, v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    if-le v3, v2, :cond_3

    move v1, p1

    move v2, v3

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 1563
    :cond_4
    iput v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->column:I

    const/4 p1, 0x0

    :goto_3
    if-ge p1, p2, :cond_5

    .line 1566
    iget-object v3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemTops:[I

    add-int v4, p1, v1

    aget v3, v3, v4

    sub-int/2addr v3, v2

    invoke-virtual {v0, p1, v3}, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->setMarginBelow(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    return-object v0

    .line 1542
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid LayoutRecord! Record had span="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->span:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " but caller requested span="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for position="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getOnItemClickListener()Lcom/conceptglobal/pmc/views/StaggeredGridView$OnItemClickListener;
    .locals 1

    .line 2546
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mOnItemClickListener:Lcom/conceptglobal/pmc/views/StaggeredGridView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/conceptglobal/pmc/views/StaggeredGridView$OnItemLongClickListener;
    .locals 1

    .line 2585
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mOnItemLongClickListener:Lcom/conceptglobal/pmc/views/StaggeredGridView$OnItemLongClickListener;

    return-object v0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2441
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method hideSelector()V
    .locals 0

    return-void
.end method

.method final invalidateLayoutRecordsAfterPosition(I)V
    .locals 3

    .line 1149
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLayoutRecords:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1150
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLayoutRecords:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v1

    if-le v1, p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, v0, 0x1

    .line 1154
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLayoutRecords:Landroidx/collection/SparseArrayCompat;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {v1, v0, v2}, Landroidx/collection/SparseArrayCompat;->removeAtRange(II)V

    return-void
.end method

.method final invalidateLayoutRecordsBeforePosition(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1142
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLayoutRecords:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLayoutRecords:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v2

    if-ge v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1145
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLayoutRecords:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1, v0, v1}, Landroidx/collection/SparseArrayCompat;->removeAtRange(II)V

    return-void
.end method

.method public isDrawSelectorOnTop()Z
    .locals 1

    .line 2635
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mDrawSelectorOnTop:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 2463
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 2464
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method final layoutChildren(Z)V
    .locals 20

    move-object/from16 v0, p0

    .line 1010
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getPaddingLeft()I

    move-result v1

    .line 1011
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getPaddingRight()I

    move-result v2

    .line 1012
    iget v3, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemMargin:I

    .line 1013
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    sub-int/2addr v4, v2

    iget v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    add-int/lit8 v5, v2, -0x1

    mul-int v5, v5, v3

    sub-int/2addr v4, v5

    div-int/2addr v4, v2

    .line 1014
    iput v4, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColWidth:I

    .line 1018
    iget-object v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemBottoms:[I

    const/high16 v5, -0x80000000

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([II)V

    .line 1020
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildCount()I

    move-result v2

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    :goto_0
    if-ge v8, v2, :cond_e

    .line 1024
    invoke-virtual {v0, v8}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1025
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;

    .line 1026
    iget v14, v13, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->column:I

    .line 1027
    iget v15, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstPosition:I

    add-int/2addr v15, v8

    if-nez p1, :cond_1

    .line 1028
    invoke-virtual {v12}, Landroid/view/View;->isLayoutRequested()Z

    move-result v16

    if-eqz v16, :cond_0

    goto :goto_1

    :cond_0
    const/16 v16, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v16, 0x1

    :goto_2
    if-eqz p1, :cond_5

    .line 1032
    invoke-virtual {v0, v15, v12}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_3

    .line 1035
    invoke-virtual {v0, v8}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->removeViewAt(I)V

    add-int/lit8 v6, v8, -0x1

    if-ltz v6, :cond_2

    .line 1036
    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->invalidateLayoutRecordsAfterPosition(I)V

    :cond_2
    add-int/lit8 v11, v11, 0x1

    move/from16 v18, v1

    move/from16 v19, v2

    goto/16 :goto_8

    :cond_3
    if-eq v13, v12, :cond_4

    .line 1040
    invoke-virtual {v0, v8}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->removeViewAt(I)V

    .line 1041
    invoke-virtual {v0, v13, v8}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->addView(Landroid/view/View;I)V

    move-object v12, v13

    .line 1044
    :cond_4
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;

    .line 1047
    :cond_5
    iget v6, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    iget v5, v13, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->span:I

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int v6, v4, v5

    add-int/lit8 v18, v5, -0x1

    mul-int v18, v18, v3

    add-int v6, v6, v18

    if-eqz v16, :cond_7

    const/high16 v7, 0x40000000    # 2.0f

    .line 1051
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1054
    iget v7, v13, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->height:I

    move/from16 v19, v2

    const/4 v2, -0x2

    if-ne v7, v2, :cond_6

    const/4 v2, 0x0

    .line 1055
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    .line 1057
    iget v7, v13, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->height:I

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v7, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1060
    :goto_3
    invoke-virtual {v12, v6, v7}, Landroid/view/View;->measure(II)V

    goto :goto_4

    :cond_7
    move/from16 v19, v2

    const/4 v2, 0x0

    .line 1063
    :goto_4
    iget-object v6, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemBottoms:[I

    aget v6, v6, v14

    const/high16 v7, -0x80000000

    if-le v6, v7, :cond_8

    iget v7, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemMargin:I

    add-int/2addr v6, v7

    goto :goto_5

    :cond_8
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v6

    :goto_5
    const/4 v7, 0x1

    if-le v5, v7, :cond_a

    add-int/lit8 v7, v14, 0x1

    :goto_6
    add-int v13, v14, v5

    if-ge v7, v13, :cond_a

    .line 1068
    iget-object v13, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemBottoms:[I

    aget v13, v13, v7

    iget v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemMargin:I

    add-int/2addr v13, v2

    if-le v13, v6, :cond_9

    move v6, v13

    :cond_9
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    goto :goto_6

    .line 1075
    :cond_a
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v7, v6, v2

    add-int v13, v4, v3

    mul-int v13, v13, v14

    add-int/2addr v13, v1

    .line 1078
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    move/from16 v18, v1

    add-int v1, v13, v17

    .line 1079
    invoke-virtual {v12, v13, v6, v1, v7}, Landroid/view/View;->layout(IIII)V

    move v1, v14

    :goto_7
    add-int v6, v14, v5

    if-ge v1, v6, :cond_b

    .line 1082
    iget-object v6, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemBottoms:[I

    aput v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1085
    :cond_b
    iget-object v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLayoutRecords:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v15}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;

    if-eqz v1, :cond_c

    .line 1086
    iget v6, v1, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->height:I

    if-eq v6, v2, :cond_c

    .line 1088
    iput v2, v1, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->height:I

    move v9, v15

    :cond_c
    if-eqz v1, :cond_d

    .line 1092
    iget v2, v1, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->span:I

    if-eq v2, v5, :cond_d

    .line 1094
    iput v5, v1, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->span:I

    move v10, v15

    :cond_d
    :goto_8
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v18

    move/from16 v2, v19

    const/high16 v5, -0x80000000

    goto/16 :goto_0

    :cond_e
    move/from16 v19, v2

    const/4 v1, 0x0

    .line 1100
    :goto_9
    iget v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    if-ge v1, v2, :cond_10

    .line 1101
    iget-object v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemBottoms:[I

    aget v3, v2, v1

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_f

    .line 1102
    iget-object v3, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemTops:[I

    aget v3, v3, v1

    aput v3, v2, v1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_10
    if-gez v9, :cond_11

    if-ltz v10, :cond_15

    :cond_11
    if-ltz v9, :cond_12

    .line 1108
    invoke-virtual {v0, v9}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->invalidateLayoutRecordsBeforePosition(I)V

    :cond_12
    if-ltz v10, :cond_13

    .line 1111
    invoke-virtual {v0, v10}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->invalidateLayoutRecordsAfterPosition(I)V

    :cond_13
    const/4 v7, 0x0

    :goto_a
    sub-int v2, v19, v11

    if-ge v7, v2, :cond_15

    .line 1114
    iget v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstPosition:I

    add-int/2addr v1, v7

    .line 1115
    invoke-virtual {v0, v7}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1116
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;

    .line 1117
    iget-object v4, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLayoutRecords:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v4, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;

    if-nez v4, :cond_14

    .line 1119
    new-instance v4, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;-><init>(Lcom/conceptglobal/pmc/views/StaggeredGridView$1;)V

    .line 1120
    iget-object v5, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLayoutRecords:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v5, v1, v4}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1122
    :cond_14
    iget v1, v3, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->column:I

    iput v1, v4, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->column:I

    .line 1123
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v4, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->height:I

    .line 1124
    iget-wide v1, v3, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->id:J

    iput-wide v1, v4, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->id:J

    .line 1125
    iget v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    iget v2, v3, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->span:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v4, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->span:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 1129
    :cond_15
    iget v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectorPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    .line 1130
    iget v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mMotionPosition:I

    iget v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 1131
    iget v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mMotionPosition:I

    invoke-virtual {v0, v2, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    goto :goto_b

    .line 1132
    :cond_16
    iget v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_17

    .line 1133
    iget v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mMotionPosition:I

    iget v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 1134
    iget v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mMotionPosition:I

    invoke-virtual {v0, v2, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    goto :goto_b

    .line 1136
    :cond_17
    iget-object v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_18
    :goto_b
    return-void
.end method

.method final obtainView(ILandroid/view/View;)Landroid/view/View;
    .locals 3

    .line 1639
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mRecycler:Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1644
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    .line 1651
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;

    iget v0, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->viewType:I

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    .line 1652
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 1654
    :cond_3
    iget-object p2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mRecycler:Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;

    invoke-virtual {p2, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object p2

    .line 1656
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eq v0, p2, :cond_4

    if-eqz p2, :cond_4

    .line 1660
    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mRecycler:Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;

    invoke-virtual {v2, p2}, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 1663
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 1665
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, p0, :cond_6

    if-nez p2, :cond_5

    .line 1667
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->generateDefaultLayoutParams()Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;

    move-result-object p2

    goto :goto_2

    .line 1668
    :cond_5
    invoke-virtual {p0, p2}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1669
    invoke-virtual {p0, p2}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;

    move-result-object p2

    .line 1673
    :cond_6
    :goto_2
    check-cast p2, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;

    .line 1674
    iput p1, p2, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->position:I

    .line 1675
    iput v1, p2, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->viewType:I

    .line 1678
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method final offsetChildren(I)V
    .locals 8

    .line 990
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 992
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 993
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, p1

    .line 994
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v7, p1

    .line 993
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 997
    :cond_0
    iget v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    :goto_1
    if-ge v1, v0, :cond_1

    .line 999
    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemTops:[I

    aget v3, v2, v1

    add-int/2addr v3, p1

    aput v3, v2, v1

    .line 1000
    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemBottoms:[I

    aget v3, v2, v1

    add-int/2addr v3, p1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3

    .line 2218
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mIsChildViewEnabled:Z

    if-eqz v0, :cond_0

    .line 2220
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1

    .line 2226
    :cond_0
    sget-object v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/lit8 p1, p1, 0x1

    .line 2231
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 2233
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 2234
    aget v2, p1, v1

    if-ne v2, v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    add-int/lit8 v0, v1, 0x1

    .line 2242
    array-length v2, p1

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 399
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 400
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 416
    :cond_0
    iget v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mActivePointerId:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    if-gez v0, :cond_1

    .line 418
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onInterceptTouchEvent could not find pointer with id "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - did StaggeredGridView receive an inconsistent event stream?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StaggeredGridView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 423
    :cond_1
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 424
    iget v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLastTouchY:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchRemainderY:F

    add-float/2addr p1, v0

    float-to-int v0, p1

    int-to-float v0, v0

    sub-float v0, p1, v0

    .line 426
    iput v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchRemainderY:F

    .line 428
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 429
    iput v3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    return v3

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 404
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mScroller:Lcom/conceptglobal/pmc/views/ScrollerCompat;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/views/ScrollerCompat;->abortAnimation()V

    .line 405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLastTouchY:F

    .line 406
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mActivePointerId:I

    const/4 p1, 0x0

    .line 407
    iput p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchRemainderY:F

    .line 408
    iget p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    if-ne p1, v1, :cond_3

    .line 410
    iput v3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    return v3

    :cond_3
    :goto_0
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    const/4 p1, 0x1

    .line 921
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mInLayout:Z

    const/4 p1, 0x0

    .line 922
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->populate(Z)V

    .line 923
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mInLayout:Z

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 927
    iget-object p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTopEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1, p4, p5}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    .line 928
    iget-object p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mBottomEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1, p4, p5}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 897
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 898
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 899
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 900
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 909
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->setMeasuredDimension(II)V

    .line 911
    iget p2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCountSetting:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 912
    iget p2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mMinColWidth:I

    div-int/2addr p1, p2

    .line 913
    iget p2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    if-eq p1, p2, :cond_0

    .line 914
    iput p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .line 1829
    check-cast p1, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;

    .line 1830
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    .line 1831
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mDataChanged:Z

    .line 1832
    iget v0, p1, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;->position:I

    iput v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstPosition:I

    .line 1833
    iget-object v0, p1, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;->topOffsets:[I

    iput-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mRestoreOffsets:[I

    .line 1835
    iget-object v0, p1, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1838
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1839
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/views/StaggeredGridView$ColMap;

    .line 1840
    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/HashSet;

    invoke-static {v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView$ColMap;->access$600(Lcom/conceptglobal/pmc/views/StaggeredGridView$ColMap;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1844
    :cond_0
    iget-wide v0, p1, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;->firstId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 1845
    iget-wide v0, p1, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;->firstId:J

    iput-wide v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstAdapterId:J

    const/4 p1, -0x1

    .line 1846
    iput p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectorPosition:I

    .line 1849
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .line 1783
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1784
    new-instance v1, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;

    invoke-direct {v1, v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1785
    iget v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstPosition:I

    .line 1786
    iput v0, v1, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;->position:I

    if-ltz v0, :cond_0

    .line 1788
    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1789
    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;->firstId:J

    .line 1792
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 1794
    iget v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    new-array v0, v0, [I

    .line 1796
    iget v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColWidth:I

    if-lez v2, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1797
    :goto_0
    iget v4, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    if-ge v3, v4, :cond_3

    .line 1798
    invoke-virtual {p0, v3}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1799
    invoke-virtual {p0, v3}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1800
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 1802
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mColWidth"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .line 1805
    :goto_1
    iget v6, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColWidth:I

    iget v7, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemMargin:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    mul-int v6, v6, v5

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    if-le v4, v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1809
    :cond_1
    invoke-virtual {p0, v3}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v6, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemMargin:I

    sub-int/2addr v4, v6

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v4, v6

    aput v4, v0, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1814
    :cond_3
    iput-object v0, v1, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;->topOffsets:[I

    .line 1817
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1818
    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 1819
    new-instance v4, Lcom/conceptglobal/pmc/views/StaggeredGridView$ColMap;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v4, v5}, Lcom/conceptglobal/pmc/views/StaggeredGridView$ColMap;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1822
    :cond_4
    iput-object v0, v1, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    :cond_5
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 446
    iget-object v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 447
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 449
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->pointToPosition(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_17

    if-eq v2, v8, :cond_8

    if-eq v2, v5, :cond_4

    if-eq v2, v6, :cond_0

    goto/16 :goto_8

    .line 511
    :cond_0
    iput v7, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->updateSelectorState()V

    .line 513
    invoke-virtual {v0, v7}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->setPressed(Z)V

    .line 514
    iget v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mMotionPosition:I

    iget v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 516
    invoke-virtual {v1, v7}, Landroid/view/View;->setPressed(Z)V

    .line 518
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 520
    iget-object v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mPendingCheckForLongPress:Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 523
    :cond_2
    iget-object v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTopEdge:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v1, :cond_3

    .line 524
    invoke-virtual {v1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 525
    iget-object v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mBottomEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 528
    :cond_3
    iput v7, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    goto/16 :goto_8

    .line 482
    :cond_4
    iget v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mActivePointerId:I

    invoke-static {v1, v2}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    if-gez v2, :cond_5

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onInterceptTouchEvent could not find pointer with id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - did StaggeredGridView receive an inconsistent event stream?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StaggeredGridView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 489
    :cond_5
    invoke-static {v1, v2}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 490
    iget v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLastTouchY:F

    sub-float v2, v1, v2

    iget v3, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchRemainderY:F

    add-float/2addr v2, v3

    float-to-int v3, v2

    int-to-float v4, v3

    sub-float v4, v2, v4

    .line 492
    iput v4, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchRemainderY:F

    .line 494
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_6

    .line 495
    iput v8, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    .line 498
    :cond_6
    iget v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    if-ne v2, v8, :cond_7

    .line 499
    iput v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLastTouchY:F

    .line 501
    invoke-direct {v0, v3, v8}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->trackMotionScroll(IZ)Z

    move-result v1

    if-nez v1, :cond_7

    .line 503
    iget-object v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 507
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->updateSelectorState()V

    goto/16 :goto_8

    .line 532
    :cond_8
    iget-object v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v9, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mMaximumVelocity:I

    int-to-float v9, v9

    const/16 v10, 0x3e8

    invoke-virtual {v2, v10, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 533
    iget-object v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v9, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mActivePointerId:I

    invoke-static {v2, v9}, Landroidx/core/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    .line 534
    iget v9, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    .line 536
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFlingVelocity:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_9

    .line 537
    iput v5, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    .line 538
    iget-object v11, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mScroller:Lcom/conceptglobal/pmc/views/ScrollerCompat;

    float-to-int v15, v2

    const/high16 v18, -0x80000000

    const v19, 0x7fffffff

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v11 .. v19}, Lcom/conceptglobal/pmc/views/ScrollerCompat;->fling(IIIIIIII)V

    .line 540
    iput v4, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLastTouchY:F

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->invalidate()V

    goto :goto_0

    .line 543
    :cond_9
    iput v7, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    .line 546
    :goto_0
    iget-boolean v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mDataChanged:Z

    const/4 v4, 0x6

    const/4 v5, 0x4

    if-nez v2, :cond_a

    iget-object v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_a

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 548
    iput v5, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    goto :goto_1

    .line 550
    :cond_a
    iput v4, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    :goto_1
    if-eq v9, v6, :cond_b

    if-eq v9, v5, :cond_b

    const/4 v2, 0x5

    if-eq v9, v2, :cond_b

    goto/16 :goto_7

    .line 557
    :cond_b
    iget v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstPosition:I

    sub-int v2, v3, v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 558
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v1, v9

    if-lez v9, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getWidth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpg-float v1, v1, v9

    if-gez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_2

    :cond_c
    const/4 v1, 0x0

    :goto_2
    if-eqz v2, :cond_16

    .line 560
    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v9

    if-nez v9, :cond_16

    if-eqz v1, :cond_16

    .line 561
    iget v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    if-eq v1, v6, :cond_d

    .line 562
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 565
    :cond_d
    iget-object v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mPerformClick:Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;

    if-nez v1, :cond_e

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->invalidate()V

    .line 567
    new-instance v1, Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;

    const/4 v9, 0x0

    invoke-direct {v1, v0, v9}, Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;-><init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;Lcom/conceptglobal/pmc/views/StaggeredGridView$1;)V

    iput-object v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mPerformClick:Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;

    .line 570
    :cond_e
    iget-object v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mPerformClick:Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;

    .line 571
    iput v3, v1, Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;->mClickMotionPosition:I

    .line 572
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;->rememberWindowAttachCount()V

    .line 575
    iget v9, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    if-eq v9, v6, :cond_10

    if-ne v9, v5, :cond_f

    goto :goto_3

    .line 615
    :cond_f
    iget-boolean v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mDataChanged:Z

    if-nez v2, :cond_16

    iget-object v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_16

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 616
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;->run()V

    goto :goto_6

    .line 576
    :cond_10
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getHandler()Landroid/os/Handler;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 578
    iget v9, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    if-ne v9, v6, :cond_11

    .line 579
    iget-object v6, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    goto :goto_4

    :cond_11
    iget-object v6, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mPendingCheckForLongPress:Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;

    .line 578
    :goto_4
    invoke-virtual {v7, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 582
    :cond_12
    iget-boolean v6, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mDataChanged:Z

    if-nez v6, :cond_15

    iget-object v6, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v6, :cond_15

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 583
    iput v5, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    .line 585
    iget-boolean v3, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mDataChanged:Z

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->layoutChildren(Z)V

    .line 586
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 587
    iget v3, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mMotionPosition:I

    invoke-virtual {v0, v3, v2}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    .line 588
    invoke-virtual {v0, v8}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->setPressed(Z)V

    .line 589
    iget-object v3, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_13

    .line 590
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 591
    instance-of v4, v3, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_13

    .line 592
    check-cast v3, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 595
    :cond_13
    iget-object v3, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v3, :cond_14

    .line 596
    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 598
    :cond_14
    new-instance v3, Lcom/conceptglobal/pmc/views/StaggeredGridView$1;

    invoke-direct {v3, v0, v2, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView$1;-><init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;Landroid/view/View;Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;)V

    iput-object v3, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 609
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 612
    :cond_15
    iput v4, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    :goto_5
    return v8

    .line 620
    :cond_16
    :goto_6
    iput v4, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    .line 623
    :goto_7
    iput-boolean v7, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mBeginClick:Z

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->updateSelectorState()V

    goto :goto_8

    .line 454
    :cond_17
    iget-object v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 455
    iget-object v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mScroller:Lcom/conceptglobal/pmc/views/ScrollerCompat;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/views/ScrollerCompat;->abortAnimation()V

    .line 456
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLastTouchY:F

    .line 457
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLastTouchX:F

    float-to-int v2, v2

    .line 458
    iget v3, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mLastTouchY:F

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->pointToPosition(II)I

    move-result v2

    .line 459
    invoke-static {v1, v7}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mActivePointerId:I

    .line 460
    iput v4, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchRemainderY:F

    .line 462
    iget v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    if-eq v1, v5, :cond_19

    iget-boolean v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mDataChanged:Z

    if-nez v1, :cond_19

    if-ltz v2, :cond_19

    iget-object v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_19

    .line 463
    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 464
    iput v6, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    .line 466
    iput-boolean v8, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mBeginClick:Z

    .line 468
    iget-object v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v1, :cond_18

    .line 469
    new-instance v1, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForTap;

    invoke-direct {v1, v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForTap;-><init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;)V

    iput-object v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 472
    :cond_18
    iget-object v1, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 475
    :cond_19
    iput v2, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mMotionPosition:I

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->invalidate()V

    :goto_8
    return v8
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7

    .line 2351
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mOnItemClickListener:Lcom/conceptglobal/pmc/views/StaggeredGridView$OnItemClickListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2352
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->playSoundEffect(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2354
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2356
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mOnItemClickListener:Lcom/conceptglobal/pmc/views/StaggeredGridView$OnItemClickListener;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/conceptglobal/pmc/views/StaggeredGridView$OnItemClickListener;->onItemClick(Lcom/conceptglobal/pmc/views/StaggeredGridView;Landroid/view/View;IJ)V

    return v0

    :cond_1
    return v1
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 7

    .line 2369
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mOnItemLongClickListener:Lcom/conceptglobal/pmc/views/StaggeredGridView$OnItemLongClickListener;

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    .line 2370
    invoke-interface/range {v0 .. v5}, Lcom/conceptglobal/pmc/views/StaggeredGridView$OnItemLongClickListener;->onItemLongClick(Lcom/conceptglobal/pmc/views/StaggeredGridView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2373
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2374
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    .line 2377
    invoke-virtual {p0, v6}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->performHapticFeedback(I)Z

    :cond_2
    return v0
.end method

.method public pointToPosition(II)I
    .locals 4

    .line 2615
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2617
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2621
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 2623
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2624
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 2625
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2626
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2627
    iget p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFirstPosition:I

    add-int/2addr p1, v1

    return p1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2173
    iput p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectorPosition:I

    .line 2176
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2177
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2178
    instance-of v1, p2, Lcom/conceptglobal/pmc/views/StaggeredGridView$SelectionBoundsAdjuster;

    if-eqz v1, :cond_1

    .line 2179
    move-object v1, p2

    check-cast v1, Lcom/conceptglobal/pmc/views/StaggeredGridView$SelectionBoundsAdjuster;

    invoke-interface {v1, p1}, Lcom/conceptglobal/pmc/views/StaggeredGridView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2182
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->positionSelector(IIII)V

    .line 2185
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mIsChildViewEnabled:Z

    .line 2186
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eq p2, p1, :cond_2

    xor-int/lit8 p1, p1, 0x1

    .line 2187
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mIsChildViewEnabled:Z

    .line 2188
    invoke-direct {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getSelectedItemPosition()I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 2189
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->refreshDrawableState()V

    :cond_2
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 889
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mPopulating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mFastChildLayout:Z

    if-nez v0, :cond_0

    .line 890
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4

    .line 1687
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 1688
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mObserver:Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1692
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->clearAllState()V

    .line 1693
    iput-object p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v0, 0x1

    .line 1694
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mDataChanged:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1696
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemCount:I

    if-eqz p1, :cond_2

    .line 1699
    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mObserver:Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;

    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1700
    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mRecycler:Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->setViewTypeCount(I)V

    .line 1701
    invoke-interface {p1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    iput-boolean v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mHasStableIds:Z

    goto :goto_1

    .line 1703
    :cond_2
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mHasStableIds:Z

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 1705
    :goto_2
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->populate(Z)V

    return-void
.end method

.method public setColumnCount(I)V
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Column count must be at least 1 - received "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_1
    :goto_0
    iget v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 354
    :goto_1
    iput p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCountSetting:I

    iput p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mColCount:I

    if-eqz v0, :cond_3

    .line 356
    invoke-direct {p0, v2}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->populate(Z)V

    :cond_3
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0

    .line 2639
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mDrawSelectorOnTop:Z

    return-void
.end method

.method public setItemMargin(I)V
    .locals 2

    .line 380
    iget v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemMargin:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 381
    :goto_0
    iput p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mItemMargin:I

    if-eqz v0, :cond_1

    .line 383
    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->populate(Z)V

    :cond_1
    return-void
.end method

.method public setMinColumnWidth(I)V
    .locals 0

    .line 369
    iput p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mMinColWidth:I

    const/4 p1, -0x1

    .line 370
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->setColumnCount(I)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/conceptglobal/pmc/views/StaggeredGridView$OnItemClickListener;)V
    .locals 0

    .line 2538
    iput-object p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mOnItemClickListener:Lcom/conceptglobal/pmc/views/StaggeredGridView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/conceptglobal/pmc/views/StaggeredGridView$OnItemLongClickListener;)V
    .locals 1

    .line 2574
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2575
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->setLongClickable(Z)V

    .line 2577
    :cond_0
    iput-object p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mOnItemLongClickListener:Lcom/conceptglobal/pmc/views/StaggeredGridView$OnItemLongClickListener;

    return-void
.end method

.method public setSelectionToTop()V
    .locals 1

    .line 1752
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->removeAllViews()V

    .line 1755
    invoke-direct {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->resetStateForGridTop()V

    const/4 v0, 0x0

    .line 1758
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->populate(Z)V

    return-void
.end method

.method public setSelector(I)V
    .locals 1

    .line 2452
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 2468
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2469
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2470
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2473
    :cond_0
    iput-object p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    return-void

    .line 2479
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2480
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2481
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectionLeftPadding:I

    .line 2482
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectionTopPadding:I

    .line 2483
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectionRightPadding:I

    .line 2484
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelectionBottomPadding:I

    .line 2485
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2486
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->updateSelectorState()V

    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .line 2513
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mBeginClick:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method touchModeDrawsInPressedState()Z
    .locals 2

    .line 2522
    iget v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mTouchMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method updateSelectorState()V
    .locals 2

    .line 2490
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 2491
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2492
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 2494
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 2457
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
