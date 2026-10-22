.class Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout$1;
.super Ljava/lang/Object;
.source "BottomSheetDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;


# direct methods
.method constructor <init>(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout$1;->this$1:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 453
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout$1;->this$1:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;

    iget-object p1, p1, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$202(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

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
