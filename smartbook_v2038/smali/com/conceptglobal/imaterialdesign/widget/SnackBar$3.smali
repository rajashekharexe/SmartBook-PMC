.class Lcom/conceptglobal/imaterialdesign/widget/SnackBar$3;
.super Ljava/lang/Object;
.source "SnackBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->show()V
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

    .line 824
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$3;->this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 838
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$3;->this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->access$200(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;I)V

    .line 839
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$3;->this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->access$300(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 828
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$3;->this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->access$200(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;I)V

    .line 829
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$3;->this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->setVisibility(I)V

    return-void
.end method
