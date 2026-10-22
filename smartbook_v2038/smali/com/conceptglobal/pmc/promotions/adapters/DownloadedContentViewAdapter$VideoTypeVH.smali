.class Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DownloadedContentViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoTypeVH"
.end annotation


# instance fields
.field private chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

.field private icContentType:Landroid/widget/ImageView;

.field private ivActionPlay:Landroid/widget/ImageView;

.field private ivDelete:Landroid/widget/ImageView;

.field private ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

.field private ivThumNail:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

.field private tvDesc:Landroid/widget/TextView;

.field private tvDuration:Landroid/widget/TextView;

.field private tvTest:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/view/View;)V
    .locals 1

    .line 298
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    .line 299
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0900f3

    .line 300
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    const v0, 0x7f09059b

    .line 301
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f09059a

    .line 302
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->tvDesc:Landroid/widget/TextView;

    const v0, 0x7f0905ea

    .line 303
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->ivThumNail:Landroid/widget/ImageView;

    const v0, 0x7f0904f2

    .line 304
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->tvTest:Landroid/widget/TextView;

    const v0, 0x7f09004a

    .line 305
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->ivActionPlay:Landroid/widget/ImageView;

    const v0, 0x7f09013b

    .line 306
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->tvDuration:Landroid/widget/TextView;

    const v0, 0x7f090106

    .line 307
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->icContentType:Landroid/widget/ImageView;

    const v0, 0x7f090137

    .line 308
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    const v0, 0x7f090120

    .line 309
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->ivDelete:Landroid/widget/ImageView;

    .line 310
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->ivActionPlay:Landroid/widget/ImageView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->ivDelete:Landroid/widget/ImageView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$2;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$2;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->tvTest:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;)Landroid/widget/ImageView;
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->ivDelete:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->tvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->tvDesc:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->tvDuration:Landroid/widget/TextView;

    return-object p0
.end method
