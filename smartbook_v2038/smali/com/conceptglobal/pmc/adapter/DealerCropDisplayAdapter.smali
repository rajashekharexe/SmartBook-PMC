.class public Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;
.super Landroid/widget/BaseAdapter;
.source "DealerCropDisplayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private contactID:Ljava/lang/String;

.field private context:Landroid/app/Activity;

.field private holder:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;

.field private listDealerCrops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DealerCropMapping;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private onCropItemClickListener:Lcom/conceptglobal/pmc/interfaces/OnCropItemClickListener;

.field private sales2016:Ljava/lang/String;

.field private sales2017:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Lcom/conceptglobal/pmc/interfaces/OnCropItemClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DealerCropMapping;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/conceptglobal/pmc/interfaces/OnCropItemClickListener;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    new-instance v0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;

    .line 43
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->listDealerCrops:Ljava/util/List;

    .line 44
    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->contactID:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->context:Landroid/app/Activity;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_sales2016()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->sales2016:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_sales2017()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->sales2017:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->onCropItemClickListener:Lcom/conceptglobal/pmc/interfaces/OnCropItemClickListener;

    return-void
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;)Lcom/conceptglobal/pmc/interfaces/OnCropItemClickListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->onCropItemClickListener:Lcom/conceptglobal/pmc/interfaces/OnCropItemClickListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->listDealerCrops:Ljava/util/List;

    return-object p0
.end method

.method private init(Landroid/view/View;I)V
    .locals 1

    .line 107
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;

    const v0, 0x7f090509

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;->access$102(Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 108
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;

    const v0, 0x7f09050a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;->access$202(Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 109
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;

    const v0, 0x7f090514

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;->access$302(Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 111
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;

    const v0, 0x7f090271

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;->access$402(Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 112
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;

    const v0, 0x7f090294

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;->access$602(Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    return-void
.end method

.method private showAlert(Ljava/lang/String;I)V
    .locals 3

    .line 150
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okDiscardDialog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$3;

    invoke-direct {v2, p0, p2}, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$3;-><init>(Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;I)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 166
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDiscardButton()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$2;-><init>(Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;)V

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 173
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 174
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->context:Landroid/app/Activity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 175
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->listDealerCrops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 122
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

    .line 69
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c013b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 70
    new-instance p3, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$1;)V

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;

    .line 71
    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->init(Landroid/view/View;I)V

    .line 72
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;

    .line 77
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p3

    const-string v0, "isExtraSalesinDCM"

    invoke-virtual {p3, v0}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLondMandatory(Ljava/lang/String;)I

    move-result p3

    .line 79
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->listDealerCrops:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DealerCropMapping;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DealerCropMapping;->getCropName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;->access$200(Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->listDealerCrops:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DealerCropMapping;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DealerCropMapping;->getCropSales()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 82
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;->access$300(Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->sales2017:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->listDealerCrops:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DealerCropMapping;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DealerCropMapping;->getCropName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;->access$200(Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->sales2016:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->listDealerCrops:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DealerCropMapping;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DealerCropMapping;->getCropSales()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :try_start_0
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->listDealerCrops:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DealerCropMapping;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DealerCropMapping;->getCropId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getBrandNameQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    .line 87
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    const p3, 0x7f090271

    .line 92
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;->access$400(Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;->access$600(Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p3

    new-instance v0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$1;-><init>(Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;I)V

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 132
    const-string v0, " "

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v2, 0x7f090271

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_deleteConfirmationDialogText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->listDealerCrops:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DealerCropMapping;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DealerCropMapping;->getCropName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->showAlert(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 140
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_deleteConfirmationDialogText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->listDealerCrops:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DealerCropMapping;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DealerCropMapping;->getCropName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->showAlert(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
