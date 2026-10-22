.class public Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DealerLandsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LandDetailsViewHolder"
.end annotation


# instance fields
.field private ivDelete:Landroid/widget/ImageView;

.field private llSecondRow:Landroid/widget/LinearLayout;

.field private tvCropAcreage:Landroid/widget/TextView;

.field private tvCropDos:Landroid/widget/TextView;

.field private tvCropName:Landroid/widget/TextView;

.field private tvDate_sowing:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 181
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090511

    .line 182
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;->tvCropName:Landroid/widget/TextView;

    const v0, 0x7f090513

    .line 183
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;->tvCropAcreage:Landroid/widget/TextView;

    const v0, 0x7f090547

    .line 184
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;->tvCropDos:Landroid/widget/TextView;

    const v0, 0x7f090271

    .line 185
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;->ivDelete:Landroid/widget/ImageView;

    const v0, 0x7f090579

    .line 186
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;->tvDate_sowing:Landroid/widget/TextView;

    const v0, 0x7f0902ad

    .line 187
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;->llSecondRow:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;->ivDelete:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;->tvCropName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;->tvCropAcreage:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;->tvDate_sowing:Landroid/widget/TextView;

    return-object p0
.end method
