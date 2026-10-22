.class public Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;
.super Ljava/lang/Object;
.source "RippleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBackgroundAnimDuration:I

.field private mBackgroundColor:I

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mDelayClickType:I

.field private mInInterpolator:Landroid/view/animation/Interpolator;

.field private mMaskBottom:I

.field private mMaskBottomLeftCornerRadius:I

.field private mMaskBottomRightCornerRadius:I

.field private mMaskLeft:I

.field private mMaskRight:I

.field private mMaskTop:I

.field private mMaskTopLeftCornerRadius:I

.field private mMaskTopRightCornerRadius:I

.field private mMaskType:I

.field private mMaxRippleRadius:I

.field private mOutInterpolator:Landroid/view/animation/Interpolator;

.field private mRippleAnimDuration:I

.field private mRippleColor:I

.field private mRippleType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 497
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mBackgroundAnimDuration:I

    const/16 v0, 0x190

    .line 502
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mRippleAnimDuration:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 522
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 497
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mBackgroundAnimDuration:I

    const/16 v0, 0x190

    .line 502
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mRippleAnimDuration:I

    .line 526
    sget-object v0, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 529
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_backgroundColor:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->backgroundColor(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    .line 530
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_backgroundAnimDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->backgroundAnimDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    .line 531
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_rippleType:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->rippleType(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    .line 532
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_delayClick:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->delayClickType(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    .line 533
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_maxRippleRadius:I

    invoke-static {p2, p3}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->getType(Landroid/content/res/TypedArray;I)I

    move-result p3

    const/16 v0, 0x10

    if-lt p3, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p3, v0, :cond_0

    .line 535
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_maxRippleRadius:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->maxRippleRadius(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    goto :goto_0

    .line 537
    :cond_0
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_maxRippleRadius:I

    const/16 v0, 0x30

    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->maxRippleRadius(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    .line 538
    :goto_0
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_rippleColor:I

    invoke-static {p1, p4}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->colorControlHighlight(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->rippleColor(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    .line 539
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_rippleAnimDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->rippleAnimDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    .line 540
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_inInterpolator:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_1

    .line 541
    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->inInterpolator(Landroid/view/animation/Interpolator;)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    .line 542
    :cond_1
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_outInterpolator:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_2

    .line 543
    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->outInterpolator(Landroid/view/animation/Interpolator;)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    .line 544
    :cond_2
    sget p1, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_maskType:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->maskType(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    .line 545
    sget p1, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_cornerRadius:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->cornerRadius(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    .line 546
    sget p1, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_topLeftCornerRadius:I

    iget p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskTopLeftCornerRadius:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->topLeftCornerRadius(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    .line 547
    sget p1, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_topRightCornerRadius:I

    iget p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskTopRightCornerRadius:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->topRightCornerRadius(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    .line 548
    sget p1, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_bottomRightCornerRadius:I

    iget p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskBottomRightCornerRadius:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->bottomRightCornerRadius(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    .line 549
    sget p1, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_bottomLeftCornerRadius:I

    iget p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskBottomLeftCornerRadius:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->bottomLeftCornerRadius(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    .line 550
    sget p1, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_padding:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->padding(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    .line 551
    sget p1, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_leftPadding:I

    iget p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskLeft:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->left(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    .line 552
    sget p1, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_rightPadding:I

    iget p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskRight:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->right(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    .line 553
    sget p1, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_topPadding:I

    iget p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskTop:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->top(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    .line 554
    sget p1, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_bottomPadding:I

    iget p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskBottom:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->bottom(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    .line 556
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public backgroundAnimDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;
    .locals 0

    .line 575
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mBackgroundAnimDuration:I

    return-object p0
.end method

.method public backgroundColor(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;
    .locals 0

    .line 580
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mBackgroundColor:I

    return-object p0
.end method

.method public backgroundDrawable(Landroid/graphics/drawable/Drawable;)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public bottom(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;
    .locals 0

    .line 676
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskBottom:I

    return-object p0
.end method

.method public bottomLeftCornerRadius(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;
    .locals 0

    .line 643
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskBottomLeftCornerRadius:I

    return-object p0
.end method

.method public bottomRightCornerRadius(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;
    .locals 0

    .line 648
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskBottomRightCornerRadius:I

    return-object p0
.end method

.method public build()Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;
    .locals 24

    move-object/from16 v0, p0

    .line 560
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mInInterpolator:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_0

    .line 561
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mInInterpolator:Landroid/view/animation/Interpolator;

    .line 563
    :cond_0
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mOutInterpolator:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_1

    .line 564
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mOutInterpolator:Landroid/view/animation/Interpolator;

    .line 566
    :cond_1
    new-instance v1, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    move-object v2, v1

    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mBackgroundAnimDuration:I

    iget v5, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mBackgroundColor:I

    iget v6, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mRippleType:I

    iget v7, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mDelayClickType:I

    iget v8, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaxRippleRadius:I

    iget v9, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mRippleAnimDuration:I

    iget v10, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mRippleColor:I

    iget-object v11, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mInInterpolator:Landroid/view/animation/Interpolator;

    iget-object v12, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mOutInterpolator:Landroid/view/animation/Interpolator;

    iget v13, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskType:I

    iget v14, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskTopLeftCornerRadius:I

    iget v15, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskTopRightCornerRadius:I

    move-object/from16 v23, v1

    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskBottomRightCornerRadius:I

    move/from16 v16, v1

    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskBottomLeftCornerRadius:I

    move/from16 v17, v1

    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskLeft:I

    move/from16 v18, v1

    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskTop:I

    move/from16 v19, v1

    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskRight:I

    move/from16 v20, v1

    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskBottom:I

    move/from16 v21, v1

    const/16 v22, 0x0

    invoke-direct/range {v2 .. v22}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIIIIIILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;IIIIIIIIILcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$1;)V

    return-object v23
.end method

.method public cornerRadius(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;
    .locals 0

    .line 625
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskTopLeftCornerRadius:I

    .line 626
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskTopRightCornerRadius:I

    .line 627
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskBottomLeftCornerRadius:I

    .line 628
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskBottomRightCornerRadius:I

    return-object p0
.end method

.method public delayClickType(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;
    .locals 0

    .line 590
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mDelayClickType:I

    return-object p0
.end method

.method public inInterpolator(Landroid/view/animation/Interpolator;)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;
    .locals 0

    .line 610
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mInInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public left(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;
    .locals 0

    .line 661
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskLeft:I

    return-object p0
.end method

.method public maskType(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;
    .locals 0

    .line 620
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskType:I

    return-object p0
.end method

.method public maxRippleRadius(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;
    .locals 0

    .line 595
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaxRippleRadius:I

    return-object p0
.end method

.method public outInterpolator(Landroid/view/animation/Interpolator;)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mOutInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public padding(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;
    .locals 0

    .line 653
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskLeft:I

    .line 654
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskTop:I

    .line 655
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskRight:I

    .line 656
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskBottom:I

    return-object p0
.end method

.method public right(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;
    .locals 0

    .line 671
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskRight:I

    return-object p0
.end method

.method public rippleAnimDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;
    .locals 0

    .line 600
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mRippleAnimDuration:I

    return-object p0
.end method

.method public rippleColor(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;
    .locals 0

    .line 605
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mRippleColor:I

    return-object p0
.end method

.method public rippleType(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;
    .locals 0

    .line 585
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mRippleType:I

    return-object p0
.end method

.method public top(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;
    .locals 0

    .line 666
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskTop:I

    return-object p0
.end method

.method public topLeftCornerRadius(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;
    .locals 0

    .line 633
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskTopLeftCornerRadius:I

    return-object p0
.end method

.method public topRightCornerRadius(I)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;
    .locals 0

    .line 638
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->mMaskTopRightCornerRadius:I

    return-object p0
.end method
