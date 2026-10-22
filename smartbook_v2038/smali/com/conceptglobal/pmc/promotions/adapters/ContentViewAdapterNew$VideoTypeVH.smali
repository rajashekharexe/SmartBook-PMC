.class Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ContentViewAdapterNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoTypeVH"
.end annotation


# instance fields
.field private chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

.field private icContentType:Landroid/widget/ImageView;

.field private ivActionPlay:Landroid/widget/ImageView;

.field private ivCertified:Landroid/widget/ImageView;

.field private ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

.field private ivThumNail:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

.field private tvContentDescription:Landroid/widget/TextView;

.field private tvContentTitle:Landroid/widget/TextView;

.field private tvDesc:Landroid/widget/TextView;

.field private tvDuration:Landroid/widget/TextView;

.field private tvTest:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Landroid/view/View;)V
    .locals 1

    .line 378
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    .line 379
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0905ea

    .line 380
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;->ivThumNail:Landroid/widget/ImageView;

    const v0, 0x7f09004a

    .line 381
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;->ivActionPlay:Landroid/widget/ImageView;

    const v0, 0x7f090481

    .line 382
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;->tvContentTitle:Landroid/widget/TextView;

    const v0, 0x7f090480

    .line 383
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;->tvContentDescription:Landroid/widget/TextView;

    .line 384
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;->ivThumNail:Landroid/widget/ImageView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH$1;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;->tvContentTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;->tvContentDescription:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;)Landroid/widget/ImageView;
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;->ivThumNail:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;)Landroid/widget/ImageView;
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;->ivActionPlay:Landroid/widget/ImageView;

    return-object p0
.end method
