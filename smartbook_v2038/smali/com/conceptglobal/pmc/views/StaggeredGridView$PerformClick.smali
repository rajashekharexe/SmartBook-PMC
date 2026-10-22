.class Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;
.super Lcom/conceptglobal/pmc/views/StaggeredGridView$WindowRunnnable;
.source "StaggeredGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/views/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;)V
    .locals 1

    .line 2327
    iput-object p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView$WindowRunnnable;-><init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;Lcom/conceptglobal/pmc/views/StaggeredGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;Lcom/conceptglobal/pmc/views/StaggeredGridView$1;)V
    .locals 0

    .line 2327
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;-><init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2333
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$400(Lcom/conceptglobal/pmc/views/StaggeredGridView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2335
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$800(Lcom/conceptglobal/pmc/views/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2336
    iget v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;->mClickMotionPosition:I

    if-eqz v0, :cond_1

    .line 2337
    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v2}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$700(Lcom/conceptglobal/pmc/views/StaggeredGridView;)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2339
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;->sameWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2340
    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v2}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$1600(Lcom/conceptglobal/pmc/views/StaggeredGridView;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2344
    iget-object v3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$PerformClick;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v3, v2, v1, v4, v5}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_1
    return-void
.end method
