.class public Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;
.super Ljava/lang/Object;
.source "LinearProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mInAnimationDuration:I

.field private mKeepDuration:I

.field private mMaxLineWidth:I

.field private mMaxLineWidthPercent:F

.field private mMinLineWidth:I

.field private mMinLineWidthPercent:F

.field private mOutAnimationDuration:I

.field private mProgressMode:I

.field private mProgressPercent:F

.field private mReverse:Z

.field private mSecondaryProgressPercent:F

.field private mStrokeColors:[I

.field private mStrokeSecondaryColor:I

.field private mStrokeSize:I

.field private mTransformDuration:I

.field private mTransformInterpolator:Landroid/view/animation/Interpolator;

.field private mTravelDuration:I

.field private mVerticalAlign:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 912
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mProgressPercent:F

    .line 913
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mSecondaryProgressPercent:F

    const/16 v0, 0x8

    .line 918
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mStrokeSize:I

    const/4 v0, 0x2

    .line 919
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mVerticalAlign:I

    const/4 v0, 0x0

    .line 922
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mReverse:Z

    const/16 v0, 0x3e8

    .line 923
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mTravelDuration:I

    const/16 v0, 0x320

    .line 924
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mTransformDuration:I

    const/16 v0, 0xc8

    .line 925
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mKeepDuration:I

    const/4 v0, 0x1

    .line 927
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mProgressMode:I

    const/16 v0, 0x190

    .line 928
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mInAnimationDuration:I

    .line 929
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mOutAnimationDuration:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 934
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 912
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mProgressPercent:F

    .line 913
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mSecondaryProgressPercent:F

    const/16 v1, 0x8

    .line 918
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mStrokeSize:I

    const/4 v1, 0x2

    .line 919
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mVerticalAlign:I

    const/4 v2, 0x0

    .line 922
    iput-boolean v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mReverse:Z

    const/16 v3, 0x3e8

    .line 923
    iput v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mTravelDuration:I

    const/16 v3, 0x320

    .line 924
    iput v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mTransformDuration:I

    const/16 v3, 0xc8

    .line 925
    iput v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mKeepDuration:I

    const/4 v3, 0x1

    .line 927
    iput v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mProgressMode:I

    const/16 v4, 0x190

    .line 928
    iput v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mInAnimationDuration:I

    .line 929
    iput v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mOutAnimationDuration:I

    .line 938
    sget-object v4, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 941
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_pv_progress:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->progressPercent(F)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;

    .line 942
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_pv_secondaryProgress:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->secondaryProgressPercent(F)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;

    .line 944
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_maxLineWidth:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p3

    const/high16 p4, 0x3f400000    # 0.75f

    const/4 v0, 0x6

    if-nez p3, :cond_0

    .line 946
    invoke-virtual {p0, p4}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->maxLineWidth(F)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;

    goto :goto_0

    .line 947
    :cond_0
    iget p3, p3, Landroid/util/TypedValue;->type:I

    if-ne p3, v0, :cond_1

    .line 948
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_maxLineWidth:I

    invoke-virtual {p2, p3, v3, v3, p4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->maxLineWidth(F)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;

    goto :goto_0

    .line 950
    :cond_1
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_maxLineWidth:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->maxLineWidth(I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;

    .line 952
    :goto_0
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_minLineWidth:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p3

    const/high16 p4, 0x3e800000    # 0.25f

    if-nez p3, :cond_2

    .line 954
    invoke-virtual {p0, p4}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->minLineWidth(F)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;

    goto :goto_1

    .line 955
    :cond_2
    iget p3, p3, Landroid/util/TypedValue;->type:I

    if-ne p3, v0, :cond_3

    .line 956
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_minLineWidth:I

    invoke-virtual {p2, p3, v3, v3, p4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->minLineWidth(F)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;

    goto :goto_1

    .line 958
    :cond_3
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_minLineWidth:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->minLineWidth(I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;

    .line 960
    :goto_1
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_strokeSize:I

    const/4 p4, 0x4

    invoke-static {p1, p4}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->strokeSize(I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;

    .line 961
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_verticalAlign:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->verticalAlign(I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;

    .line 962
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_strokeColor:I

    const/high16 p4, -0x1000000

    invoke-static {p1, p4}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->colorPrimary(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    filled-new-array {p3}, [I

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->strokeColors([I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;

    .line 963
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_strokeColors:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_5

    .line 964
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 965
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->length()I

    move-result p4

    new-array p4, p4, [I

    const/4 v0, 0x0

    .line 966
    :goto_2
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 967
    invoke-virtual {p3, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    aput v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 968
    :cond_4
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 969
    invoke-virtual {p0, p4}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->strokeColors([I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;

    .line 971
    :cond_5
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_strokeSecondaryColor:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->strokeSecondaryColor(I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;

    .line 972
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_reverse:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->reverse(Z)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;

    .line 973
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_travelDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x10e0002

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->travelDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;

    .line 974
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_transformDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x10e0001

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->transformDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;

    .line 975
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_keepDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const/high16 v1, 0x10e0000

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->keepDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;

    .line 976
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_transformInterpolator:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_6

    .line 977
    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->transformInterpolator(Landroid/view/animation/Interpolator;)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;

    .line 978
    :cond_6
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_pv_progressMode:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->progressMode(I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;

    .line 979
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_inAnimDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->inAnimDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;

    .line 980
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_outAnimDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->outAnimDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;

    .line 982
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public build()Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;
    .locals 23

    move-object/from16 v0, p0

    .line 986
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mStrokeColors:[I

    if-nez v1, :cond_0

    const v1, -0xff6601

    .line 987
    filled-new-array {v1}, [I

    move-result-object v1

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mStrokeColors:[I

    .line 989
    :cond_0
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mTransformInterpolator:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_1

    .line 990
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mTransformInterpolator:Landroid/view/animation/Interpolator;

    .line 992
    :cond_1
    new-instance v1, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;

    move-object v2, v1

    iget v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mProgressPercent:F

    iget v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mSecondaryProgressPercent:F

    iget v5, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mMaxLineWidth:I

    iget v6, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mMaxLineWidthPercent:F

    iget v7, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mMinLineWidth:I

    iget v8, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mMinLineWidthPercent:F

    iget v9, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mStrokeSize:I

    iget v10, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mVerticalAlign:I

    iget-object v11, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mStrokeColors:[I

    iget v12, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mStrokeSecondaryColor:I

    iget-boolean v13, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mReverse:Z

    iget v14, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mTravelDuration:I

    iget v15, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mTransformDuration:I

    move-object/from16 v22, v1

    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mKeepDuration:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mTransformInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v1

    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mProgressMode:I

    move/from16 v18, v1

    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mInAnimationDuration:I

    move/from16 v19, v1

    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mOutAnimationDuration:I

    move/from16 v20, v1

    const/16 v21, 0x0

    invoke-direct/range {v2 .. v21}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;-><init>(FFIFIFII[IIZIIILandroid/view/animation/Interpolator;IIILcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$1;)V

    return-object v22
.end method

.method public inAnimDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;
    .locals 0

    .line 1082
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mInAnimationDuration:I

    return-object p0
.end method

.method public keepDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;
    .locals 0

    .line 1067
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mKeepDuration:I

    return-object p0
.end method

.method public maxLineWidth(F)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1011
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mMaxLineWidthPercent:F

    const/4 p1, 0x0

    .line 1012
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mMaxLineWidth:I

    return-object p0
.end method

.method public maxLineWidth(I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;
    .locals 0

    .line 1006
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mMaxLineWidth:I

    return-object p0
.end method

.method public minLineWidth(F)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1022
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mMinLineWidthPercent:F

    const/4 p1, 0x0

    .line 1023
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mMinLineWidth:I

    return-object p0
.end method

.method public minLineWidth(I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;
    .locals 0

    .line 1017
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mMinLineWidth:I

    return-object p0
.end method

.method public outAnimDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;
    .locals 0

    .line 1087
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mOutAnimationDuration:I

    return-object p0
.end method

.method public progressMode(I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;
    .locals 0

    .line 1077
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mProgressMode:I

    return-object p0
.end method

.method public progressPercent(F)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;
    .locals 0

    .line 1001
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mProgressPercent:F

    return-object p0
.end method

.method public reverse()Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 1053
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->reverse(Z)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public reverse(Z)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;
    .locals 0

    .line 1048
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mReverse:Z

    return-object p0
.end method

.method public secondaryProgressPercent(F)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;
    .locals 0

    .line 996
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mSecondaryProgressPercent:F

    return-object p0
.end method

.method public varargs strokeColors([I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;
    .locals 0

    .line 1038
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mStrokeColors:[I

    return-object p0
.end method

.method public strokeSecondaryColor(I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;
    .locals 0

    .line 1043
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mStrokeSecondaryColor:I

    return-object p0
.end method

.method public strokeSize(I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;
    .locals 0

    .line 1028
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mStrokeSize:I

    return-object p0
.end method

.method public transformDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;
    .locals 0

    .line 1062
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mTransformDuration:I

    return-object p0
.end method

.method public transformInterpolator(Landroid/view/animation/Interpolator;)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;
    .locals 0

    .line 1072
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mTransformInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public travelDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;
    .locals 0

    .line 1057
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mTravelDuration:I

    return-object p0
.end method

.method public verticalAlign(I)Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;
    .locals 0

    .line 1033
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->mVerticalAlign:I

    return-object p0
.end method
