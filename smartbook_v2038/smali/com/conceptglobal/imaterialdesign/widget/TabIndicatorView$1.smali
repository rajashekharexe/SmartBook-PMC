.class Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "TabIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$1;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 112
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$1;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->access$100(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$1;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->access$000(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->access$200(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$1;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->access$100(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$1;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-static {p3}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->access$000(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->access$200(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;Landroid/view/View;)V

    return-void
.end method
