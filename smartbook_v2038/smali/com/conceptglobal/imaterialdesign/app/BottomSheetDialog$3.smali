.class Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$3;
.super Ljava/lang/Object;
.source "BottomSheetDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$3;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 365
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$3;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$202(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 366
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$3;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$400(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$3;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$300(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Ljava/lang/Runnable;

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
