.class public Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FarmerSelectionRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectionListViewHolder"
.end annotation


# instance fields
.field protected cardview:Landroidx/cardview/widget/CardView;

.field protected id:Ljava/lang/String;

.field protected ivSave:Landroid/widget/ImageView;

.field protected llView:Landroid/widget/LinearLayout;

.field protected tvActivityAssigned:Landroid/widget/TextView;

.field protected tvFarmerName:Landroid/widget/TextView;

.field protected tvFarmerNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 174
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0900e1

    .line 175
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;->cardview:Landroidx/cardview/widget/CardView;

    const v0, 0x7f090279

    .line 176
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;->ivSave:Landroid/widget/ImageView;

    const v0, 0x7f0902c7

    .line 177
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;->llView:Landroid/widget/LinearLayout;

    const v0, 0x7f09052f

    .line 178
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;->tvFarmerName:Landroid/widget/TextView;

    const v0, 0x7f090568

    .line 179
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;->tvFarmerNumber:Landroid/widget/TextView;

    const v0, 0x7f0904f6

    .line 180
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;->tvActivityAssigned:Landroid/widget/TextView;

    return-void
.end method
