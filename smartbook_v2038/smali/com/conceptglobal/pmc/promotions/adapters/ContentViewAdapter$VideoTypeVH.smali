.class Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ContentViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

.field private tvDesc:Landroid/widget/TextView;

.field private tvDuration:Landroid/widget/TextView;

.field private tvTest:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;Landroid/view/View;)V
    .locals 2

    .line 374
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    .line 375
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0900f3

    .line 376
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    const v0, 0x7f09059b

    .line 377
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f09059a

    .line 378
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->tvDesc:Landroid/widget/TextView;

    const v0, 0x7f0905ea

    .line 379
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->ivThumNail:Landroid/widget/ImageView;

    const v0, 0x7f09004a

    .line 380
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->ivActionPlay:Landroid/widget/ImageView;

    const v0, 0x7f0904f2

    .line 381
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->tvTest:Landroid/widget/TextView;

    const v0, 0x7f090266

    .line 382
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->ivCertified:Landroid/widget/ImageView;

    const v0, 0x7f09013b

    .line 383
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->tvDuration:Landroid/widget/TextView;

    const v0, 0x7f090106

    .line 384
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->icContentType:Landroid/widget/ImageView;

    const v1, 0x7f08015f

    .line 385
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f090137

    .line 386
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    .line 387
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->ivActionPlay:Landroid/widget/ImageView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->tvTest:Landroid/widget/TextView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$2;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$2;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$3;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$3;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)V

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;)Landroid/widget/ImageView;
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->ivCertified:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->tvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->tvDesc:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;)Landroid/widget/ImageView;
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->ivThumNail:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->tvDuration:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->tvTest:Landroid/widget/TextView;

    return-object p0
.end method
