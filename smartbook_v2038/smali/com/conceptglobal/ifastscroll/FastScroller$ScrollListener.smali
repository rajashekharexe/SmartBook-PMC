.class Lcom/conceptglobal/ifastscroll/FastScroller$ScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/ifastscroll/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/ifastscroll/FastScroller;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/ifastscroll/FastScroller;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScroller$ScrollListener;->this$0:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/ifastscroll/FastScroller;Lcom/conceptglobal/ifastscroll/FastScroller$1;)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Lcom/conceptglobal/ifastscroll/FastScroller$ScrollListener;-><init>(Lcom/conceptglobal/ifastscroll/FastScroller;)V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 202
    iget-object p2, p0, Lcom/conceptglobal/ifastscroll/FastScroller$ScrollListener;->this$0:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-static {p2}, Lcom/conceptglobal/ifastscroll/FastScroller;->access$800(Lcom/conceptglobal/ifastscroll/FastScroller;)Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/conceptglobal/ifastscroll/FastScroller$ScrollListener;->this$0:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-static {p2}, Lcom/conceptglobal/ifastscroll/FastScroller;->access$400(Lcom/conceptglobal/ifastscroll/FastScroller;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/conceptglobal/ifastscroll/FastScroller$ScrollListener;->this$0:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-static {p2}, Lcom/conceptglobal/ifastscroll/FastScroller;->access$900(Lcom/conceptglobal/ifastscroll/FastScroller;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_1

    .line 203
    iget-object p2, p0, Lcom/conceptglobal/ifastscroll/FastScroller$ScrollListener;->this$0:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-static {p2}, Lcom/conceptglobal/ifastscroll/FastScroller;->access$900(Lcom/conceptglobal/ifastscroll/FastScroller;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 206
    iget-object p3, p0, Lcom/conceptglobal/ifastscroll/FastScroller$ScrollListener;->this$0:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-static {p3}, Lcom/conceptglobal/ifastscroll/FastScroller;->access$1000(Lcom/conceptglobal/ifastscroll/FastScroller;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 207
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    mul-int p3, p3, p1

    iget-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScroller$ScrollListener;->this$0:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-virtual {p1}, Lcom/conceptglobal/ifastscroll/FastScroller;->getHeight()I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    .line 208
    iget-object p3, p0, Lcom/conceptglobal/ifastscroll/FastScroller$ScrollListener;->this$0:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-static {p3}, Lcom/conceptglobal/ifastscroll/FastScroller;->access$900(Lcom/conceptglobal/ifastscroll/FastScroller;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int p3, p3, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    mul-int p3, p3, p1

    iget-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScroller$ScrollListener;->this$0:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-virtual {p1}, Lcom/conceptglobal/ifastscroll/FastScroller;->getWidth()I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    .line 211
    iget-object p3, p0, Lcom/conceptglobal/ifastscroll/FastScroller$ScrollListener;->this$0:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-static {p3}, Lcom/conceptglobal/ifastscroll/FastScroller;->access$900(Lcom/conceptglobal/ifastscroll/FastScroller;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int p3, p3, v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    :goto_0
    sub-int/2addr p3, p2

    .line 213
    iget-object p2, p0, Lcom/conceptglobal/ifastscroll/FastScroller$ScrollListener;->this$0:Lcom/conceptglobal/ifastscroll/FastScroller;

    int-to-float p3, p3

    div-float/2addr p3, p1

    invoke-static {p2, p3}, Lcom/conceptglobal/ifastscroll/FastScroller;->access$600(Lcom/conceptglobal/ifastscroll/FastScroller;F)V

    :cond_1
    return-void
.end method
