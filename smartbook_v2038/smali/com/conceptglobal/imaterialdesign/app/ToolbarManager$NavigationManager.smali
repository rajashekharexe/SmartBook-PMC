.class public abstract Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;
.super Ljava/lang/Object;
.source "ToolbarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NavigationManager"
.end annotation


# instance fields
.field protected mNavigationIcon:Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;

.field protected mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 370
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;->mNavigationIcon:Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;

    .line 371
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 372
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance p2, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager$1;

    invoke-direct {p2, p0}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager$1;-><init>(Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public abstract isBackState()Z
.end method

.method public notifyStateChanged()V
    .locals 3

    .line 402
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;->mNavigationIcon:Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;->isBackState()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->switchIconState(IZ)V

    return-void
.end method

.method public notifyStateInvalidated()V
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;->mNavigationIcon:Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;->isBackState()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->switchIconState(IZ)V

    return-void
.end method

.method public notifyStateProgressChanged(ZF)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;->mNavigationIcon:Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->setIconState(IF)Z

    return-void
.end method

.method public abstract onNavigationClick()V
.end method
