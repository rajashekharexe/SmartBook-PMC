.class Lcom/github/amlcurran/showcaseview/targets/SherlockReflector;
.super Ljava/lang/Object;
.source "SherlockReflector.java"

# interfaces
.implements Lcom/github/amlcurran/showcaseview/targets/Reflector;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/targets/SherlockReflector;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getActionBarView()Landroid/view/ViewParent;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/targets/SherlockReflector;->getHomeButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public getHomeButton()Landroid/view/View;
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/targets/SherlockReflector;->mActivity:Landroid/app/Activity;

    const v1, 0x102002c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/targets/SherlockReflector;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/targets/SherlockReflector;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "abs__home"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/targets/SherlockReflector;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "insertShowcaseViewWithType cannot be used when the theme has no ActionBar"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showcaseActionItem(I)V
    .locals 0

    return-void
.end method
