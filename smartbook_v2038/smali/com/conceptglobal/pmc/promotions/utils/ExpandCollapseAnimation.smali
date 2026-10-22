.class public Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation;
.super Ljava/lang/Object;
.source "ExpandCollapseAnimation.java"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private slideAnimator(IILandroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 57
    filled-new-array {p1, p2}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 60
    new-instance p2, Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation$2;

    invoke-direct {p2, p0, p3}, Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation$2;-><init>(Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method


# virtual methods
.method public collapse(Landroid/view/View;)V
    .locals 2

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, v0, v1, p1}, Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation;->slideAnimator(IILandroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation$1;

    invoke-direct {v1, p0, p1}, Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation$1;-><init>(Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 51
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public expand(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/16 v2, 0x12c

    .line 20
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 22
    invoke-direct {p0, v0, v2, p1}, Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation;->slideAnimator(IILandroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    .line 24
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
