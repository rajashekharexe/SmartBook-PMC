.class Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageTypeVH"
.end annotation


# instance fields
.field private chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

.field private icContentType:Landroid/widget/ImageView;

.field private image_thumbnail:Landroid/widget/ImageView;

.field private ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

.field private tvDesc:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Landroid/view/View;)V
    .locals 2

    .line 555
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    .line 556
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090106

    .line 557
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;->icContentType:Landroid/widget/ImageView;

    const v0, 0x7f09050c

    .line 558
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f09050b

    .line 559
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;->tvDesc:Landroid/widget/TextView;

    const v0, 0x7f09023e

    .line 560
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;->image_thumbnail:Landroid/widget/ImageView;

    const v0, 0x7f0900f3

    .line 561
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;->chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    .line 562
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;->icContentType:Landroid/widget/ImageView;

    const v1, 0x7f080152

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f090137

    .line 563
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;->ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    .line 564
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH$1;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)V

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;->image_thumbnail:Landroid/widget/ImageView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH$2;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH$2;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;->ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;->tvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;->tvDesc:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;->chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    return-object p0
.end method
