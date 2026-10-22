.class Lcom/conceptglobal/pmc/views/StaggeredGridView$1;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/views/StaggeredGridView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;Landroid/view/View;Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 598
    iput-object p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$1;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    iput-object p2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$1;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$1;->val$performClick:Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$1;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$302(Lcom/conceptglobal/pmc/views/StaggeredGridView;I)I

    .line 602
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$1;->val$child:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 603
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$1;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->setPressed(Z)V

    .line 604
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$1;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$400(Lcom/conceptglobal/pmc/views/StaggeredGridView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$1;->val$performClick:Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;->run()V

    :cond_0
    return-void
.end method
