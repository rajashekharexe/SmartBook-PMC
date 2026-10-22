.class public Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;
.super Landroid/widget/BaseAdapter;
.source "CropDisplayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private context:Landroid/app/Activity;

.field private enableCropHybrids:I

.field private farmerID:Ljava/lang/String;

.field private holder:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;

.field private listFarmerCrops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FarmerCropMapping;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FarmerCropMapping;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    const-string v0, "CropDisplayAdapter"

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->TAG:Ljava/lang/String;

    .line 30
    new-instance v1, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$1;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;

    const/4 v1, 0x0

    .line 34
    iput v1, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->enableCropHybrids:I

    .line 41
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->listFarmerCrops:Ljava/util/List;

    .line 42
    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->farmerID:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->context:Landroid/app/Activity;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/Queries;->getEnableCropHybrids()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->enableCropHybrids:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    iput v1, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->enableCropHybrids:I

    .line 50
    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->listFarmerCrops:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private init(Landroid/view/View;I)V
    .locals 1

    .line 122
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;

    const v0, 0x7f090511

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;->access$102(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 123
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;

    const v0, 0x7f090513

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;->access$202(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 124
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;

    const v0, 0x7f090514

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;->access$302(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 125
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;

    const v0, 0x7f090271

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;->access$502(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 126
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;

    const v0, 0x7f09051b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;->access$402(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    return-void
.end method

.method private showAlert(Ljava/lang/String;I)V
    .locals 3

    .line 175
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$2;

    invoke-direct {v2, p0, p2}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$2;-><init>(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;I)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 193
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$1;-><init>(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;)V

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 200
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->listFarmerCrops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 146
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
    .locals 5

    const-string v0, "SELECT BrandName  FROM BrandMaster where BrandID=\'"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 72
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c013c

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 73
    new-instance p3, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {p3, p0, v2}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$1;)V

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;

    .line 74
    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->init(Landroid/view/View;I)V

    .line 75
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;

    .line 81
    :goto_0
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->listFarmerCrops:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getCropName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;->access$200(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->listFarmerCrops:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getAcreages()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " (Acres)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget p3, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->enableCropHybrids:I

    const/16 v2, 0x8

    if-nez p3, :cond_1

    .line 89
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;->access$300(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 91
    :cond_1
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;->access$300(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    :goto_1
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->listFarmerCrops:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getHybridId()I

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->listFarmerCrops:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getHybridId()I

    move-result p3

    if-lez p3, :cond_2

    .line 96
    :try_start_0
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;->access$300(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pcodeText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->listFarmerCrops:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getHybridId()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    .line 98
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;->access$300(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pcodeNotAvailText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 102
    :cond_2
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;->access$300(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pcodeNotAvailText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_2
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->listFarmerCrops:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getDos()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->listFarmerCrops:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getDos()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_3

    .line 106
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;->access$400(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->listFarmerCrops:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getDos()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 110
    :cond_3
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;->access$400(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    const p3, 0x7f090271

    .line 114
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 115
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;->access$500(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f090271

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_deleteConfirmationDialogText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->listFarmerCrops:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getCropName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->showAlert(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
