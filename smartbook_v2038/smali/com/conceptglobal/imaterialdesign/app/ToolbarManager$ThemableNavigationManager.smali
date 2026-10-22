.class public Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$ThemableNavigationManager;
.super Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;
.source "ToolbarManager.java"

# interfaces
.implements Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemableNavigationManager"
.end annotation


# instance fields
.field private mCurrentStyle:I

.field private mStyleId:I


# direct methods
.method public constructor <init>(ILandroidx/fragment/app/FragmentManager;Landroidx/appcompat/widget/Toolbar;Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 1

    .line 527
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getCurrentStyle(I)I

    move-result v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;-><init>(ILandroidx/fragment/app/FragmentManager;Landroidx/appcompat/widget/Toolbar;Landroidx/drawerlayout/widget/DrawerLayout;)V

    .line 528
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$ThemableNavigationManager;->mStyleId:I

    .line 529
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getCurrentStyle(I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$ThemableNavigationManager;->mCurrentStyle:I

    .line 530
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->registerOnThemeChangedListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V

    return-void
.end method


# virtual methods
.method public onThemeChanged(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;)V
    .locals 2

    .line 535
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object p1

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$ThemableNavigationManager;->mStyleId:I

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getCurrentStyle(I)I

    move-result p1

    .line 536
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$ThemableNavigationManager;->mCurrentStyle:I

    if-eq v0, p1, :cond_0

    .line 537
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$ThemableNavigationManager;->mCurrentStyle:I

    .line 538
    new-instance p1, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable$Builder;

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$ThemableNavigationManager;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$ThemableNavigationManager;->mCurrentStyle:I

    invoke-direct {p1, v0, v1}, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable$Builder;->build()Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;

    move-result-object p1

    .line 539
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$ThemableNavigationManager;->mNavigationIcon:Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->getIconState()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->switchIconState(IZ)V

    .line 540
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$ThemableNavigationManager;->mNavigationIcon:Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;

    .line 541
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$ThemableNavigationManager;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$ThemableNavigationManager;->mNavigationIcon:Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
