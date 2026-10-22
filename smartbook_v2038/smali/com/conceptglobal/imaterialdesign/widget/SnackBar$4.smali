.class Lcom/conceptglobal/imaterialdesign/widget/SnackBar$4;
.super Ljava/lang/Object;
.source "SnackBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;


# direct methods
.method constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;)V
    .locals 0

    .line 870
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$4;->this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 882
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$4;->this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->access$400(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$4;->this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$4;->this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 883
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$4;->this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$4;->this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 885
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$4;->this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->access$200(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;I)V

    .line 886
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$4;->this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 874
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$4;->this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->access$200(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;I)V

    return-void
.end method
