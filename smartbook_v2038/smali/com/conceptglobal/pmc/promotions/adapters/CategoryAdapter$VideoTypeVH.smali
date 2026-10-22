.class Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

.field private tvDesc:Landroid/widget/TextView;

.field private tvDuration:Landroid/widget/TextView;

.field private tvTest:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Landroid/view/View;)V
    .locals 1

    .line 315
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    .line 316
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0905ea

    .line 317
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;->ivThumNail:Landroid/widget/ImageView;

    const v0, 0x7f09004a

    .line 318
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;->ivActionPlay:Landroid/widget/ImageView;

    .line 319
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;->ivThumNail:Landroid/widget/ImageView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH$1;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;)Landroid/widget/ImageView;
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;->ivActionPlay:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;->tvTest:Landroid/widget/TextView;

    return-object p0
.end method
