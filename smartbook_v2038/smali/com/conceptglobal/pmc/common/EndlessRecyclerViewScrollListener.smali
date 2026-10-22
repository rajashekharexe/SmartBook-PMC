.class public abstract Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "EndlessRecyclerViewScrollListener.java"


# instance fields
.field private currentPage:I

.field private loading:Z

.field mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private previousTotalItemCount:I

.field private startingPageIndex:I

.field private visibleThreshold:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 3

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x5

    .line 14
    iput v0, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->visibleThreshold:I

    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->currentPage:I

    .line 18
    iput v1, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->previousTotalItemCount:I

    const/4 v2, 0x1

    .line 20
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->loading:Z

    .line 22
    iput v1, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->startingPageIndex:I

    .line 31
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 32
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    mul-int v0, v0, p1

    iput v0, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->visibleThreshold:I

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x5

    .line 14
    iput v0, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->visibleThreshold:I

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->currentPage:I

    .line 18
    iput v0, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->previousTotalItemCount:I

    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->loading:Z

    .line 22
    iput v0, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->startingPageIndex:I

    .line 27
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V
    .locals 3

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x5

    .line 14
    iput v0, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->visibleThreshold:I

    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->currentPage:I

    .line 18
    iput v1, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->previousTotalItemCount:I

    const/4 v2, 0x1

    .line 20
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->loading:Z

    .line 22
    iput v1, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->startingPageIndex:I

    .line 36
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 37
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p1

    mul-int v0, v0, p1

    iput v0, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->visibleThreshold:I

    return-void
.end method


# virtual methods
.method public getLastVisibleItem([I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 42
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    if-nez v0, :cond_0

    .line 44
    aget v1, p1, v0

    goto :goto_1

    .line 46
    :cond_0
    aget v2, p1, v0

    if-le v2, v1, :cond_1

    move v1, v2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public abstract onLoadMore(IILandroidx/recyclerview/widget/RecyclerView;)V
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 59
    iget-object p2, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p2

    .line 61
    iget-object p3, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v0, p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 62
    check-cast p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object p3

    .line 64
    invoke-virtual {p0, p3}, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->getLastVisibleItem([I)I

    move-result p3

    goto :goto_0

    .line 65
    :cond_0
    instance-of v0, p3, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 66
    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    goto :goto_0

    .line 67
    :cond_1
    instance-of v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_2

    .line 68
    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    .line 73
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->previousTotalItemCount:I

    const/4 v2, 0x1

    if-ge p2, v0, :cond_3

    .line 74
    iget v0, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->startingPageIndex:I

    iput v0, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->currentPage:I

    .line 75
    iput p2, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->previousTotalItemCount:I

    if-nez p2, :cond_3

    .line 77
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->loading:Z

    .line 83
    :cond_3
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->loading:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->previousTotalItemCount:I

    if-le p2, v0, :cond_4

    .line 84
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->loading:Z

    .line 85
    iput p2, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->previousTotalItemCount:I

    .line 92
    :cond_4
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->loading:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->visibleThreshold:I

    add-int/2addr p3, v0

    if-le p3, p2, :cond_5

    .line 93
    iget p3, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->currentPage:I

    add-int/2addr p3, v2

    iput p3, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->currentPage:I

    .line 94
    invoke-virtual {p0, p3, p2, p1}, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->onLoadMore(IILandroidx/recyclerview/widget/RecyclerView;)V

    .line 95
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->loading:Z

    :cond_5
    return-void
.end method

.method public resetState()V
    .locals 1

    .line 101
    iget v0, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->startingPageIndex:I

    iput v0, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->currentPage:I

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->previousTotalItemCount:I

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;->loading:Z

    return-void
.end method
