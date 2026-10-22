.class Lcom/conceptglobal/ifastscroll/FastScrollBubble$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FastScrollBubble.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/ifastscroll/FastScrollBubble;->animateHide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/ifastscroll/FastScrollBubble;


# direct methods
.method constructor <init>(Lcom/conceptglobal/ifastscroll/FastScrollBubble;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble$1;->this$0:Lcom/conceptglobal/ifastscroll/FastScrollBubble;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 101
    iget-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble$1;->this$0:Lcom/conceptglobal/ifastscroll/FastScrollBubble;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble$1;->this$0:Lcom/conceptglobal/ifastscroll/FastScrollBubble;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->access$102(Lcom/conceptglobal/ifastscroll/FastScrollBubble;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 94
    iget-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble$1;->this$0:Lcom/conceptglobal/ifastscroll/FastScrollBubble;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->setVisibility(I)V

    .line 95
    iget-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble$1;->this$0:Lcom/conceptglobal/ifastscroll/FastScrollBubble;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->access$102(Lcom/conceptglobal/ifastscroll/FastScrollBubble;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method
