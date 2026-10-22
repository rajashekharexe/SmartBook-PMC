.class Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DownloadedContentViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioTypeVH"
.end annotation


# instance fields
.field private action_play:Landroid/widget/ImageView;

.field private appCompatSeekBar:Landroid/widget/SeekBar;

.field private chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

.field private icContentType:Landroid/widget/ImageView;

.field private ivDelete:Landroid/widget/ImageView;

.field private ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

.field private progressBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

.field private tvDesc:Landroid/widget/TextView;

.field private tvDuration:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/view/View;)V
    .locals 2

    .line 426
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    .line 427
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090106

    .line 428
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->icContentType:Landroid/widget/ImageView;

    const v0, 0x7f09050c

    .line 429
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f09050b

    .line 430
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->tvDesc:Landroid/widget/TextView;

    const v0, 0x7f09013b

    .line 431
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->tvDuration:Landroid/widget/TextView;

    const v0, 0x7f09004a

    .line 432
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->action_play:Landroid/widget/ImageView;

    .line 433
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->icContentType:Landroid/widget/ImageView;

    const v1, 0x7f08015e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0900f3

    .line 434
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    const v0, 0x7f0903d2

    .line 435
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->appCompatSeekBar:Landroid/widget/SeekBar;

    const v0, 0x7f09004c

    .line 436
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f090120

    .line 437
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->ivDelete:Landroid/widget/ImageView;

    .line 438
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->appCompatSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH$1;

    invoke-direct {v1, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f090137

    .line 446
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    .line 447
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH$2;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH$2;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)V

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->ivDelete:Landroid/widget/ImageView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH$3;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH$3;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->action_play:Landroid/widget/ImageView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH$4;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH$4;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/view/View;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$1;)V
    .locals 0

    .line 416
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;)Landroid/widget/ImageView;
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->ivDelete:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->tvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->tvDesc:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->tvDuration:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;)Landroid/widget/SeekBar;
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->appCompatSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;)Landroid/widget/ProgressBar;
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method
