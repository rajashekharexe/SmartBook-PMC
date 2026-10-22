.class public Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DealerLandsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private context:Landroid/app/Activity;

.field private enableCropHybrids:I

.field private farmerID:Ljava/lang/String;

.field private listFarmerLands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DealerLandDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private onItemClickListener:Lcom/conceptglobal/pmc/interfaces/OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Lcom/conceptglobal/pmc/interfaces/OnItemClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DealerLandDetails;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/conceptglobal/pmc/interfaces/OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    const-string v0, "CropDisplayAdapter"

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 37
    iput v1, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->enableCropHybrids:I

    .line 42
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->listFarmerLands:Ljava/util/List;

    .line 43
    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->farmerID:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->context:Landroid/app/Activity;

    .line 45
    iput-object p4, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->onItemClickListener:Lcom/conceptglobal/pmc/interfaces/OnItemClickListener;

    .line 47
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/Queries;->getEnableCropHybrids()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->enableCropHybrids:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    iput v1, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->enableCropHybrids:I

    .line 51
    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->listFarmerLands:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->showAlert(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;)Lcom/conceptglobal/pmc/interfaces/OnItemClickListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->onItemClickListener:Lcom/conceptglobal/pmc/interfaces/OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 3

    .line 155
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 156
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

    new-instance v2, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$5;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$5;-><init>(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 162
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 163
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showAlert(Ljava/lang/String;I)V
    .locals 3

    .line 124
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 125
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

    new-instance v2, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$4;

    invoke-direct {v2, p0, p2}, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$4;-><init>(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;I)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 141
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$3;-><init>(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;)V

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 149
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->context:Landroid/app/Activity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 150
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->listFarmerLands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 29
    check-cast p1, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;I)V
    .locals 2

    .line 83
    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;->access$000(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f090271

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;->access$000(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$1;-><init>(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$2;-><init>(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;->access$400(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->listFarmerLands:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/model/DealerLandDetails;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/DealerLandDetails;->getLandname()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;->access$500(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;->access$600(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;
    .locals 2

    .line 170
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0140

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 171
    new-instance p2, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
