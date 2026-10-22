.class Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;
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
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;)V
    .locals 1

    .line 2304
    iput-object p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView$WindowRunnnable;-><init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;Lcom/conceptglobal/pmc/views/StaggeredGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;Lcom/conceptglobal/pmc/views/StaggeredGridView$1;)V
    .locals 0

    .line 2304
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;-><init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2306
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$2300(Lcom/conceptglobal/pmc/views/StaggeredGridView;)I

    move-result v0

    .line 2307
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$1600(Lcom/conceptglobal/pmc/views/StaggeredGridView;)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2309
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$2300(Lcom/conceptglobal/pmc/views/StaggeredGridView;)I

    move-result v1

    .line 2310
    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v2}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$800(Lcom/conceptglobal/pmc/views/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v3}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$2300(Lcom/conceptglobal/pmc/views/StaggeredGridView;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 2313
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;->sameWindow()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v4}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$400(Lcom/conceptglobal/pmc/views/StaggeredGridView;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2314
    iget-object v4, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2317
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$302(Lcom/conceptglobal/pmc/views/StaggeredGridView;I)I

    .line 2318
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->setPressed(Z)V

    .line 2319
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 2321
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$302(Lcom/conceptglobal/pmc/views/StaggeredGridView;I)I

    :cond_2
    :goto_1
    return-void
.end method
