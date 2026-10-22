.class public Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HomePageGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field border:Landroid/view/View;

.field cardView:Landroidx/cardview/widget/CardView;

.field count:Landroid/widget/TextView;

.field count1:Landroid/widget/TextView;

.field count2:Landroid/widget/TextView;

.field count3:Landroid/widget/TextView;

.field description:Landroid/widget/TextView;

.field description1:Landroid/widget/TextView;

.field description2:Landroid/widget/TextView;

.field description4:Landroid/widget/TextView;

.field firstDiscription:Landroid/widget/RelativeLayout;

.field imgView:Landroid/widget/ImageView;

.field ivSVDataRefresh:Landroid/widget/ImageView;

.field pbSvDataRefresh:Landroid/widget/ProgressBar;

.field rlImgBg:Landroid/widget/RelativeLayout;

.field secondDiscription:Landroid/widget/RelativeLayout;

.field thirdDiscription:Landroid/widget/RelativeLayout;

.field title:Landroid/widget/TextView;

.field tvAlert:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 674
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090457

    .line 676
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f0905a1

    .line 677
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->tvAlert:Landroid/widget/TextView;

    const v0, 0x7f090123

    .line 678
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->description:Landroid/widget/TextView;

    const v0, 0x7f090124

    .line 679
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->description1:Landroid/widget/TextView;

    const v0, 0x7f090125

    .line 680
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->description2:Landroid/widget/TextView;

    const v0, 0x7f090126

    .line 681
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->description4:Landroid/widget/TextView;

    const v0, 0x7f09010c

    .line 682
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->count:Landroid/widget/TextView;

    const v0, 0x7f09010d

    .line 683
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->count1:Landroid/widget/TextView;

    const v0, 0x7f09010e

    .line 684
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->count2:Landroid/widget/TextView;

    const v0, 0x7f09010f

    .line 685
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->count3:Landroid/widget/TextView;

    const v0, 0x7f090075

    .line 686
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->imgView:Landroid/widget/ImageView;

    const v0, 0x7f0900e3

    .line 687
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    const v0, 0x7f090202

    .line 689
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->firstDiscription:Landroid/widget/RelativeLayout;

    const v0, 0x7f0903d0

    .line 690
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->secondDiscription:Landroid/widget/RelativeLayout;

    const v0, 0x7f090455

    .line 691
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->thirdDiscription:Landroid/widget/RelativeLayout;

    const v0, 0x7f090070

    .line 692
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->border:Landroid/view/View;

    const v0, 0x7f090408

    .line 693
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->ivSVDataRefresh:Landroid/widget/ImageView;

    const v0, 0x7f090349

    .line 694
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->pbSvDataRefresh:Landroid/widget/ProgressBar;

    return-void
.end method
