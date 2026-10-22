.class Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager$1;
.super Ljava/lang/Object;
.source "ToolbarManager.java"

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;-><init>(ILandroidx/fragment/app/FragmentManager;Landroidx/appcompat/widget/Toolbar;Landroidx/drawerlayout/widget/DrawerLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;


# direct methods
.method constructor <init>(Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager$1;->this$0:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager$1;->this$0:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;->onDrawerClosed(Landroid/view/View;)V

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager$1;->this$0:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;->onDrawerOpened(Landroid/view/View;)V

    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager$1;->this$0:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;->onDrawerSlide(Landroid/view/View;F)V

    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager$1;->this$0:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;->onDrawerStateChanged(I)V

    return-void
.end method
