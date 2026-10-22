.class public Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
.super Ljava/lang/Object;
.source "ShowcaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/amlcurran/showcaseview/ShowcaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private parent:Landroid/view/ViewGroup;

.field private parentIndex:I

.field private final showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 442
    invoke-direct {p0, p1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;-><init>(Landroid/app/Activity;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->activity:Landroid/app/Activity;

    .line 453
    new-instance v0, Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-direct {v0, p1, p2}, Lcom/github/amlcurran/showcaseview/ShowcaseView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .line 454
    sget-object p2, Lcom/github/amlcurran/showcaseview/targets/Target;->NONE:Lcom/github/amlcurran/showcaseview/targets/Target;

    invoke-virtual {v0, p2}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setTarget(Lcom/github/amlcurran/showcaseview/targets/Target;)V

    const p2, 0x1020002

    .line 455
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->parent:Landroid/view/ViewGroup;

    .line 456
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    iput p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->parentIndex:I

    return-void
.end method


# virtual methods
.method public blockAllTouches()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->access$1400(Lcom/github/amlcurran/showcaseview/ShowcaseView;Z)V

    return-object p0
.end method

.method public build()Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->parent:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->parentIndex:I

    invoke-static {v0, v1, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->access$800(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/view/ViewGroup;I)V

    .line 466
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    return-object v0
.end method

.method public doNotBlockTouches()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setBlocksTouches(Z)V

    return-object p0
.end method

.method public hideOnTouchOutside()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setBlocksTouches(Z)V

    .line 579
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setHideOnTouchOutside(Z)V

    return-object p0
.end method

.method public replaceEndButton(I)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 3

    .line 639
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 640
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 643
    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->replaceEndButton(Landroid/widget/Button;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object p1

    return-object p1

    .line 641
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempted to replace showcase button with a layout which isn\'t a button"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public replaceEndButton(Landroid/widget/Button;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-static {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->access$1300(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/widget/Button;)V

    return-object p0
.end method

.method public setContentText(I)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setContentText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setContentTextPaint(Landroid/text/TextPaint;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-static {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->access$1100(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/text/TextPaint;)V

    return-object p0
.end method

.method public setContentTitle(I)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setContentTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setContentTitlePaint(Landroid/text/TextPaint;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-static {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->access$1200(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/text/TextPaint;)V

    return-object p0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->overrideButtonClick(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setParent(Landroid/view/ViewGroup;I)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->parent:Landroid/view/ViewGroup;

    .line 601
    iput p2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->parentIndex:I

    return-object p0
.end method

.method public setShowcaseDrawer(Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-static {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->access$900(Lcom/github/amlcurran/showcaseview/ShowcaseView;Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;)V

    return-object p0
.end method

.method public setShowcaseEventListener(Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setOnShowcaseEventListener(Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;)V

    return-object p0
.end method

.method public setStyle(I)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setStyle(I)V

    return-object p0
.end method

.method public setTarget(Lcom/github/amlcurran/showcaseview/targets/Target;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setTarget(Lcom/github/amlcurran/showcaseview/targets/Target;)V

    return-object p0
.end method

.method public singleShot(J)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-static {v0, p1, p2}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->access$1000(Lcom/github/amlcurran/showcaseview/ShowcaseView;J)V

    return-object p0
.end method

.method public useDecorViewAsParent()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->parent:Landroid/view/ViewGroup;

    const/4 v0, -0x1

    .line 660
    iput v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->parentIndex:I

    return-object p0
.end method

.method public withHoloShowcase()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 3

    .line 474
    new-instance v0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p0, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setShowcaseDrawer(Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withMaterialShowcase()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 2

    .line 490
    new-instance v0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {p0, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setShowcaseDrawer(Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withNewStyleShowcase()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 3

    .line 482
    new-instance v0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p0, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setShowcaseDrawer(Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    return-object v0
.end method
