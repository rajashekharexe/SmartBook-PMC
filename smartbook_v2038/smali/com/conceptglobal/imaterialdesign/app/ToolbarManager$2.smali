.class Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$2;
.super Ljava/lang/Object;
.source "ToolbarManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;


# direct methods
.method constructor <init>(Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$2;->this$0:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$2;->this$0:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->access$100(Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;)Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$2;->this$0:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->access$100(Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;)Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegate;->invalidateOptionsMenu()V

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$2;->this$0:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->onPrepareMenu()V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
