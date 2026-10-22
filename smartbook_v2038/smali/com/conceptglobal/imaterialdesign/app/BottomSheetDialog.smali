.class public Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;
.super Landroid/app/Dialog;
.source "BottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;,
        Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$SlideAnimation;
    }
.end annotation


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private mCancelable:Z

.field private mCanceledOnTouchOutside:Z

.field private mContainer:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;

.field private mContentView:Landroid/view/View;

.field private final mDismissAction:Ljava/lang/Runnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mInDuration:I

.field private mInInterpolator:Landroid/view/animation/Interpolator;

.field private mLayoutHeight:I

.field private mMinFlingVelocity:I

.field private mOutDuration:I

.field private mOutInterpolator:Landroid/view/animation/Interpolator;

.field private mRunShowAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 59
    sget v0, Lcom/conceptglobal/imaterialdesign/R$style;->Material_App_BottomSheetDialog:I

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mCancelable:Z

    .line 31
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mCanceledOnTouchOutside:Z

    const/4 v1, -0x2

    .line 32
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mLayoutHeight:I

    .line 44
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v1, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$1;-><init>(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)V

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mDismissAction:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 55
    iput-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mRunShowAnimation:Z

    .line 67
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->requestWindowFeature(I)Z

    .line 68
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/imaterialdesign/drawable/BlankDrawable;->getInstance()Lcom/conceptglobal/imaterialdesign/drawable/BlankDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 70
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 71
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 72
    sget v1, Lcom/conceptglobal/imaterialdesign/R$style;->DialogNoAnimation:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 73
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->init(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$001(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)V
    .locals 0

    .line 28
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mMinFlingVelocity:I

    return p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Landroid/view/GestureDetector;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mCancelable:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mCanceledOnTouchOutside:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mContainer:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Landroid/view/animation/Animation;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$202(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mAnimation:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$300(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Ljava/lang/Runnable;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mDismissAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mLayoutHeight:I

    return p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mRunShowAnimation:Z

    return p0
.end method

.method static synthetic access$602(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mRunShowAnimation:Z

    return p1
.end method

.method static synthetic access$700(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Landroid/view/View;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mInDuration:I

    return p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mInInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method private init(Landroid/content/Context;I)V
    .locals 1

    .line 79
    new-instance v0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;-><init>(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mContainer:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->cancelable(Z)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    .line 82
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->canceledOnTouchOutside(Z)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    .line 84
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->onCreate()V

    .line 85
    invoke-virtual {p0, p2}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->applyStyle(I)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    .line 87
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mMinFlingVelocity:I

    .line 89
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$2;-><init>(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mGestureDetector:Landroid/view/GestureDetector;

    .line 125
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mContainer:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 329
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->contentView(Landroid/view/View;)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    return-void
.end method

.method public applyStyle(I)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;
    .locals 7

    .line 132
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 133
    sget-object v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->BottomSheetDialog:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_8

    .line 136
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 137
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->BottomSheetDialog_android_layout_height:I

    if-ne v4, v5, :cond_0

    const/4 v5, -0x2

    .line 138
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->heightParam(I)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    goto :goto_1

    .line 139
    :cond_0
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->BottomSheetDialog_bsd_cancelable:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    .line 140
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->cancelable(Z)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    goto :goto_1

    .line 141
    :cond_1
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->BottomSheetDialog_bsd_canceledOnTouchOutside:I

    if-ne v4, v5, :cond_2

    .line 142
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->canceledOnTouchOutside(Z)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    goto :goto_1

    .line 143
    :cond_2
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->BottomSheetDialog_bsd_dimAmount:I

    if-ne v4, v5, :cond_3

    const/4 v5, 0x0

    .line 144
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->dimAmount(F)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    goto :goto_1

    .line 145
    :cond_3
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->BottomSheetDialog_bsd_inDuration:I

    if-ne v4, v5, :cond_4

    .line 146
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->inDuration(I)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    goto :goto_1

    .line 147
    :cond_4
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->BottomSheetDialog_bsd_inInterpolator:I

    if-ne v4, v5, :cond_5

    .line 148
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_7

    .line 150
    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->inInterpolator(Landroid/view/animation/Interpolator;)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    goto :goto_1

    .line 152
    :cond_5
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->BottomSheetDialog_bsd_outDuration:I

    if-ne v4, v5, :cond_6

    .line 153
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->outDuration(I)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    goto :goto_1

    .line 154
    :cond_6
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->BottomSheetDialog_bsd_outInterpolator:I

    if-ne v4, v5, :cond_7

    .line 155
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_7

    .line 157
    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->outInterpolator(Landroid/view/animation/Interpolator;)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 161
    :cond_8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mInInterpolator:Landroid/view/animation/Interpolator;

    if-nez p1, :cond_9

    .line 164
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mInInterpolator:Landroid/view/animation/Interpolator;

    .line 166
    :cond_9
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mOutInterpolator:Landroid/view/animation/Interpolator;

    if-nez p1, :cond_a

    .line 167
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mOutInterpolator:Landroid/view/animation/Interpolator;

    :cond_a
    return-object p0
.end method

.method public cancelable(Z)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;
    .locals 0

    .line 173
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 174
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mCancelable:Z

    return-object p0
.end method

.method public canceledOnTouchOutside(Z)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;
    .locals 0

    .line 179
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 180
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mCanceledOnTouchOutside:Z

    return-object p0
.end method

.method public contentView(I)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 224
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->contentView(Landroid/view/View;)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    move-result-object p1

    return-object p1
.end method

.method public contentView(Landroid/view/View;)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;
    .locals 1

    .line 208
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mContentView:Landroid/view/View;

    .line 209
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mContainer:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->removeAllViews()V

    .line 210
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mContainer:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->addView(Landroid/view/View;)V

    return-object p0
.end method

.method public dimAmount(F)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;
    .locals 3

    .line 190
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 192
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 193
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 194
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 195
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-object p0
.end method

.method public dismiss()V
    .locals 3

    .line 347
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 351
    new-instance v0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$SlideAnimation;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mContainer:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;

    invoke-virtual {v2}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$SlideAnimation;-><init>(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;II)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mAnimation:Landroid/view/animation/Animation;

    .line 352
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mOutDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 353
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 354
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$3;-><init>(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 369
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mDismissAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public dismissImmediately()V
    .locals 2

    .line 336
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 338
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 342
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mDismissAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected getContainerHeight()I
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mContainer:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->getHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public heightParam(I)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;
    .locals 1

    .line 233
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mLayoutHeight:I

    if-eq v0, p1, :cond_0

    .line 234
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mLayoutHeight:I

    .line 236
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 237
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mRunShowAnimation:Z

    .line 238
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mContainer:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->forceLayout()V

    .line 239
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mContainer:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->requestLayout()V

    :cond_0
    return-object p0
.end method

.method public inDuration(I)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;
    .locals 0

    .line 251
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mInDuration:I

    return-object p0
.end method

.method public inInterpolator(Landroid/view/animation/Interpolator;)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mInInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method protected onCreate()V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 287
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 288
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 289
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mRunShowAnimation:Z

    .line 290
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mContainer:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->forceLayout()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 296
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mContainer:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;

    .line 298
    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mContentView:Landroid/view/View;

    .line 299
    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public outDuration(I)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;
    .locals 0

    .line 271
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mOutDuration:I

    return-object p0
.end method

.method public outInterpolator(Landroid/view/animation/Interpolator;)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->mOutInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setCancelable(Z)V
    .locals 0

    .line 304
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->cancelable(Z)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 309
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->canceledOnTouchOutside(Z)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 319
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->contentView(I)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 314
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->contentView(Landroid/view/View;)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 324
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->contentView(Landroid/view/View;)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    return-void
.end method
