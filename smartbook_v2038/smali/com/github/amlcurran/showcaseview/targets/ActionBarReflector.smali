.class Lcom/github/amlcurran/showcaseview/targets/ActionBarReflector;
.super Ljava/lang/Object;
.source "ActionBarReflector.java"

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
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarReflector;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getActionBarView()Landroid/view/ViewParent;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/targets/ActionBarReflector;->getHomeButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public getHomeButton()Landroid/view/View;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarReflector;->mActivity:Landroid/app/Activity;

    const v1, 0x102002c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "insertShowcaseViewWithType cannot be used when the theme has no ActionBar"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showcaseActionItem(I)V
    .locals 0

    return-void
.end method
