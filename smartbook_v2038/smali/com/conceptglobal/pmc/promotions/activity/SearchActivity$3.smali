.class Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->initScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 281
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 286
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 288
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 290
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    iget-boolean p2, p2, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->isLoading:Z

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 291
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$1000(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    if-ne p1, p2, :cond_0

    .line 293
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$1300(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)V

    .line 294
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    iput-boolean p3, p1, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->isLoading:Z

    :cond_0
    return-void
.end method
