.class Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations$1;
.super Ljava/lang/Object;
.source "UtilDeclarations.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->layoutGoneAnimation(Landroid/widget/LinearLayout;)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;

.field final synthetic val$llLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations$1;->this$0:Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations$1;->val$llLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 90
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations$1;->val$llLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

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
