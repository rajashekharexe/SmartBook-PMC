.class Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ContentCategoryViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoTypeVH"
.end annotation


# instance fields
.field private chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

.field private icContentType:Landroid/widget/ImageView;

.field private ivActionPlay:Landroid/widget/ImageView;

.field private ivActionPlay2:Landroid/widget/ImageView;

.field private ivCertified:Landroid/widget/ImageView;

.field private ivDelete:Landroid/widget/ImageView;

.field private ivDelete2:Landroid/widget/ImageView;

.field private ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

.field private ivThumNail:Landroid/widget/ImageView;

.field private ivThumNail2:Landroid/widget/ImageView;

.field private llRightView:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

.field private tvBrandName:Landroid/widget/TextView;

.field private tvBrandName2:Landroid/widget/TextView;

.field private tvBrandTile:Landroid/widget/TextView;

.field private tvBrandTile2:Landroid/widget/TextView;

.field private tvCropName:Landroid/widget/TextView;

.field private tvCropName2:Landroid/widget/TextView;

.field private tvCropTitle:Landroid/widget/TextView;

.field private tvCropTitle2:Landroid/widget/TextView;

.field private tvDesc:Landroid/widget/TextView;

.field private tvDesc2:Landroid/widget/TextView;

.field private tvDuration:Landroid/widget/TextView;

.field private tvTest:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private tvType:Landroid/widget/TextView;

.field private tvType2:Landroid/widget/TextView;

.field private tvTypeName:Landroid/widget/TextView;

.field private tvTypeName2:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Landroid/view/View;)V
    .locals 2

    .line 449
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    .line 450
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090267

    .line 451
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->ivThumNail:Landroid/widget/ImageView;

    const v0, 0x7f090268

    .line 452
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->ivThumNail2:Landroid/widget/ImageView;

    const v0, 0x7f09048e

    .line 453
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->tvDesc:Landroid/widget/TextView;

    const v0, 0x7f09048f

    .line 454
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->tvDesc2:Landroid/widget/TextView;

    const v0, 0x7f090485

    .line 455
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->tvCropTitle:Landroid/widget/TextView;

    const v0, 0x7f090486

    .line 456
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->tvCropTitle2:Landroid/widget/TextView;

    const v0, 0x7f090483

    .line 457
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->tvCropName:Landroid/widget/TextView;

    const v0, 0x7f090484

    .line 458
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->tvCropName2:Landroid/widget/TextView;

    const v0, 0x7f09047f

    .line 459
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->tvBrandTile:Landroid/widget/TextView;

    const v0, 0x7f09047e

    .line 460
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->tvBrandTile2:Landroid/widget/TextView;

    const v0, 0x7f09047c

    .line 461
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->tvBrandName:Landroid/widget/TextView;

    const v0, 0x7f09047d

    .line 462
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->tvBrandName2:Landroid/widget/TextView;

    const v0, 0x7f0904e5

    .line 463
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->tvType:Landroid/widget/TextView;

    const v0, 0x7f0904e6

    .line 464
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->tvType2:Landroid/widget/TextView;

    const v0, 0x7f0904e8

    .line 465
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->tvTypeName:Landroid/widget/TextView;

    const v0, 0x7f0904e7

    .line 466
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->tvTypeName2:Landroid/widget/TextView;

    const v0, 0x7f09004a

    .line 467
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->ivActionPlay:Landroid/widget/ImageView;

    const v0, 0x7f09004b

    .line 468
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->ivActionPlay2:Landroid/widget/ImageView;

    const v0, 0x7f0902ab

    .line 469
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->llRightView:Landroid/widget/LinearLayout;

    const v0, 0x7f090257

    .line 470
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->ivDelete:Landroid/widget/ImageView;

    .line 471
    new-instance v1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH$1;

    invoke-direct {v1, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090258

    .line 477
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->ivDelete2:Landroid/widget/ImageView;

    .line 478
    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->access$3600(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 479
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->ivDelete2:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 480
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->ivDelete:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 483
    :cond_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->ivDelete2:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 484
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->ivDelete:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 486
    :goto_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->ivDelete2:Landroid/widget/ImageView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH$2;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH$2;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->ivThumNail:Landroid/widget/ImageView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH$3;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH$3;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->ivThumNail2:Landroid/widget/ImageView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH$4;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH$4;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->tvDesc:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->tvCropTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->tvCropName2:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->tvBrandTile2:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->tvBrandName2:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/ImageView;
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->ivThumNail2:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/ImageView;
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->ivActionPlay2:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->tvCropName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->tvBrandTile:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->tvBrandName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/ImageView;
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->ivThumNail:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/ImageView;
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->ivActionPlay:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/LinearLayout;
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->llRightView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->tvDesc2:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->tvCropTitle2:Landroid/widget/TextView;

    return-object p0
.end method
