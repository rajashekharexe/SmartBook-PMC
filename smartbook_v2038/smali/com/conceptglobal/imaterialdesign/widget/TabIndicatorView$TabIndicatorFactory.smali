.class public abstract Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;
.super Ljava/lang/Object;
.source "TabIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TabIndicatorFactory"
.end annotation


# instance fields
.field private mView:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCurrentTabIndicator()I
.end method

.method public abstract getIcon(I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getTabIndicatorCount()I
.end method

.method public abstract getText(I)Ljava/lang/CharSequence;
.end method

.method public abstract isIconTabIndicator(I)Z
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;->mView:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final notifyTabChanged(I)V
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;->mView:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final notifyTabInserted(I)V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;->mView:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final notifyTabMoved(II)V
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;->mView:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public final notifyTabRangeChanged(II)V
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;->mView:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final notifyTabRangeInserted(II)V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;->mView:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final notifyTabRangeRemoved(II)V
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;->mView:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public final notifyTabRemoved(I)V
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;->mView:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public final notifyTabScrollStateChanged(I)V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;->mView:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->onTabScrollStateChanged(I)V

    return-void
.end method

.method public final notifyTabScrolled(IF)V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;->mView:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->onTabScrolled(IF)V

    return-void
.end method

.method public final notifyTabSelected(I)V
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;->mView:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->onTabSelected(I)V

    return-void
.end method

.method public abstract onTabIndicatorSelected(I)V
.end method

.method protected setTabIndicatorView(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;->mView:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    return-void
.end method
