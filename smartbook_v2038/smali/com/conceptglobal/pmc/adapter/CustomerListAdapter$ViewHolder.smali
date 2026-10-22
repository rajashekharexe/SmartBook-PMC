.class public Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CustomerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field protected cardview:Landroidx/cardview/widget/CardView;

.field protected id:Ljava/lang/String;

.field protected ll:Landroid/widget/LinearLayout;

.field protected phonedail:Landroid/widget/ImageView;

.field protected profile_image:Landroid/widget/ImageView;

.field protected tvFarmerName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 294
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0900e3

    .line 295
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$ViewHolder;->cardview:Landroidx/cardview/widget/CardView;

    const v0, 0x7f090059

    .line 296
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$ViewHolder;->ll:Landroid/widget/LinearLayout;

    const v0, 0x7f09035a

    .line 297
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$ViewHolder;->profile_image:Landroid/widget/ImageView;

    const v0, 0x7f090351

    .line 298
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$ViewHolder;->phonedail:Landroid/widget/ImageView;

    const/16 v1, 0x8

    .line 299
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f09058b

    .line 300
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$ViewHolder;->tvFarmerName:Landroid/widget/TextView;

    return-void
.end method
