.class public Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$LoaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AudianceFarmerDraftListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoaderViewHolder"
.end annotation


# instance fields
.field mProgressBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;Landroid/view/View;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$LoaderViewHolder;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    .line 541
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090362

    .line 542
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$LoaderViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method
