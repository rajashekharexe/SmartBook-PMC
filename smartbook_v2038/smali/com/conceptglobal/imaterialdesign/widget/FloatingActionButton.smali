.class public Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;
.super Landroid/view/View;
.source "FloatingActionButton.java"

# interfaces
.implements Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton$SwitchIconAnimator;,
        Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton$SavedState;
    }
.end annotation


# instance fields
.field private mAnimDuration:I

.field private mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

.field protected mCurrentStyle:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconSize:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mPrevIcon:Landroid/graphics/drawable/Drawable;

.field private mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

.field protected mStyleId:I

.field private mSwitchIconAnimator:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton$SwitchIconAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 54
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mAnimDuration:I

    .line 43
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mIconSize:I

    const/high16 v0, -0x80000000

    .line 47
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mCurrentStyle:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mAnimDuration:I

    .line 43
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mIconSize:I

    const/high16 v0, -0x80000000

    .line 47
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mCurrentStyle:I

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mAnimDuration:I

    .line 43
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mIconSize:I

    const/high16 v0, -0x80000000

    .line 47
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mCurrentStyle:I

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mAnimDuration:I

    .line 43
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mIconSize:I

    const/high16 v0, -0x80000000

    .line 47
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mCurrentStyle:I

    .line 75
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$102(Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mPrevIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$202(Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mPrevIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mIconSize:I

    return p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;)Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mAnimDuration:I

    return p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public static make(Landroid/content/Context;I)Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;
    .locals 2

    .line 50
    new-instance v0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-object v0
.end method

.method private setLeftMargin(Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 1

    .line 416
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 417
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 418
    :cond_0
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 419
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 421
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "cannot recognize LayoutParams: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FloatingActionButton"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setTopMargin(Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 1

    .line 425
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 426
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 427
    :cond_0
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 428
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 430
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "cannot recognize LayoutParams: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FloatingActionButton"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateParams(IIILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    and-int/lit8 v0, p3, 0x7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    int-to-float p1, p1

    .line 391
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getPaddingLeft()F

    move-result v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p4, p1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setLeftMargin(Landroid/view/ViewGroup$LayoutParams;I)V

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    .line 388
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getPaddingLeft()F

    move-result v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getRadius()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p4, p1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setLeftMargin(Landroid/view/ViewGroup$LayoutParams;I)V

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    .line 382
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getPaddingLeft()F

    move-result v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p4, p1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setLeftMargin(Landroid/view/ViewGroup$LayoutParams;I)V

    goto :goto_0

    :cond_2
    int-to-float p1, p1

    .line 385
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getCenterX()F

    move-result v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p4, p1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setLeftMargin(Landroid/view/ViewGroup$LayoutParams;I)V

    :goto_0
    and-int/lit8 p1, p3, 0x70

    const/16 p3, 0x10

    if-eq p1, p3, :cond_5

    const/16 p3, 0x30

    if-eq p1, p3, :cond_4

    const/16 p3, 0x50

    if-eq p1, p3, :cond_3

    int-to-float p1, p2

    .line 408
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {p2}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getPaddingTop()F

    move-result p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    invoke-direct {p0, p4, p1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setTopMargin(Landroid/view/ViewGroup$LayoutParams;I)V

    goto :goto_1

    :cond_3
    int-to-float p1, p2

    .line 405
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {p2}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getPaddingTop()F

    move-result p2

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {p2}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getRadius()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    invoke-direct {p0, p4, p1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setTopMargin(Landroid/view/ViewGroup$LayoutParams;I)V

    goto :goto_1

    :cond_4
    int-to-float p1, p2

    .line 399
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {p2}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getPaddingTop()F

    move-result p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    invoke-direct {p0, p4, p1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setTopMargin(Landroid/view/ViewGroup$LayoutParams;I)V

    goto :goto_1

    :cond_5
    int-to-float p1, p2

    .line 402
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {p2}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getCenterY()F

    move-result p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    invoke-direct {p0, p4, p1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setTopMargin(Landroid/view/ViewGroup$LayoutParams;I)V

    .line 412
    :goto_1
    invoke-virtual {p0, p4}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public applyStyle(I)V
    .locals 3

    .line 88
    invoke-static {p0, p1}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyStyle(Landroid/view/View;I)V

    .line 89
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 26

    move-object/from16 v6, p0

    move-object/from16 v2, p1

    .line 93
    sget-object v0, Lcom/conceptglobal/imaterialdesign/R$styleable;->FloatingActionButton:[I

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v12, v1, :cond_9

    .line 103
    invoke-virtual {v0, v12}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    move/from16 v16, v1

    .line 105
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->FloatingActionButton_fab_radius:I

    if-ne v8, v1, :cond_0

    .line 106
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    move v7, v1

    goto :goto_1

    .line 107
    :cond_0
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->FloatingActionButton_fab_elevation:I

    if-ne v8, v1, :cond_1

    .line 108
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    move v10, v1

    goto :goto_1

    .line 109
    :cond_1
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->FloatingActionButton_fab_backgroundColor:I

    if-ne v8, v1, :cond_2

    .line 110
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    goto :goto_1

    .line 111
    :cond_2
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->FloatingActionButton_fab_backgroundAnimDuration:I

    if-ne v8, v1, :cond_3

    .line 112
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    move v11, v1

    goto :goto_1

    .line 113
    :cond_3
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->FloatingActionButton_fab_iconSrc:I

    if-ne v8, v1, :cond_4

    .line 114
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    goto :goto_1

    .line 115
    :cond_4
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->FloatingActionButton_fab_iconLineMorphing:I

    if-ne v8, v1, :cond_5

    .line 116
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    goto :goto_1

    .line 117
    :cond_5
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->FloatingActionButton_fab_iconSize:I

    if-ne v8, v1, :cond_6

    .line 118
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v6, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mIconSize:I

    goto :goto_1

    .line 119
    :cond_6
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->FloatingActionButton_fab_animDuration:I

    if-ne v8, v1, :cond_7

    .line 120
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v6, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mAnimDuration:I

    goto :goto_1

    .line 121
    :cond_7
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->FloatingActionButton_fab_interpolator:I

    if-ne v8, v1, :cond_8

    .line 122
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->FloatingActionButton_fab_interpolator:I

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_8

    .line 124
    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, v6, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_8
    :goto_1
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v16

    goto :goto_0

    .line 128
    :cond_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    iget v0, v6, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mIconSize:I

    if-gez v0, :cond_a

    const/16 v0, 0x18

    .line 131
    invoke-static {v2, v0}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    iput v0, v6, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mIconSize:I

    .line 133
    :cond_a
    iget v0, v6, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mAnimDuration:I

    if-gez v0, :cond_b

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v6, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mAnimDuration:I

    .line 136
    :cond_b
    iget-object v0, v6, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_c

    .line 137
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, v6, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 139
    :cond_c
    iget-object v0, v6, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    if-nez v0, :cond_11

    if-gez v7, :cond_d

    const/16 v0, 0x1c

    .line 141
    invoke-static {v2, v0}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v7

    :cond_d
    move/from16 v17, v7

    if-gez v10, :cond_e

    const/4 v0, 0x4

    .line 144
    invoke-static {v2, v0}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v10

    :cond_e
    if-nez v13, :cond_f

    .line 147
    invoke-static {v2, v9}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->colorAccent(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    :cond_f
    move-object/from16 v18, v13

    if-gez v11, :cond_10

    const/16 v21, 0x0

    goto :goto_2

    :cond_10
    move/from16 v21, v11

    .line 152
    :goto_2
    new-instance v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    int-to-float v1, v10

    move-object/from16 v16, v0

    move/from16 v19, v1

    move/from16 v20, v1

    invoke-direct/range {v16 .. v21}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;-><init>(ILandroid/content/res/ColorStateList;FFI)V

    iput-object v0, v6, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->isInEditMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->setInEditMode(Z)V

    .line 154
    iget-object v0, v6, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->getHeight()I

    move-result v7

    invoke-virtual {v0, v9, v9, v1, v7}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->setBounds(IIII)V

    .line 155
    iget-object v0, v6, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v0, v6}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_3

    :cond_11
    if-ltz v7, :cond_12

    .line 159
    invoke-virtual {v0, v7}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->setRadius(I)Z

    :cond_12
    if-eqz v13, :cond_13

    .line 162
    iget-object v0, v6, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v0, v13}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_13
    if-ltz v10, :cond_14

    .line 165
    iget-object v0, v6, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    int-to-float v1, v10

    invoke-virtual {v0, v1, v1}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->setShadow(FF)Z

    :cond_14
    if-ltz v11, :cond_15

    .line 168
    iget-object v0, v6, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v0, v11}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->setAnimationDuration(I)Z

    :cond_15
    :goto_3
    if-eqz v14, :cond_16

    .line 172
    new-instance v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;

    invoke-direct {v0, v2, v14}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->build()Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;

    move-result-object v0

    invoke-virtual {v6, v0, v9}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setIcon(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_4

    :cond_16
    if-eqz v15, :cond_17

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0, v9}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setIcon(Landroid/graphics/drawable/Drawable;Z)V

    .line 176
    :cond_17
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    move-result-object v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->onCreate(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 178
    instance-of v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    if-eqz v1, :cond_18

    .line 179
    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    const/4 v1, 0x0

    .line 180
    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v1, v6, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getPaddingLeft()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, v6, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v2}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getPaddingTop()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, v6, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v3}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getPaddingRight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, v6, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v4}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getPaddingBottom()F

    move-result v4

    float-to-int v4, v4

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v0

    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v25, v4

    invoke-virtual/range {v16 .. v25}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setMask(IIIIIIIII)V

    :cond_18
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 437
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 480
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 481
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mPrevIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 484
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 448
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 449
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->setState([I)Z

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mPrevIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 454
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    return-void
.end method

.method public getBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    .line 232
    invoke-super {p0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLineMorphingState()I
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;

    if-eqz v1, :cond_0

    .line 251
    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->getLineState()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getRadius()I

    move-result v0

    return v0
.end method

.method protected getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    if-nez v0, :cond_1

    .line 489
    const-class v0, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    monitor-enter v0

    .line 490
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    if-nez v1, :cond_0

    .line 491
    new-instance v1, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    invoke-direct {v1}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    .line 492
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 495
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    return-object v0
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setClickable(Z)V

    .line 80
    new-instance v0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton$SwitchIconAnimator;

    invoke-direct {v0, p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton$SwitchIconAnimator;-><init>(Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mSwitchIconAnimator:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton$SwitchIconAnimator;

    .line 81
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 83
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-static {p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getStyleId(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mStyleId:I

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 196
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 197
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mStyleId:I

    if-eqz v0, :cond_0

    .line 198
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->registerOnThemeChangedListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V

    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->onThemeChanged(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 205
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 206
    invoke-static {p0}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->cancelRipple(Landroid/view/View;)V

    .line 207
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mStyleId:I

    if-eqz v0, :cond_0

    .line 208
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->unregisterOnThemeChangedListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 459
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getIntrinsicWidth()I

    move-result p1

    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {p2}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 532
    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton$SavedState;

    .line 534
    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 535
    iget v0, p1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton$SavedState;->state:I

    if-ltz v0, :cond_0

    .line 536
    iget p1, p1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton$SavedState;->state:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setLineMorphingState(IZ)V

    .line 537
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 522
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 524
    new-instance v1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton$SavedState;

    invoke-direct {v1, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 526
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->getLineMorphingState()I

    move-result v0

    iput v0, v1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton$SavedState;->state:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .line 464
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->setBounds(IIII)V

    .line 466
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    const/high16 p2, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    .line 467
    iget p3, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mIconSize:I

    int-to-float p3, p3

    div-float/2addr p3, p2

    .line 468
    iget-object p4, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {p4}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getCenterX()F

    move-result p4

    sub-float/2addr p4, p3

    float-to-int p4, p4

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getCenterY()F

    move-result v0

    sub-float/2addr v0, p3

    float-to-int v0, v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getCenterX()F

    move-result v1

    add-float/2addr v1, p3

    float-to-int v1, v1

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v2}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getCenterY()F

    move-result v2

    add-float/2addr v2, p3

    float-to-int p3, v2

    invoke-virtual {p1, p4, v0, v1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 471
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mPrevIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 472
    iget p3, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mIconSize:I

    int-to-float p3, p3

    div-float/2addr p3, p2

    .line 473
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {p2}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getCenterX()F

    move-result p2

    sub-float/2addr p2, p3

    float-to-int p2, p2

    iget-object p4, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {p4}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getCenterY()F

    move-result p4

    sub-float/2addr p4, p3

    float-to-int p4, p4

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getCenterX()F

    move-result v0

    add-float/2addr v0, p3

    float-to-int v0, v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getCenterY()F

    move-result v1

    add-float/2addr v1, p3

    float-to-int p3, v1

    invoke-virtual {p1, p2, p4, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    return-void
.end method

.method public onThemeChanged(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;)V
    .locals 1

    .line 187
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object p1

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mStyleId:I

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getCurrentStyle(I)I

    move-result p1

    .line 188
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mCurrentStyle:I

    if-eq v0, p1, :cond_0

    .line 189
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mCurrentStyle:I

    .line 190
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->applyStyle(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 511
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->isPointerOver(FF)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 516
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 517
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->setColor(I)V

    .line 315
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->invalidate()V

    return-void
.end method

.method public setBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 309
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->invalidate()V

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 241
    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 290
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mSwitchIconAnimator:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton$SwitchIconAnimator;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton$SwitchIconAnimator;->startAnimation(Landroid/graphics/drawable/Drawable;)Z

    .line 291
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->invalidate()V

    goto :goto_0

    .line 294
    :cond_1
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 296
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    :cond_2
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 300
    iget p2, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mIconSize:I

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    .line 301
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getCenterX()F

    move-result v0

    sub-float/2addr v0, p2

    float-to-int v0, v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getCenterY()F

    move-result v1

    sub-float/2addr v1, p2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v2}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getCenterX()F

    move-result v2

    add-float/2addr v2, p2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v3}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getCenterY()F

    move-result v3

    add-float/2addr v3, p2

    float-to-int p2, v3

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 302
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 303
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->invalidate()V

    :goto_0
    return-void
.end method

.method public setLineMorphingState(IZ)V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;

    if-eqz v1, :cond_0

    .line 263
    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->switchLineState(IZ)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 500
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 502
    invoke-super {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 504
    :cond_0
    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public setRadius(I)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->setRadius(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->requestLayout()V

    :cond_0
    return-void
.end method

.method public show(Landroid/app/Activity;III)V
    .locals 3

    .line 329
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v2}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 331
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->updateParams(IIILandroid/view/ViewGroup$LayoutParams;)V

    .line 333
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->updateLocation(III)V

    :goto_0
    return-void
.end method

.method public show(Landroid/view/ViewGroup;III)V
    .locals 2

    .line 350
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 352
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 353
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 354
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->updateParams(IIILandroid/view/ViewGroup$LayoutParams;)V

    .line 356
    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->updateLocation(III)V

    :goto_0
    return-void
.end method

.method public updateLocation(III)V
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->updateParams(IIILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 374
    :cond_0
    const-string p1, "FloatingActionButton"

    const-string p2, "updateLocation() is called without parent"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 443
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->mPrevIcon:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

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
