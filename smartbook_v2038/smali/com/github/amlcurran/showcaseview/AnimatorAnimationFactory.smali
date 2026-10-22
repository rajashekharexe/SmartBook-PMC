.class Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;
.super Ljava/lang/Object;
.source "AnimatorAnimationFactory.java"

# interfaces
.implements Lcom/github/amlcurran/showcaseview/AnimationFactory;


# static fields
.field private static final ALPHA:Ljava/lang/String; = "alpha"

.field private static final INVISIBLE:F = 0.0f

.field private static final VISIBLE:F = 1.0f


# instance fields
.field private final interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    return-void
.end method


# virtual methods
.method public animateTargetToPoint(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/graphics/Point;)V
    .locals 3

    .line 72
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 73
    iget v1, p2, Landroid/graphics/Point;->x:I

    filled-new-array {v1}, [I

    move-result-object v1

    const-string v2, "showcaseX"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 74
    iget p2, p2, Landroid/graphics/Point;->y:I

    filled-new-array {p2}, [I

    move-result-object p2

    const-string v2, "showcaseY"

    invoke-static {p1, v2, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 p2, 0x2

    .line 75
    new-array p2, p2, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v1, p2, v2

    const/4 v1, 0x1

    aput-object p1, p2, v1

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 76
    iget-object p1, p0, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 77
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public fadeInView(Landroid/view/View;JLcom/github/amlcurran/showcaseview/AnimationFactory$AnimationStartListener;)V
    .locals 2

    const/4 v0, 0x2

    .line 44
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 45
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-instance p3, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory$1;

    invoke-direct {p3, p0, p4}, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory$1;-><init>(Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationStartListener;)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 53
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public fadeOutView(Landroid/view/View;JLcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;)V
    .locals 3

    const/4 v0, 0x1

    .line 58
    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 59
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-instance p3, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory$2;

    invoke-direct {p3, p0, p4}, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory$2;-><init>(Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 67
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
