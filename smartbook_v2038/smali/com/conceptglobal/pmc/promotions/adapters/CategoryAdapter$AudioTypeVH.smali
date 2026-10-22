.class Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;
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

.field private ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

.field private progressBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

.field private tvDesc:Landroid/widget/TextView;

.field private tvDuration:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Landroid/view/View;)V
    .locals 2

    .line 639
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    .line 640
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090106

    .line 641
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->icContentType:Landroid/widget/ImageView;

    const v0, 0x7f09050c

    .line 642
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f09050b

    .line 643
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->tvDesc:Landroid/widget/TextView;

    const v0, 0x7f09013b

    .line 644
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->tvDuration:Landroid/widget/TextView;

    const v0, 0x7f09004a

    .line 645
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->action_play:Landroid/widget/ImageView;

    .line 646
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->icContentType:Landroid/widget/ImageView;

    const v1, 0x7f08015e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0900f3

    .line 647
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    const v0, 0x7f0903d2

    .line 648
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->appCompatSeekBar:Landroid/widget/SeekBar;

    const v0, 0x7f09004c

    .line 649
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->progressBar:Landroid/widget/ProgressBar;

    .line 652
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->appCompatSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$1;

    invoke-direct {v1, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f090137

    .line 660
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    .line 661
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$2;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$2;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)V

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 667
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->action_play:Landroid/widget/ImageView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 630
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->tvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;)Landroid/widget/SeekBar;
    .locals 0

    .line 630
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->appCompatSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;)Landroid/widget/ProgressBar;
    .locals 0

    .line 630
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 630
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->tvDesc:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;
    .locals 0

    .line 630
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;
    .locals 0

    .line 630
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 630
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->tvDuration:Landroid/widget/TextView;

    return-object p0
.end method
