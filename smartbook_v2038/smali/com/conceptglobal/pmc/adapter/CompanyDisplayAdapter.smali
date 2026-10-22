.class public Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;
.super Landroid/widget/BaseAdapter;
.source "CompanyDisplayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private contactID:Ljava/lang/String;

.field private context:Landroid/app/Activity;

.field private holder:Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;

.field private listDealerCompanies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DealerCompanyMapping;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DealerCompanyMapping;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    new-instance v0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;

    .line 39
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;->listDealerCompanies:Ljava/util/List;

    .line 40
    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;->contactID:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;->context:Landroid/app/Activity;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;->listDealerCompanies:Ljava/util/List;

    return-object p0
.end method

.method private init(Landroid/view/View;I)V
    .locals 1

    .line 81
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;

    const v0, 0x7f090509

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;->access$102(Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 82
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;

    const v0, 0x7f09050a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;->access$202(Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 83
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;

    const v0, 0x7f090271

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;->access$302(Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    return-void
.end method

.method private showAlert(Ljava/lang/String;I)V
    .locals 3

    .line 132
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 133
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

    new-instance v2, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$2;

    invoke-direct {v2, p0, p2}, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$2;-><init>(Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;I)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 148
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDiscardButton()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$1;-><init>(Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;)V

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 156
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;->context:Landroid/app/Activity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 157
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;->listDealerCompanies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 101
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
    .locals 2

    if-nez p2, :cond_0

    .line 62
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c013b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 63
    new-instance p3, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$1;)V

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;

    .line 64
    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;->init(Landroid/view/View;I)V

    .line 65
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;

    .line 70
    :goto_0
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;->listDealerCompanies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DealerCompanyMapping;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DealerCompanyMapping;->getCompanyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;->access$200(Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;->listDealerCompanies:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DealerCompanyMapping;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DealerCompanyMapping;->getCompanySales()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090271

    .line 74
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;->access$300(Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f090271

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 125
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

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;->listDealerCompanies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DealerCompanyMapping;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DealerCompanyMapping;->getCompanyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;->showAlert(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
