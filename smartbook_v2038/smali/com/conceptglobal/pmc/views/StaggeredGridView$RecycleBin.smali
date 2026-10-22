.class Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/views/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecycleBin"
.end annotation


# instance fields
.field private mMaxScrap:I

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;)V
    .locals 0

    .line 1929
    iput-object p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;Lcom/conceptglobal/pmc/views/StaggeredGridView$1;)V
    .locals 0

    .line 1929
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;-><init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public addScrap(Landroid/view/View;)V
    .locals 3

    .line 1972
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;

    .line 1973
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1974
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 1975
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 1977
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v0, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->position:I

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 1981
    :cond_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildCount()I

    move-result v1

    .line 1982
    iget v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->mMaxScrap:I

    if-le v1, v2, :cond_2

    .line 1983
    iput v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->mMaxScrap:I

    .line 1986
    :cond_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    iget v0, v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->viewType:I

    aget-object v0, v1, v0

    .line 1987
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->mMaxScrap:I

    if-ge v1, v2, :cond_3

    .line 1988
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public clear()V
    .locals 3

    .line 1956
    iget v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1958
    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1960
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 1961
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_1
    return-void
.end method

.method public clearTransientViews()V
    .locals 1

    .line 1966
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 1967
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    return-void
.end method

.method public getScrapView(I)Landroid/view/View;
    .locals 2

    .line 2005
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object p1, v0, p1

    .line 2006
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2010
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2011
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2012
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-object v1
.end method

.method public getTransientStateView(I)Landroid/view/View;
    .locals 2

    .line 1993
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1997
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1999
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    return-object v0
.end method

.method public setViewTypeCount(I)V
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    .line 1941
    iget v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->mViewTypeCount:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1946
    :cond_0
    new-array v0, p1, [Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 1949
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1951
    :cond_1
    iput p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->mViewTypeCount:I

    .line 1952
    iput-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    return-void

    .line 1938
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Must have at least one view type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " types reported)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
