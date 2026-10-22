.class public Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "TabIndicatorView.java"

# interfaces
.implements Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;,
        Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;,
        Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewPagerIndicatorFactory;,
        Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;
    }
.end annotation


# static fields
.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLL:I = 0x0

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2


# instance fields
.field private mAdapter:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;

.field private mCenterCurrentTab:Z

.field protected mCurrentStyle:I

.field private mFactory:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;

.field private mIndicatorAtTop:Z

.field private mIndicatorHeight:I

.field private mIndicatorOffset:I

.field private mIndicatorWidth:I

.field private mIsRtl:Z

.field private mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private mMode:I

.field private mPaint:Landroid/graphics/Paint;

.field private mScrolling:Z

.field private mScrollingToCenter:Z

.field private mSelectedPosition:I

.field protected mStyleId:I

.field private mTabAnimSelector:Ljava/lang/Runnable;

.field private mTabPadding:I

.field private mTabRippleStyle:I

.field private mTabSingleLine:Z

.field private mTextAppearance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 70
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x80000000

    .line 34
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mCurrentStyle:I

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mScrollingToCenter:Z

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0, p1, v1, v0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 76
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x80000000

    .line 34
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mCurrentStyle:I

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mScrollingToCenter:Z

    .line 78
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x80000000

    .line 34
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mCurrentStyle:I

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mScrollingToCenter:Z

    .line 84
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mSelectedPosition:I

    return p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;Landroid/view/View;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->updateIndicator(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mScrolling:Z

    return p0
.end method

.method static synthetic access$402(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mTabAnimSelector:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mTabPadding:I

    return p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mTabRippleStyle:I

    return p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mTextAppearance:I

    return p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mTabSingleLine:Z

    return p0
.end method

.method private animateToTab(I)V
    .locals 1

    if-ltz p1, :cond_2

    .line 213
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mAdapter:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mTabAnimSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 219
    :cond_1
    new-instance v0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$2;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$2;-><init>(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;I)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mTabAnimSelector:Ljava/lang/Runnable;

    .line 230
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateIndicator(II)V
    .locals 0

    .line 234
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mIndicatorOffset:I

    .line 235
    iput p2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mIndicatorWidth:I

    .line 236
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->invalidate()V

    return-void
.end method

.method private updateIndicator(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->updateIndicator(II)V

    .line 242
    check-cast p1, Landroid/widget/Checkable;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->getWidth()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->updateIndicator(II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public applyStyle(I)V
    .locals 3

    .line 130
    invoke-static {p0, p1}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyStyle(Landroid/view/View;I)V

    .line 131
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    .line 135
    sget-object v0, Lcom/conceptglobal/imaterialdesign/R$styleable;->TabPageIndicator:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 144
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    const/4 p4, -0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v2, p3, :cond_9

    .line 145
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 146
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->TabPageIndicator_tpi_tabPadding:I

    if-ne v8, v9, :cond_0

    .line 147
    invoke-virtual {p2, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    goto :goto_1

    .line 148
    :cond_0
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->TabPageIndicator_tpi_tabRipple:I

    if-ne v8, v9, :cond_1

    .line 149
    invoke-virtual {p2, v8, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    goto :goto_1

    .line 150
    :cond_1
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->TabPageIndicator_tpi_indicatorColor:I

    if-ne v8, v9, :cond_2

    .line 151
    iget-object v7, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v8, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 152
    :cond_2
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->TabPageIndicator_tpi_indicatorHeight:I

    if-ne v8, v9, :cond_3

    .line 153
    invoke-virtual {p2, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mIndicatorHeight:I

    goto :goto_1

    .line 154
    :cond_3
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->TabPageIndicator_tpi_indicatorAtTop:I

    if-ne v8, v9, :cond_4

    .line 155
    invoke-virtual {p2, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mIndicatorAtTop:Z

    goto :goto_1

    .line 156
    :cond_4
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->TabPageIndicator_tpi_tabSingleLine:I

    if-ne v8, v9, :cond_5

    .line 157
    invoke-virtual {p2, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/4 v4, 0x1

    goto :goto_1

    .line 160
    :cond_5
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->TabPageIndicator_tpi_centerCurrentTab:I

    if-ne v8, v9, :cond_6

    .line 161
    invoke-virtual {p2, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mCenterCurrentTab:Z

    goto :goto_1

    .line 162
    :cond_6
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->TabPageIndicator_android_textAppearance:I

    if-ne v8, v7, :cond_7

    .line 163
    invoke-virtual {p2, v8, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    goto :goto_1

    .line 164
    :cond_7
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->TabPageIndicator_tpi_mode:I

    if-ne v8, v7, :cond_8

    .line 165
    invoke-virtual {p2, v8, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    :cond_8
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :cond_9
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    iget p2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mIndicatorHeight:I

    if-gez p2, :cond_a

    const/4 p2, 0x2

    .line 171
    invoke-static {p1, p2}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mIndicatorHeight:I

    :cond_a
    if-ltz p4, :cond_b

    .line 175
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mTabPadding:I

    if-eq p1, p4, :cond_b

    .line 176
    iput p4, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mTabPadding:I

    const/4 p1, 0x1

    goto :goto_2

    :cond_b
    const/4 p1, 0x0

    :goto_2
    if-eqz v4, :cond_c

    .line 180
    iget-boolean p2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mTabSingleLine:Z

    if-eq p2, v3, :cond_c

    .line 181
    iput-boolean v3, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mTabSingleLine:Z

    const/4 p1, 0x1

    :cond_c
    if-ltz v1, :cond_d

    .line 185
    iget p2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mMode:I

    if-eq p2, v1, :cond_d

    .line 186
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mMode:I

    .line 187
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mAdapter:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;

    invoke-virtual {p1, v0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->setFixedWidth(II)V

    const/4 p1, 0x1

    :cond_d
    if-eqz v5, :cond_e

    .line 191
    iget p2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mTextAppearance:I

    if-eq p2, v5, :cond_e

    .line 192
    iput v5, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mTextAppearance:I

    const/4 p1, 0x1

    :cond_e
    if-eqz v6, :cond_f

    .line 196
    iget p2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mTabRippleStyle:I

    if-eq v6, p2, :cond_f

    .line 197
    iput v6, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mTabRippleStyle:I

    goto :goto_3

    :cond_f
    move v7, p1

    :goto_3
    if-eqz v7, :cond_10

    .line 202
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mAdapter:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->getItemCount()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->notifyItemRangeChanged(II)V

    .line 204
    :cond_10
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->invalidate()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 336
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 338
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mIndicatorOffset:I

    .line 339
    iget-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mIndicatorAtTop:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mIndicatorHeight:I

    sub-int/2addr v1, v2

    :goto_0
    int-to-float v3, v0

    int-to-float v4, v1

    .line 340
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mIndicatorWidth:I

    add-int/2addr v0, v2

    int-to-float v5, v0

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mIndicatorHeight:I

    add-int/2addr v1, v0

    int-to-float v6, v1

    iget-object v7, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->setHorizontalScrollBarEnabled(Z)V

    const/4 v1, -0x1

    .line 90
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mTabPadding:I

    const/4 v2, 0x1

    .line 91
    iput-boolean v2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mTabSingleLine:Z

    .line 92
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mCenterCurrentTab:Z

    .line 93
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mIndicatorHeight:I

    .line 94
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mIndicatorAtTop:Z

    .line 95
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mScrolling:Z

    .line 96
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mIsRtl:Z

    .line 98
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mPaint:Landroid/graphics/Paint;

    .line 99
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1, v1}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->colorAccent(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    new-instance v1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;

    invoke-direct {v1, p0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;-><init>(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)V

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mAdapter:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;

    .line 103
    invoke-virtual {p0, v1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 104
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-boolean v2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mIsRtl:Z

    invoke-direct {v1, p1, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 105
    invoke-virtual {p0, v1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 106
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 107
    new-instance v0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$1;-><init>(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 123
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 125
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-static {p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getStyleId(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mStyleId:I

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 279
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 281
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mTabAnimSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->post(Ljava/lang/Runnable;)Z

    .line 284
    :cond_0
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mStyleId:I

    if-eqz v0, :cond_1

    .line 285
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->registerOnThemeChangedListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V

    const/4 v0, 0x0

    .line 286
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->onThemeChanged(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;)V

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 292
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    .line 293
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mTabAnimSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 296
    :cond_0
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mStyleId:I

    if-eqz v0, :cond_1

    .line 297
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->unregisterOnThemeChangedListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 313
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    .line 315
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mMode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 317
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mAdapter:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 319
    div-int v1, p1, v0

    sub-int/2addr v0, p2

    mul-int v0, v0, v1

    sub-int/2addr p1, v0

    .line 321
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mAdapter:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;

    invoke-virtual {p2, v1, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->setFixedWidth(II)V

    goto :goto_0

    .line 324
    :cond_0
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mAdapter:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;

    invoke-virtual {p2, p1, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->setFixedWidth(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 303
    :goto_0
    iget-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mIsRtl:Z

    if-eq p1, v1, :cond_1

    .line 304
    iput-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mIsRtl:Z

    .line 305
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mIsRtl:Z

    invoke-direct {p1, v1, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 306
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 307
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->requestLayout()V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 330
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    .line 331
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget p2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mSelectedPosition:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->updateIndicator(Landroid/view/View;)V

    return-void
.end method

.method protected onTabScrollStateChanged(I)V
    .locals 6

    .line 349
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mCenterCurrentTab:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 351
    iget-boolean v3, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mScrollingToCenter:Z

    if-nez v3, :cond_0

    .line 352
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mSelectedPosition:I

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 354
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v4, v3

    div-int/2addr v4, v0

    .line 355
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->getRight()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/2addr v3, v0

    sub-int/2addr v4, v3

    if-eqz v4, :cond_0

    .line 358
    invoke-virtual {p0, v4, v1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->smoothScrollBy(II)V

    .line 359
    iput-boolean v2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mScrollingToCenter:Z

    :cond_0
    if-eq p1, v2, :cond_1

    if-ne p1, v0, :cond_2

    .line 366
    :cond_1
    iput-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mScrollingToCenter:Z

    :cond_2
    if-nez p1, :cond_3

    .line 370
    iput-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mScrolling:Z

    .line 371
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mSelectedPosition:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    .line 372
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->updateIndicator(Landroid/view/View;)V

    goto :goto_0

    .line 375
    :cond_3
    iput-boolean v2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mScrolling:Z

    :goto_0
    return-void
.end method

.method protected onTabScrolled(IF)V
    .locals 5

    .line 379
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 383
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 384
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int v2, v1, p1

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v4, v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p1, v4

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 388
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v4, v3

    add-float/2addr v0, v4

    mul-float v2, v2, p2

    add-float/2addr v0, v2

    int-to-float p2, p1

    div-float/2addr p2, v3

    sub-float/2addr v0, p2

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 389
    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->updateIndicator(II)V

    :cond_0
    return-void
.end method

.method protected onTabSelected(I)V
    .locals 0

    .line 394
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->setCurrentTab(I)V

    return-void
.end method

.method public onThemeChanged(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;)V
    .locals 1

    .line 270
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object p1

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mStyleId:I

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getCurrentStyle(I)I

    move-result p1

    .line 271
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mCurrentStyle:I

    if-eq v0, p1, :cond_0

    .line 272
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mCurrentStyle:I

    .line 273
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->applyStyle(I)V

    :cond_0
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 2

    .line 254
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mSelectedPosition:I

    if-eq v0, p1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    check-cast v0, Landroid/widget/Checkable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 260
    :cond_0
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mSelectedPosition:I

    .line 261
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 263
    check-cast v0, Landroid/widget/Checkable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 265
    :cond_1
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->animateToTab(I)V

    return-void
.end method

.method public setTabIndicatorFactory(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;)V
    .locals 1

    .line 208
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mFactory:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;

    .line 209
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->mAdapter:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->setFactory(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;)V

    return-void
.end method
