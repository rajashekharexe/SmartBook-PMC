.class Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DownloadedContentViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextTypeVH"
.end annotation


# instance fields
.field private chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

.field private descTv:Landroid/widget/TextView;

.field private icContentType:Landroid/widget/ImageView;

.field private imgPreviewIv:Landroid/widget/ImageView;

.field private previewGroup:Landroidx/cardview/widget/CardView;

.field private progress:Landroid/widget/ProgressBar;

.field private siteTv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

.field private titleTv:Landroid/widget/TextView;

.field private tvContent:Landroid/widget/TextView;

.field private tvDesc:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/view/View;)V
    .locals 1

    .line 357
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    .line 358
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090106

    .line 359
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->icContentType:Landroid/widget/ImageView;

    const v0, 0x7f09050c

    .line 360
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f09050b

    .line 361
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->tvDesc:Landroid/widget/TextView;

    const v0, 0x7f090101

    .line 362
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->tvContent:Landroid/widget/TextView;

    const v0, 0x7f0900f3

    .line 363
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    const v0, 0x7f090357

    .line 365
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->previewGroup:Landroidx/cardview/widget/CardView;

    const v0, 0x7f090244

    .line 366
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->imgPreviewIv:Landroid/widget/ImageView;

    const v0, 0x7f09045b

    .line 367
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->titleTv:Landroid/widget/TextView;

    const v0, 0x7f090122

    .line 368
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->descTv:Landroid/widget/TextView;

    const v0, 0x7f0903e7

    .line 369
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->siteTv:Landroid/widget/TextView;

    const v0, 0x7f09035b

    .line 370
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->progress:Landroid/widget/ProgressBar;

    .line 371
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->previewGroup:Landroidx/cardview/widget/CardView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH$1;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)V

    invoke-virtual {p2, v0}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/view/View;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$1;)V
    .locals 0

    .line 348
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->tvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->tvDesc:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->tvContent:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;)Landroid/widget/ImageView;
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->icContentType:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;)Landroid/widget/ProgressBar;
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->progress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;)Landroidx/cardview/widget/CardView;
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->previewGroup:Landroidx/cardview/widget/CardView;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->titleTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->descTv:Landroid/widget/TextView;

    return-object p0
.end method
