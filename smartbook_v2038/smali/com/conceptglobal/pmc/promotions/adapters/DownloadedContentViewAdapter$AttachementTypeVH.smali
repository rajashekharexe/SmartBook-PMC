.class Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DownloadedContentViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachementTypeVH"
.end annotation


# instance fields
.field private chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

.field private file_name:Landroid/widget/TextView;

.field private icContentType:Landroid/widget/ImageView;

.field private ivDelete:Landroid/widget/ImageView;

.field private ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

.field private tvDesc:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/view/View;)V
    .locals 2

    .line 496
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    .line 497
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090106

    .line 498
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->icContentType:Landroid/widget/ImageView;

    const v0, 0x7f09050c

    .line 499
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f09050b

    .line 500
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->tvDesc:Landroid/widget/TextView;

    .line 501
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->icContentType:Landroid/widget/ImageView;

    const v1, 0x7f080168

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0900f3

    .line 502
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    const v0, 0x7f0901ed

    .line 503
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->file_name:Landroid/widget/TextView;

    const v0, 0x7f090137

    .line 504
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    const v0, 0x7f090120

    .line 505
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->ivDelete:Landroid/widget/ImageView;

    .line 506
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH$1;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)V

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->ivDelete:Landroid/widget/ImageView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH$2;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH$2;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->file_name:Landroid/widget/TextView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH$3;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH$3;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/view/View;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$1;)V
    .locals 0

    .line 488
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;
    .locals 0

    .line 488
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;)Landroid/widget/ImageView;
    .locals 0

    .line 488
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->ivDelete:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 488
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->tvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 488
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->tvDesc:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;
    .locals 0

    .line 488
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    return-object p0
.end method
