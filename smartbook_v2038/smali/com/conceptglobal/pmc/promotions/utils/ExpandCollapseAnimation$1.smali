.class Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation$1;
.super Ljava/lang/Object;
.source "ExpandCollapseAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation;->collapse(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation;

.field final synthetic val$summary:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation$1;->this$0:Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation$1;->val$summary:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 36
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation$1;->val$summary:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
