.class Lcom/conceptglobal/imaterialdesign/app/Dialog$3;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/imaterialdesign/app/Dialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/imaterialdesign/app/Dialog;)V
    .locals 0

    .line 1053
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$3;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1062
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$3;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->setVisibility(I)V

    .line 1063
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$3;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$300(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$3;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$200(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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
