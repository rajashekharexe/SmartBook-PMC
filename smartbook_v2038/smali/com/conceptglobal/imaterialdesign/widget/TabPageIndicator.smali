.class public Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "TabPageIndicator.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;
    }
.end annotation


# static fields
.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLL:I


# instance fields
.field protected mCurrentStyle:I

.field private mIndicatorAtTop:Z

.field private mIndicatorHeight:I

.field private mIndicatorOffset:I

.field private mIndicatorWidth:I

.field private mIsRtl:Z

.field private mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mMode:I

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPaint:Landroid/graphics/Paint;

.field private mScrolling:Z

.field private mSelectedPosition:I

.field protected mStyleId:I

.field private mTabAnimSelector:Ljava/lang/Runnable;

.field private mTabContainer:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;

.field private mTabPadding:I

.field private mTabRippleStyle:I

.field private mTabSingleLine:Z

.field private mTextAppearance:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 78
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x80000000

    .line 34
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mCurrentStyle:I

    .line 63
    new-instance v0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$1;-><init>(Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mObserver:Landroid/database/DataSetObserver;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x80000000

    .line 34
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mCurrentStyle:I

    .line 63
    new-instance v0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$1;-><init>(Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mObserver:Landroid/database/DataSetObserver;

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x80000000

    .line 34
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mCurrentStyle:I

    .line 63
    new-instance v0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$1;-><init>(Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mObserver:Landroid/database/DataSetObserver;

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 v0, -0x80000000

    .line 34
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mCurrentStyle:I

    .line 63
    new-instance v0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$1;-><init>(Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mObserver:Landroid/database/DataSetObserver;

    .line 99
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->notifyDataSetInvalidated()V

    return-void
.end method

.method static synthetic access$200(Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;I)Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getTabView(I)Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mScrolling:Z

    return p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->updateIndicator(II)V

    return-void
.end method

.method static synthetic access$502(Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabAnimSelector:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mMode:I

    return p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mIsRtl:Z

    return p0
.end method

.method private addTemporaryTab()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 526
    const-string v4, "TAB ONE"

    goto :goto_1

    :cond_0
    if-ne v1, v3, :cond_1

    .line 528
    const-string v4, "TAB TWO"

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 530
    const-string v4, "TAB THREE"

    goto :goto_1

    :cond_2
    move-object v4, v2

    .line 532
    :goto_1
    new-instance v5, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    .line 533
    invoke-virtual {v5, v2}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 534
    invoke-virtual {v5, v4}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x11

    .line 535
    invoke-virtual {v5, v2}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setGravity(I)V

    .line 536
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTextAppearance:I

    invoke-virtual {v5, v2, v4}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 537
    invoke-virtual {v5, v3}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setSingleLine(Z)V

    .line 538
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v2}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 539
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setTag(Ljava/lang/Object;)V

    if-nez v1, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 540
    :goto_2
    invoke-virtual {v5, v2}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setChecked(Z)V

    .line 541
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mMode:I

    const/4 v4, -0x1

    if-nez v2, :cond_4

    .line 542
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabPadding:I

    invoke-virtual {v5, v2, v0, v2, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setPadding(IIII)V

    .line 543
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabContainer:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v3, v6, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v3}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_4
    if-ne v2, v3, :cond_5

    .line 546
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 547
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 548
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabContainer:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;

    invoke-virtual {v3, v5, v2}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private animateToTab(I)V
    .locals 1

    .line 304
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getTabView(I)Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabAnimSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 310
    :cond_1
    new-instance v0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$2;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$2;-><init>(Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;I)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabAnimSelector:Ljava/lang/Runnable;

    .line 323
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getTabView(I)Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabContainer:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    return-object p1
.end method

.method private notifyDataSetChanged()V
    .locals 9

    .line 466
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabContainer:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->removeAllViews()V

    .line 468
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    .line 471
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mSelectedPosition:I

    if-le v2, v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    .line 472
    iput v2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mSelectedPosition:I

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 475
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_1

    .line 477
    const-string v4, "NULL"

    .line 479
    :cond_1
    new-instance v5, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    .line 480
    invoke-virtual {v5, v6}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 481
    invoke-virtual {v5, v4}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x11

    .line 482
    invoke-virtual {v5, v4}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setGravity(I)V

    .line 483
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v6, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTextAppearance:I

    invoke-virtual {v5, v4, v6}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 484
    iget-boolean v4, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabSingleLine:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    .line 485
    invoke-virtual {v5, v4}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setSingleLine(Z)V

    goto :goto_1

    .line 487
    :cond_2
    invoke-virtual {v5, v2}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setSingleLine(Z)V

    const/4 v4, 0x2

    .line 488
    invoke-virtual {v5, v4}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setMaxLines(I)V

    .line 490
    :goto_1
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v4}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 491
    invoke-virtual {v5, p0}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setTag(Ljava/lang/Object;)V

    .line 493
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabRippleStyle:I

    if-lez v4, :cond_3

    .line 494
    new-instance v4, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabRippleStyle:I

    invoke-direct {v4, v6, v7}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->build()Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 496
    :cond_3
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabPadding:I

    invoke-virtual {v5, v4, v2, v4, v2}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setPadding(IIII)V

    .line 497
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabContainer:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 500
    :cond_4
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->setCurrentItem(I)V

    .line 501
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->requestLayout()V

    return-void
.end method

.method private notifyDataSetInvalidated()V
    .locals 5

    .line 505
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    .line 506
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 508
    invoke-direct {p0, v2}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getTabView(I)Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 511
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_0

    .line 513
    const-string v4, "NULL"

    .line 515
    :cond_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 519
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->requestLayout()V

    return-void
.end method

.method private updateIndicator(II)V
    .locals 0

    .line 378
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mIndicatorOffset:I

    .line 379
    iput p2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mIndicatorWidth:I

    .line 380
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->invalidate()V

    return-void
.end method


# virtual methods
.method public applyStyle(I)V
    .locals 3

    .line 128
    invoke-static {p0, p1}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyStyle(Landroid/view/View;I)V

    .line 129
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    .line 133
    sget-object v0, Lcom/conceptglobal/imaterialdesign/R$styleable;->TabPageIndicator:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 139
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    const/4 p4, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v1, p3, :cond_8

    .line 140
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 141
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->TabPageIndicator_tpi_tabPadding:I

    if-ne v6, v7, :cond_0

    .line 142
    invoke-virtual {p2, v6, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabPadding:I

    goto :goto_1

    .line 143
    :cond_0
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->TabPageIndicator_tpi_tabRipple:I

    if-ne v6, v7, :cond_1

    .line 144
    invoke-virtual {p2, v6, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    goto :goto_1

    .line 145
    :cond_1
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->TabPageIndicator_tpi_indicatorColor:I

    if-ne v6, v7, :cond_2

    .line 146
    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v6, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 147
    :cond_2
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->TabPageIndicator_tpi_indicatorHeight:I

    if-ne v6, v7, :cond_3

    .line 148
    invoke-virtual {p2, v6, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mIndicatorHeight:I

    goto :goto_1

    .line 149
    :cond_3
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->TabPageIndicator_tpi_indicatorAtTop:I

    if-ne v6, v7, :cond_4

    .line 150
    invoke-virtual {p2, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mIndicatorAtTop:Z

    goto :goto_1

    .line 151
    :cond_4
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->TabPageIndicator_tpi_tabSingleLine:I

    if-ne v6, v7, :cond_5

    .line 152
    invoke-virtual {p2, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabSingleLine:Z

    goto :goto_1

    .line 153
    :cond_5
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->TabPageIndicator_android_textAppearance:I

    if-ne v6, v5, :cond_6

    .line 154
    invoke-virtual {p2, v6, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    goto :goto_1

    .line 155
    :cond_6
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->TabPageIndicator_tpi_mode:I

    if-ne v6, v5, :cond_7

    .line 156
    invoke-virtual {p2, v6, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    iget p2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabPadding:I

    if-gez p2, :cond_9

    const/16 p2, 0xc

    .line 162
    invoke-static {p1, p2}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabPadding:I

    .line 164
    :cond_9
    iget p2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mIndicatorHeight:I

    if-gez p2, :cond_a

    const/4 p2, 0x2

    .line 165
    invoke-static {p1, p2}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mIndicatorHeight:I

    :cond_a
    if-ltz v2, :cond_d

    .line 168
    iget p2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mMode:I

    if-ne p2, v2, :cond_b

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getChildCount()I

    move-result p2

    if-nez p2, :cond_d

    .line 169
    :cond_b
    iput v2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mMode:I

    .line 170
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->removeAllViews()V

    .line 171
    iget p2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mMode:I

    if-nez p2, :cond_c

    .line 172
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabContainer:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p3, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p3}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    invoke-virtual {p0, p4}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->setFillViewport(Z)V

    goto :goto_2

    :cond_c
    if-ne p2, v5, :cond_d

    .line 176
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabContainer:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p3, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p3}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    invoke-virtual {p0, v5}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->setFillViewport(Z)V

    :cond_d
    :goto_2
    if-eqz v3, :cond_e

    .line 182
    iget p2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTextAppearance:I

    if-eq p2, v3, :cond_e

    .line 183
    iput v3, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTextAppearance:I

    .line 184
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabContainer:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;

    invoke-virtual {p2}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_3
    if-ge p3, p2, :cond_e

    .line 185
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabContainer:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;

    invoke-virtual {v0, p3}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    .line 186
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTextAppearance:I

    invoke-virtual {v0, p1, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setTextAppearance(Landroid/content/Context;I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_e
    if-eqz v4, :cond_f

    .line 190
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabRippleStyle:I

    if-eq v4, p1, :cond_f

    .line 191
    iput v4, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabRippleStyle:I

    .line 192
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabContainer:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getChildCount()I

    move-result p1

    :goto_4
    if-ge p4, p1, :cond_f

    .line 193
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabContainer:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;

    invoke-virtual {p2, p4}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabRippleStyle:I

    invoke-direct {p3, v0, v1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->build()Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    .line 196
    :cond_f
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_10

    .line 197
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->notifyDataSetChanged()V

    .line 198
    :cond_10
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->requestLayout()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 385
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 387
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mIndicatorOffset:I

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 388
    iget-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mIndicatorAtTop:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getHeight()I

    move-result v1

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mIndicatorHeight:I

    sub-int/2addr v1, v3

    :goto_0
    int-to-float v4, v0

    int-to-float v9, v1

    .line 389
    iget v3, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mIndicatorWidth:I

    add-int/2addr v0, v3

    int-to-float v6, v0

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mIndicatorHeight:I

    add-int/2addr v0, v1

    int-to-float v7, v0

    iget-object v8, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 391
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getPaddingLeft()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getPaddingLeft()I

    move-result v0

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabContainer:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;

    invoke-virtual {v3, v2}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v8, v0

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mIndicatorHeight:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    iget-object v10, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v9

    move v9, v0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->setHorizontalScrollBarEnabled(Z)V

    const/4 v1, -0x1

    .line 105
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabPadding:I

    const/4 v2, 0x1

    .line 106
    iput-boolean v2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabSingleLine:Z

    .line 107
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mIndicatorHeight:I

    .line 108
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mIndicatorAtTop:Z

    .line 109
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mScrolling:Z

    .line 110
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mIsRtl:Z

    .line 112
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mPaint:Landroid/graphics/Paint;

    .line 113
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1, v1}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->colorAccent(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    new-instance v0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;-><init>(Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabContainer:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;

    .line 118
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 120
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->addTemporaryTab()V

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    invoke-static {p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getStyleId(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mStyleId:I

    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 212
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 214
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabAnimSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 217
    :cond_0
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mStyleId:I

    if-eqz v0, :cond_1

    .line 218
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->registerOnThemeChangedListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V

    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->onThemeChanged(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 439
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 440
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mSelectedPosition:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 441
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 225
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 226
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabAnimSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 229
    :cond_0
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mStyleId:I

    if-eqz v0, :cond_1

    .line 230
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->unregisterOnThemeChangedListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 244
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 245
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 246
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 247
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getPaddingLeft()I

    move-result p1

    sub-int p1, v1, p1

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getPaddingRight()I

    move-result v4

    sub-int/2addr p1, v4

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    if-eqz v2, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getPaddingTop()I

    move-result p2

    sub-int p2, v3, p2

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getPaddingBottom()I

    move-result v4

    sub-int/2addr p2, v4

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 257
    :cond_1
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabContainer:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;

    invoke-virtual {v4, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->measure(II)V

    const/high16 p1, -0x80000000

    const/4 p2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v0, p1, :cond_3

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabContainer:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabContainer:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getPaddingLeft()I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getPaddingRight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_4
    :goto_0
    if-eq v2, p1, :cond_6

    if-eqz v2, :cond_5

    if-eq v2, v4, :cond_7

    const/4 v3, 0x0

    goto :goto_1

    .line 275
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabContainer:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getPaddingBottom()I

    move-result p2

    add-int v3, p1, p2

    goto :goto_1

    .line 278
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabContainer:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 285
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabContainer:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getPaddingLeft()I

    move-result p2

    sub-int p2, v1, p2

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_8

    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabContainer:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getPaddingTop()I

    move-result p2

    sub-int p2, v3, p2

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    if-eq p1, p2, :cond_9

    .line 286
    :cond_8
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabContainer:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getPaddingLeft()I

    move-result p2

    sub-int p2, v1, p2

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getPaddingTop()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->measure(II)V

    .line 288
    :cond_9
    invoke-virtual {p0, v1, v3}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 398
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mScrolling:Z

    .line 399
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mSelectedPosition:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getTabView(I)Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 401
    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->updateIndicator(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 405
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mScrolling:Z

    .line 407
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 408
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_2
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    .line 413
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 414
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 416
    :cond_0
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getTabView(I)Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    move-result-object p3

    add-int/lit8 p1, p1, 0x1

    .line 417
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getTabView(I)Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    move-result-object p1

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    .line 420
    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->getMeasuredWidth()I

    move-result v0

    .line 421
    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->getMeasuredWidth()I

    move-result p1

    add-int v1, v0, p1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v3, v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p1, v3

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 425
    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->getLeft()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr v3, v2

    add-float/2addr p3, v3

    mul-float v1, v1, p2

    add-float/2addr p3, v1

    int-to-float p2, p1

    div-float/2addr p2, v2

    sub-float/2addr p3, p2

    add-float/2addr p3, v0

    float-to-int p2, p3

    .line 426
    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->updateIndicator(II)V

    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 432
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->setCurrentItem(I)V

    .line 433
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 434
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 236
    :goto_0
    iget-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mIsRtl:Z

    if-eq p1, v0, :cond_1

    .line 237
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mIsRtl:Z

    .line 238
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->invalidate()V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 293
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 294
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mSelectedPosition:I

    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getTabView(I)Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->updateIndicator(II)V

    :cond_0
    return-void
.end method

.method public onThemeChanged(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;)V
    .locals 1

    .line 203
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object p1

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mStyleId:I

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getCurrentStyle(I)I

    move-result p1

    .line 204
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mCurrentStyle:I

    if-eq v0, p1, :cond_0

    .line 205
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mCurrentStyle:I

    .line 206
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->applyStyle(I)V

    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .line 451
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mSelectedPosition:I

    if-eq v0, p1, :cond_0

    .line 452
    invoke-direct {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getTabView(I)Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 454
    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setChecked(Z)V

    .line 457
    :cond_0
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mSelectedPosition:I

    .line 458
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->getTabView(I)Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 460
    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setChecked(Z)V

    .line 462
    :cond_1
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->animateToTab(I)V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 344
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 346
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 349
    :cond_1
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_3

    .line 352
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 356
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 358
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 360
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->notifyDataSetChanged()V

    .line 361
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->onPageSelected(I)V

    goto :goto_0

    .line 354
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 364
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->mTabContainer:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->removeAllViews()V

    :goto_0
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 0

    .line 373
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 374
    invoke-virtual {p0, p2}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->setCurrentItem(I)V

    return-void
.end method
