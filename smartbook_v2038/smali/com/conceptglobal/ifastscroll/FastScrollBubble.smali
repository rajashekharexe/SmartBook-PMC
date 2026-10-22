.class public Lcom/conceptglobal/ifastscroll/FastScrollBubble;
.super Landroid/widget/FrameLayout;
.source "FastScrollBubble.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/ifastscroll/FastScrollBubble$BubbleHider;
    }
.end annotation


# static fields
.field private static final ALPHA:Ljava/lang/String; = "alpha"

.field private static final BUBBLE_ANIMATION_DURATION:I = 0xc8

.field private static final BUBBLE_HIDE_DELAY:I = 0x3e8

.field private static final SCALE_X:Ljava/lang/String; = "scaleX"

.field private static final SCALE_Y:Ljava/lang/String; = "scaleY"


# instance fields
.field private bubbleHideAnimator:Landroid/animation/AnimatorSet;

.field private final bubbleHider:Lcom/conceptglobal/ifastscroll/FastScrollBubble$BubbleHider;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance p1, Lcom/conceptglobal/ifastscroll/FastScrollBubble$BubbleHider;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/ifastscroll/FastScrollBubble$BubbleHider;-><init>(Lcom/conceptglobal/ifastscroll/FastScrollBubble;Lcom/conceptglobal/ifastscroll/FastScrollBubble$1;)V

    iput-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->bubbleHider:Lcom/conceptglobal/ifastscroll/FastScrollBubble$BubbleHider;

    .line 28
    iput-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->bubbleHideAnimator:Landroid/animation/AnimatorSet;

    .line 34
    invoke-direct {p0}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance p1, Lcom/conceptglobal/ifastscroll/FastScrollBubble$BubbleHider;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/conceptglobal/ifastscroll/FastScrollBubble$BubbleHider;-><init>(Lcom/conceptglobal/ifastscroll/FastScrollBubble;Lcom/conceptglobal/ifastscroll/FastScrollBubble$1;)V

    iput-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->bubbleHider:Lcom/conceptglobal/ifastscroll/FastScrollBubble$BubbleHider;

    .line 28
    iput-object p2, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->bubbleHideAnimator:Landroid/animation/AnimatorSet;

    .line 39
    invoke-direct {p0}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance p1, Lcom/conceptglobal/ifastscroll/FastScrollBubble$BubbleHider;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/conceptglobal/ifastscroll/FastScrollBubble$BubbleHider;-><init>(Lcom/conceptglobal/ifastscroll/FastScrollBubble;Lcom/conceptglobal/ifastscroll/FastScrollBubble$1;)V

    iput-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->bubbleHider:Lcom/conceptglobal/ifastscroll/FastScrollBubble$BubbleHider;

    .line 28
    iput-object p2, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->bubbleHideAnimator:Landroid/animation/AnimatorSet;

    .line 44
    invoke-direct {p0}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->init()V

    return-void
.end method

.method static synthetic access$102(Lcom/conceptglobal/ifastscroll/FastScrollBubble;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->bubbleHideAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$200(Lcom/conceptglobal/ifastscroll/FastScrollBubble;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->animateHide()V

    return-void
.end method

.method private animateHide()V
    .locals 7

    .line 82
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->bubbleHideAnimator:Landroid/animation/AnimatorSet;

    .line 83
    invoke-virtual {p0}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->setPivotX(F)V

    .line 84
    invoke-virtual {p0}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->setPivotY(F)V

    const/4 v0, 0x2

    .line 85
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 86
    new-array v4, v0, [F

    fill-array-data v4, :array_1

    const-string v5, "scaleY"

    invoke-static {p0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 87
    new-array v5, v0, [F

    fill-array-data v5, :array_2

    const-string v6, "alpha"

    invoke-static {p0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 88
    iget-object v3, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->bubbleHideAnimator:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 89
    iget-object v3, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->bubbleHideAnimator:Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v4, v5, v1

    aput-object v2, v5, v0

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 90
    iget-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->bubbleHideAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/conceptglobal/ifastscroll/FastScrollBubble$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/ifastscroll/FastScrollBubble$1;-><init>(Lcom/conceptglobal/ifastscroll/FastScrollBubble;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 105
    iget-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->bubbleHideAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private animateShow()V
    .locals 9

    .line 69
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 70
    invoke-virtual {p0}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->setPivotX(F)V

    .line 71
    invoke-virtual {p0}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->setPivotY(F)V

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0, v1}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->setVisibility(I)V

    const/4 v2, 0x2

    .line 73
    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "scaleX"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 74
    new-array v6, v2, [F

    fill-array-data v6, :array_1

    const-string v7, "scaleY"

    invoke-static {p0, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 75
    new-array v7, v2, [F

    fill-array-data v7, :array_2

    const-string v8, "alpha"

    invoke-static {p0, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 76
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v5, 0x3

    .line 77
    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v3, v5, v1

    const/4 v1, 0x1

    aput-object v6, v5, v1

    aput-object v4, v5, v2

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 78
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private init()V
    .locals 3

    .line 48
    invoke-virtual {p0}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/conceptglobal/ifastscroll/R$layout;->default_bubble:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->textView:Landroid/widget/TextView;

    const/4 v1, -0x1

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    iget-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 4

    .line 64
    invoke-virtual {p0}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->bubbleHider:Lcom/conceptglobal/ifastscroll/FastScrollBubble$BubbleHider;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->bubbleHideAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->bubbleHider:Lcom/conceptglobal/ifastscroll/FastScrollBubble$BubbleHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    invoke-virtual {p0}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 59
    invoke-direct {p0}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->animateShow()V

    :cond_1
    return-void
.end method
