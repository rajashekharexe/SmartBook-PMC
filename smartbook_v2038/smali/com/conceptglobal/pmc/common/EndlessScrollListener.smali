.class public abstract Lcom/conceptglobal/pmc/common/EndlessScrollListener;
.super Ljava/lang/Object;
.source "EndlessScrollListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private currentPage:I

.field private loading:Z

.field private previousTotalItemCount:I

.field private startingPageIndex:I

.field private visibleThreshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 8
    iput v0, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->visibleThreshold:I

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->currentPage:I

    .line 12
    iput v0, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->previousTotalItemCount:I

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->loading:Z

    .line 16
    iput v0, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->startingPageIndex:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->currentPage:I

    .line 12
    iput v0, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->previousTotalItemCount:I

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->loading:Z

    .line 16
    iput v0, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->startingPageIndex:I

    .line 22
    iput p1, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->visibleThreshold:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->previousTotalItemCount:I

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->loading:Z

    .line 26
    iput p1, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->visibleThreshold:I

    .line 27
    iput p2, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->startingPageIndex:I

    .line 28
    iput p2, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->currentPage:I

    return-void
.end method


# virtual methods
.method public abstract onLoadMore(II)Z
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 37
    iget p1, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->previousTotalItemCount:I

    const/4 v0, 0x1

    if-ge p4, p1, :cond_0

    .line 38
    iget p1, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->startingPageIndex:I

    iput p1, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->currentPage:I

    .line 39
    iput p4, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->previousTotalItemCount:I

    if-nez p4, :cond_0

    .line 40
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->loading:Z

    .line 45
    :cond_0
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->loading:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->previousTotalItemCount:I

    if-le p4, p1, :cond_1

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->loading:Z

    .line 47
    iput p4, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->previousTotalItemCount:I

    .line 48
    iget p1, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->currentPage:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->currentPage:I

    .line 54
    :cond_1
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->loading:Z

    if-nez p1, :cond_2

    add-int/2addr p2, p3

    iget p1, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->visibleThreshold:I

    add-int/2addr p2, p1

    if-lt p2, p4, :cond_2

    .line 55
    iget p1, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->currentPage:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, p4}, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->onLoadMore(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/common/EndlessScrollListener;->loading:Z

    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
