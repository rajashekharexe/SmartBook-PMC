.class public Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;
.super Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;
.source "ToolbarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseNavigationManager"
.end annotation


# instance fields
.field protected mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field protected mFragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(ILandroidx/fragment/app/FragmentManager;Landroidx/appcompat/widget/Toolbar;Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 2

    .line 430
    new-instance v0, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable$Builder;

    invoke-virtual {p3}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable$Builder;->build()Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;-><init>(Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;Landroidx/appcompat/widget/Toolbar;)V

    .line 431
    iput-object p4, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 432
    iput-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz p4, :cond_0

    .line 435
    new-instance p1, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager$1;

    invoke-direct {p1, p0}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager$1;-><init>(Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;)V

    invoke-virtual {p4, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 459
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance p2, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager$2;

    invoke-direct {p2, p0}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager$2;-><init>(Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    return-void
.end method


# virtual methods
.method public isBackState()Z
    .locals 3

    .line 469
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    const v2, 0x800003

    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected onDrawerClosed(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onDrawerOpened(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onDrawerSlide(Landroid/view/View;F)V
    .locals 1

    .line 494
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;->shouldSyncDrawerSlidingProgress()Z

    move-result p1

    if-nez p1, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;->notifyStateInvalidated()V

    goto :goto_0

    .line 498
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    .line 499
    invoke-virtual {p0, p2, p1}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;->notifyStateProgressChanged(ZF)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 501
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;->notifyStateProgressChanged(ZF)V

    :goto_0
    return-void
.end method

.method protected onDrawerStateChanged(I)V
    .locals 0

    return-void
.end method

.method protected onFragmentChanged()V
    .locals 0

    .line 486
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;->notifyStateChanged()V

    return-void
.end method

.method public onNavigationClick()V
    .locals 0

    return-void
.end method

.method protected shouldSyncDrawerSlidingProgress()Z
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method
