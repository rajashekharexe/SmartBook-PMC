.class Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/views/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;)V
    .locals 0

    .line 2017
    iput-object p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;Lcom/conceptglobal/pmc/views/StaggeredGridView$1;)V
    .locals 0

    .line 2017
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;-><init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 6

    .line 2020
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$402(Lcom/conceptglobal/pmc/views/StaggeredGridView;Z)Z

    .line 2021
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$800(Lcom/conceptglobal/pmc/views/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$702(Lcom/conceptglobal/pmc/views/StaggeredGridView;I)I

    .line 2024
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$900(Lcom/conceptglobal/pmc/views/StaggeredGridView;)Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->clearTransientViews()V

    .line 2026
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$1000(Lcom/conceptglobal/pmc/views/StaggeredGridView;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2028
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$1100(Lcom/conceptglobal/pmc/views/StaggeredGridView;)Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 2029
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$1200(Lcom/conceptglobal/pmc/views/StaggeredGridView;)V

    .line 2032
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$1300(Lcom/conceptglobal/pmc/views/StaggeredGridView;)I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 2034
    iget-object v4, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v4}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$1400(Lcom/conceptglobal/pmc/views/StaggeredGridView;)[I

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v5}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$1500(Lcom/conceptglobal/pmc/views/StaggeredGridView;)[I

    move-result-object v5

    aget v5, v5, v3

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2039
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$1600(Lcom/conceptglobal/pmc/views/StaggeredGridView;)I

    move-result v0

    iget-object v3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v3}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$700(Lcom/conceptglobal/pmc/views/StaggeredGridView;)I

    move-result v3

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$800(Lcom/conceptglobal/pmc/views/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$1600(Lcom/conceptglobal/pmc/views/StaggeredGridView;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iget-object v3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v3}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$1700(Lcom/conceptglobal/pmc/views/StaggeredGridView;)J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-eqz v5, :cond_2

    .line 2040
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$1602(Lcom/conceptglobal/pmc/views/StaggeredGridView;I)I

    .line 2041
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$1500(Lcom/conceptglobal/pmc/views/StaggeredGridView;)[I

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 2042
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$1400(Lcom/conceptglobal/pmc/views/StaggeredGridView;)[I

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 2044
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$1800(Lcom/conceptglobal/pmc/views/StaggeredGridView;)[I

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2045
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$1800(Lcom/conceptglobal/pmc/views/StaggeredGridView;)[I

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 2050
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->requestLayout()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    return-void
.end method
