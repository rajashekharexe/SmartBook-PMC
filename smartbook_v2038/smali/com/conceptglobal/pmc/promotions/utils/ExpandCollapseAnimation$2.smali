.class Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation$2;
.super Ljava/lang/Object;
.source "ExpandCollapseAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation;->slideAnimator(IILandroid/view/View;)Landroid/animation/ValueAnimator;
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

    .line 60
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation$2;->this$0:Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation$2;->val$summary:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 64
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 66
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation$2;->val$summary:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 67
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation$2;->val$summary:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
