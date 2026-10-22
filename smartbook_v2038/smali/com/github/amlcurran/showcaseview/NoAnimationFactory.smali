.class Lcom/github/amlcurran/showcaseview/NoAnimationFactory;
.super Ljava/lang/Object;
.source "NoAnimationFactory.java"

# interfaces
.implements Lcom/github/amlcurran/showcaseview/AnimationFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animateTargetToPoint(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/graphics/Point;)V
    .locals 1

    .line 20
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0, p2}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setShowcasePosition(II)V

    return-void
.end method

.method public fadeInView(Landroid/view/View;JLcom/github/amlcurran/showcaseview/AnimationFactory$AnimationStartListener;)V
    .locals 0

    .line 10
    invoke-interface {p4}, Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationStartListener;->onAnimationStart()V

    return-void
.end method

.method public fadeOutView(Landroid/view/View;JLcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;)V
    .locals 0

    .line 15
    invoke-interface {p4}, Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;->onAnimationEnd()V

    return-void
.end method
