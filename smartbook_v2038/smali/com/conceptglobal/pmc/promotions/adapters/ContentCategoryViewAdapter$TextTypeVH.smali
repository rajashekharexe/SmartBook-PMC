.class Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ContentCategoryViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

.field private titleTv:Landroid/widget/TextView;

.field private tvContent:Landroid/widget/TextView;

.field private tvDesc:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Landroid/view/View;)V
    .locals 1

    .line 669
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    .line 670
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090106

    .line 671
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->icContentType:Landroid/widget/ImageView;

    const v0, 0x7f09050c

    .line 672
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f09050b

    .line 673
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->tvDesc:Landroid/widget/TextView;

    const v0, 0x7f090101

    .line 674
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->tvContent:Landroid/widget/TextView;

    const v0, 0x7f0900f3

    .line 675
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    const v0, 0x7f090357

    .line 677
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->previewGroup:Landroidx/cardview/widget/CardView;

    const v0, 0x7f090244

    .line 678
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->imgPreviewIv:Landroid/widget/ImageView;

    const v0, 0x7f09045b

    .line 679
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->titleTv:Landroid/widget/TextView;

    const v0, 0x7f090122

    .line 680
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->descTv:Landroid/widget/TextView;

    const v0, 0x7f0903e7

    .line 681
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->siteTv:Landroid/widget/TextView;

    const v0, 0x7f09035b

    .line 682
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->progress:Landroid/widget/ProgressBar;

    .line 683
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->tvContent:Landroid/widget/TextView;

    const/4 v0, 0x5

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 684
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->previewGroup:Landroidx/cardview/widget/CardView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH$1;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)V

    invoke-virtual {p2, v0}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->tvContent:Landroid/widget/TextView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH$2;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH$2;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->tvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->tvDesc:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->tvContent:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)Landroid/widget/ImageView;
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->icContentType:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 660
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->loadHtml(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)Landroid/widget/ProgressBar;
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->progress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)Landroidx/cardview/widget/CardView;
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->previewGroup:Landroidx/cardview/widget/CardView;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->titleTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)Landroid/widget/TextView;
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->descTv:Landroid/widget/TextView;

    return-object p0
.end method

.method private loadHtml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 703
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->access$3700(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c6

    const/4 v2, 0x0

    .line 704
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090540

    .line 706
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 707
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    .line 708
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x3f

    .line 710
    invoke-static {p2, v2}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    :goto_0
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->access$3700(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 713
    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 714
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 716
    new-instance p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH$3;

    invoke-direct {p1, p0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH$3;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)V

    const-string v0, "Close"

    invoke-virtual {p2, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 722
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 723
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const v0, 0x7f110124

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 724
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
