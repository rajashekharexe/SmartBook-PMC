.class public Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;
.super Ljava/lang/Object;
.source "ToolbarRippleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBackgroundAnimDuration:I

.field private mBackgroundColor:I

.field private mDelayClickType:I

.field private mInInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxRippleRadius:I

.field private mOutInterpolator:Landroid/view/animation/Interpolator;

.field private mRippleAnimDuration:I

.field private mRippleColor:I

.field private mRippleType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 422
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mBackgroundAnimDuration:I

    const/16 v0, 0x190

    .line 427
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mRippleAnimDuration:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 437
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 422
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mBackgroundAnimDuration:I

    const/16 v0, 0x190

    .line 427
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mRippleAnimDuration:I

    .line 441
    sget-object v0, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 444
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_backgroundColor:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->backgroundColor(I)Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;

    .line 445
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_backgroundAnimDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->backgroundAnimDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;

    .line 446
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_rippleType:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->rippleType(I)Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;

    .line 447
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_delayClick:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->delayClickType(I)Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;

    .line 448
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_maxRippleRadius:I

    invoke-static {p2, p3}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->getType(Landroid/content/res/TypedArray;I)I

    move-result p3

    const/16 v0, 0x10

    if-lt p3, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p3, v0, :cond_0

    .line 450
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_maxRippleRadius:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->maxRippleRadius(I)Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;

    goto :goto_0

    .line 452
    :cond_0
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_maxRippleRadius:I

    const/16 v0, 0x30

    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->maxRippleRadius(I)Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;

    .line 453
    :goto_0
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_rippleColor:I

    invoke-static {p1, p4}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->colorControlHighlight(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->rippleColor(I)Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;

    .line 454
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_rippleAnimDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->rippleAnimDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;

    .line 455
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_inInterpolator:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_1

    .line 456
    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->inInterpolator(Landroid/view/animation/Interpolator;)Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;

    .line 457
    :cond_1
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleDrawable_rd_outInterpolator:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_2

    .line 458
    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->outInterpolator(Landroid/view/animation/Interpolator;)Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;

    .line 460
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public backgroundAnimDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;
    .locals 0

    .line 474
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mBackgroundAnimDuration:I

    return-object p0
.end method

.method public backgroundColor(I)Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;
    .locals 0

    .line 479
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mBackgroundColor:I

    return-object p0
.end method

.method public build()Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;
    .locals 12

    .line 464
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mInInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mInInterpolator:Landroid/view/animation/Interpolator;

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mOutInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    .line 468
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mOutInterpolator:Landroid/view/animation/Interpolator;

    .line 470
    :cond_1
    new-instance v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mBackgroundAnimDuration:I

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mBackgroundColor:I

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mRippleType:I

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mDelayClickType:I

    iget v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mMaxRippleRadius:I

    iget v7, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mRippleAnimDuration:I

    iget v8, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mRippleColor:I

    iget-object v9, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mInInterpolator:Landroid/view/animation/Interpolator;

    iget-object v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mOutInterpolator:Landroid/view/animation/Interpolator;

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;-><init>(IIIIIIILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$1;)V

    return-object v0
.end method

.method public delayClickType(I)Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;
    .locals 0

    .line 489
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mDelayClickType:I

    return-object p0
.end method

.method public inInterpolator(Landroid/view/animation/Interpolator;)Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mInInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public maxRippleRadius(I)Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;
    .locals 0

    .line 494
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mMaxRippleRadius:I

    return-object p0
.end method

.method public outInterpolator(Landroid/view/animation/Interpolator;)Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mOutInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public rippleAnimDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;
    .locals 0

    .line 499
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mRippleAnimDuration:I

    return-object p0
.end method

.method public rippleColor(I)Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;
    .locals 0

    .line 504
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mRippleColor:I

    return-object p0
.end method

.method public rippleType(I)Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;
    .locals 0

    .line 484
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->mRippleType:I

    return-object p0
.end method
