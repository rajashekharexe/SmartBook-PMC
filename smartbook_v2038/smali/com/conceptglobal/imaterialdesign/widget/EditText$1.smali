.class Lcom/conceptglobal/imaterialdesign/widget/EditText$1;
.super Ljava/lang/Object;
.source "EditText.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/imaterialdesign/widget/EditText;->setLabelVisible(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;


# direct methods
.method constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/EditText;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$1;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 664
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$1;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    iget-object p1, p1, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setVisibility(I)V

    return-void
.end method
