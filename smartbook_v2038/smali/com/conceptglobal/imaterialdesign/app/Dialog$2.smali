.class Lcom/conceptglobal/imaterialdesign/app/Dialog$2;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/imaterialdesign/app/Dialog;->onStart()V
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

    .line 1025
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$2;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 1028
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$2;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1029
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$2;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$2;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v1, v1, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mInAnimationId:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1030
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$2;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    return v0
.end method
