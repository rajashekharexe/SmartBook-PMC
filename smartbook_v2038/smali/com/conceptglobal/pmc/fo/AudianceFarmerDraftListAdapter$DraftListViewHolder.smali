.class public Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$DraftListViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AudianceFarmerDraftListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DraftListViewHolder"
.end annotation


# instance fields
.field protected cardview:Landroidx/cardview/widget/CardView;

.field protected cbAudianceFarmerSelect:Landroid/widget/CheckBox;

.field protected id:Ljava/lang/String;

.field protected ll:Landroid/widget/LinearLayout;

.field protected profTextView:Landroid/widget/TextView;

.field protected profTextView2:Landroid/widget/TextView;

.field protected profile_image:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 520
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0900e3

    .line 521
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$DraftListViewHolder;->cardview:Landroidx/cardview/widget/CardView;

    const v0, 0x7f090058

    .line 522
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$DraftListViewHolder;->ll:Landroid/widget/LinearLayout;

    const v0, 0x7f090359

    .line 523
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$DraftListViewHolder;->profile_image:Landroid/widget/ImageView;

    const v0, 0x7f090589

    .line 525
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$DraftListViewHolder;->profTextView:Landroid/widget/TextView;

    const v0, 0x7f09058a

    .line 526
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$DraftListViewHolder;->profTextView2:Landroid/widget/TextView;

    const v0, 0x7f0900e6

    .line 528
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$DraftListViewHolder;->cbAudianceFarmerSelect:Landroid/widget/CheckBox;

    return-void
.end method
