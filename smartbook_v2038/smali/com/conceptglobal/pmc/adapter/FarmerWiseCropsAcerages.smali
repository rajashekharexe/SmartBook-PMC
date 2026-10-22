.class public Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;
.super Landroid/widget/BaseAdapter;
.source "FarmerWiseCropsAcerages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;
    }
.end annotation


# instance fields
.field adapter:Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;

.field private listCropAcerages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FarmerCropAcerages;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field private mInflate:Landroid/view/LayoutInflater;

.field private pos:I

.field private searchString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FarmerCropAcerages;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;->searchString:Ljava/lang/String;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;->pos:I

    .line 31
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;->listCropAcerages:Ljava/util/List;

    .line 33
    iput-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;->adapter:Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;->mInflate:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;->listCropAcerages:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;->listCropAcerages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 63
    new-instance p2, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$1;)V

    .line 64
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;->mInflate:Landroid/view/LayoutInflater;

    const v1, 0x7f0c007d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f090111

    .line 65
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;->access$102(Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v0, 0x7f090454

    .line 66
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;->access$202(Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0901b6

    .line 67
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;->access$302(Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;Landroid/widget/EditText;)Landroid/widget/EditText;

    const v0, 0x7f0901b5

    .line 68
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;->access$402(Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 69
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 73
    :goto_0
    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;->access$502(Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;I)I

    .line 76
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;->listCropAcerages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;->getOldRecordFlag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;->listCropAcerages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;->getNewRecordFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-static {p2}, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 79
    :cond_1
    invoke-static {p2}, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060138

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 82
    :goto_1
    invoke-static {p2}, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;->access$200(Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;->searchString:Ljava/lang/String;

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;->listCropAcerages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;->getCropName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-static {p2}, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;->searchString:Ljava/lang/String;

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;->listCropAcerages:Ljava/util/List;

    .line 85
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;->getAceragesOld()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-static {p2}, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;->listCropAcerages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;->getAceragesNew()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;->listCropAcerages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;->getAceragesNew()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 90
    invoke-static {p2}, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 95
    :cond_2
    invoke-static {p2}, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;)Landroid/widget/EditText;

    move-result-object p1

    new-instance v0, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$1;

    invoke-direct {v0, p0, p2}, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$1;-><init>(Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object p3
.end method
