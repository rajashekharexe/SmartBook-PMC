.class public Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$LoaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CustomerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoaderViewHolder"
.end annotation


# instance fields
.field mProgressBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;Landroid/view/View;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$LoaderViewHolder;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    .line 403
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090362

    .line 404
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$LoaderViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method
