.class public Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mInAnimationDuration:I

.field private mInColors:[I

.field private mInStepPercent:F

.field private mInitialAngle:F

.field private mKeepDuration:I

.field private mMaxSweepAngle:F

.field private mMinSweepAngle:F

.field private mOutAnimationDuration:I

.field private mPadding:I

.field private mProgressMode:I

.field private mProgressPercent:F

.field private mReverse:Z

.field private mRotateDuration:I

.field private mSecondaryProgressPercent:F

.field private mStrokeColors:[I

.field private mStrokeSecondaryColor:I

.field private mStrokeSize:I

.field private mTransformDuration:I

.field private mTransformInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 628
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    sget-object v0, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 635
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_padding:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->padding(I)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;

    .line 636
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_initialAngle:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->initialAngle(F)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;

    .line 637
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_pv_progress:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->progressPercent(F)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;

    .line 638
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_pv_secondaryProgress:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->secondaryProgressPercent(F)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;

    .line 639
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_maxSweepAngle:I

    const/16 v0, 0x10e

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->maxSweepAngle(F)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;

    .line 640
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_minSweepAngle:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->minSweepAngle(F)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;

    .line 641
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_strokeSize:I

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->strokeSize(I)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;

    .line 642
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_strokeColor:I

    const/high16 v1, -0x1000000

    invoke-static {p1, v1}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->colorPrimary(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    filled-new-array {p3}, [I

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->strokeColors([I)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;

    .line 643
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_strokeColors:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_1

    .line 644
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 645
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 646
    :goto_0
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 647
    invoke-virtual {p3, v2, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 648
    :cond_0
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 649
    invoke-virtual {p0, v1}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->strokeColors([I)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;

    .line 651
    :cond_1
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_strokeSecondaryColor:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->strokeSecondaryColor(I)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;

    .line 652
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_reverse:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->reverse(Z)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;

    .line 653
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_rotateDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->rotateDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;

    .line 654
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_transformDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->transformDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;

    .line 655
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_keepDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v3, 0x10e0000

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->keepDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;

    .line 656
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_transformInterpolator:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_2

    .line 657
    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->transformInterpolator(Landroid/view/animation/Interpolator;)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;

    .line 658
    :cond_2
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_pv_progressMode:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->progressMode(I)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;

    .line 659
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_inAnimDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->inAnimDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;

    .line 660
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_inStepColors:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_4

    .line 661
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 662
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 663
    :goto_1
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 664
    invoke-virtual {p3, v1, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 665
    :cond_3
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 666
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->inStepColors([I)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;

    .line 668
    :cond_4
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_inStepPercent:I

    const/high16 p4, 0x3f000000    # 0.5f

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->inStepPercent(F)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;

    .line 669
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_outAnimDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->outAnimDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;

    .line 670
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public build()Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;
    .locals 24

    move-object/from16 v0, p0

    .line 674
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mStrokeColors:[I

    if-nez v1, :cond_0

    const v1, -0xff6601

    .line 675
    filled-new-array {v1}, [I

    move-result-object v1

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mStrokeColors:[I

    .line 677
    :cond_0
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mInColors:[I

    if-nez v1, :cond_1

    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mInAnimationDuration:I

    if-lez v1, :cond_1

    const v1, -0x211504

    const v2, -0x50002

    const v3, -0x4a2b01

    .line 678
    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mInColors:[I

    .line 680
    :cond_1
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mTransformInterpolator:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_2

    .line 681
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mTransformInterpolator:Landroid/view/animation/Interpolator;

    .line 683
    :cond_2
    new-instance v1, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;

    move-object v2, v1

    iget v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mPadding:I

    iget v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mInitialAngle:F

    iget v5, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mProgressPercent:F

    iget v6, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mSecondaryProgressPercent:F

    iget v7, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mMaxSweepAngle:F

    iget v8, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mMinSweepAngle:F

    iget v9, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mStrokeSize:I

    iget-object v10, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mStrokeColors:[I

    iget v11, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mStrokeSecondaryColor:I

    iget-boolean v12, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mReverse:Z

    iget v13, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mRotateDuration:I

    iget v14, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mTransformDuration:I

    iget v15, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mKeepDuration:I

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mTransformInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v16, v1

    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mProgressMode:I

    move/from16 v17, v1

    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mInAnimationDuration:I

    move/from16 v18, v1

    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mInStepPercent:F

    move/from16 v19, v1

    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mInColors:[I

    move-object/from16 v20, v1

    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mOutAnimationDuration:I

    move/from16 v21, v1

    const/16 v22, 0x0

    invoke-direct/range {v2 .. v22}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;-><init>(IFFFFFI[IIZIIILandroid/view/animation/Interpolator;IIF[IILcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$1;)V

    return-object v23
.end method

.method public inAnimDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;
    .locals 0

    .line 766
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mInAnimationDuration:I

    return-object p0
.end method

.method public varargs inStepColors([I)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;
    .locals 0

    .line 776
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mInColors:[I

    return-object p0
.end method

.method public inStepPercent(F)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;
    .locals 0

    .line 771
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mInStepPercent:F

    return-object p0
.end method

.method public initialAngle(F)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;
    .locals 0

    .line 692
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mInitialAngle:F

    return-object p0
.end method

.method public keepDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;
    .locals 0

    .line 751
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mKeepDuration:I

    return-object p0
.end method

.method public maxSweepAngle(F)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;
    .locals 0

    .line 707
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mMaxSweepAngle:F

    return-object p0
.end method

.method public minSweepAngle(F)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;
    .locals 0

    .line 712
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mMinSweepAngle:F

    return-object p0
.end method

.method public outAnimDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;
    .locals 0

    .line 781
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mOutAnimationDuration:I

    return-object p0
.end method

.method public padding(I)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;
    .locals 0

    .line 687
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mPadding:I

    return-object p0
.end method

.method public progressMode(I)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;
    .locals 0

    .line 761
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mProgressMode:I

    return-object p0
.end method

.method public progressPercent(F)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;
    .locals 0

    .line 697
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mProgressPercent:F

    return-object p0
.end method

.method public reverse()Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 737
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->reverse(Z)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public reverse(Z)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;
    .locals 0

    .line 732
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mReverse:Z

    return-object p0
.end method

.method public rotateDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;
    .locals 0

    .line 741
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mRotateDuration:I

    return-object p0
.end method

.method public secondaryProgressPercent(F)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;
    .locals 0

    .line 702
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mSecondaryProgressPercent:F

    return-object p0
.end method

.method public varargs strokeColors([I)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mStrokeColors:[I

    return-object p0
.end method

.method public strokeSecondaryColor(I)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;
    .locals 0

    .line 727
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mStrokeSecondaryColor:I

    return-object p0
.end method

.method public strokeSize(I)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;
    .locals 0

    .line 717
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mStrokeSize:I

    return-object p0
.end method

.method public transformDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;
    .locals 0

    .line 746
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mTransformDuration:I

    return-object p0
.end method

.method public transformInterpolator(Landroid/view/animation/Interpolator;)Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->mTransformInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method
