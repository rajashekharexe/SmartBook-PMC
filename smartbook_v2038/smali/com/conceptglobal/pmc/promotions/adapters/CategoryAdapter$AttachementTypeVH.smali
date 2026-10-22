.class Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachementTypeVH"
.end annotation


# instance fields
.field private chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

.field private file_name:Landroid/widget/TextView;

.field private icContentType:Landroid/widget/ImageView;

.field private ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

.field private tvDesc:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Landroid/view/View;)V
    .locals 2

    .line 700
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    .line 701
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090106

    .line 702
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;->icContentType:Landroid/widget/ImageView;

    const v0, 0x7f09050c

    .line 703
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f09050b

    .line 704
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;->tvDesc:Landroid/widget/TextView;

    .line 705
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;->icContentType:Landroid/widget/ImageView;

    const v1, 0x7f080168

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0900f3

    .line 706
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;->chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    const v0, 0x7f0901ed

    .line 707
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;->file_name:Landroid/widget/TextView;

    const v0, 0x7f090137

    .line 708
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;->ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    .line 710
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH$1;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)V

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;->file_name:Landroid/widget/TextView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH$2;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH$2;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 693
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;->tvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 693
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;->tvDesc:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;
    .locals 0

    .line 693
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;->chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;
    .locals 0

    .line 693
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;->ivDownload:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    return-object p0
.end method
