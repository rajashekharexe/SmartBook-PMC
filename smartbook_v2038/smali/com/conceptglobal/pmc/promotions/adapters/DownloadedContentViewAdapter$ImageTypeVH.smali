.class Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DownloadedContentViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageTypeVH"
.end annotation


# instance fields
.field private chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

.field private icContentType:Landroid/widget/ImageView;

.field private image_thumbnail:Landroid/widget/ImageView;

.field private ivDelete:Landroid/widget/ImageView;

.field private ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

.field private tvDesc:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/view/View;)V
    .locals 2

    .line 391
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    .line 392
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090106

    .line 393
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->icContentType:Landroid/widget/ImageView;

    const v0, 0x7f09050c

    .line 394
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f09050b

    .line 395
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->tvDesc:Landroid/widget/TextView;

    const v0, 0x7f09023e

    .line 396
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->image_thumbnail:Landroid/widget/ImageView;

    const v0, 0x7f0900f3

    .line 397
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    .line 398
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->icContentType:Landroid/widget/ImageView;

    const v1, 0x7f080152

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f090137

    .line 399
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    const v0, 0x7f090120

    .line 400
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->ivDelete:Landroid/widget/ImageView;

    .line 401
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH$1;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)V

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->ivDelete:Landroid/widget/ImageView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH$2;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH$2;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;)Landroid/widget/ImageView;
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->ivDelete:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->tvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->tvDesc:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    return-object p0
.end method
