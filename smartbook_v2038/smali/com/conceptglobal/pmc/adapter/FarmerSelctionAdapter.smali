.class public Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;
.super Landroid/widget/BaseAdapter;
.source "FarmerSelctionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private holder:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;

.field private listFarmerNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOriginalNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation
.end field

.field private searchString:Ljava/lang/String;

.field private villageId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;I)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    new-instance v0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->searchString:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->context:Landroid/content/Context;

    .line 50
    iput p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->villageId:I

    .line 51
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->listFarmerNames:Ljava/util/List;

    .line 52
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->mOriginalNames:Ljava/util/List;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->listFarmerNames:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->listFarmerNames:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->mOriginalNames:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$802(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->searchString:Ljava/lang/String;

    return-object p1
.end method

.method private init(Landroid/view/View;I)V
    .locals 1

    .line 112
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;

    const v0, 0x7f090279

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;->access$502(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 113
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;

    const v0, 0x7f0902c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;->access$202(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 114
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;

    const v0, 0x7f09052f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;->access$102(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 115
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;

    const v0, 0x7f090568

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;->access$302(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 116
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;

    const v0, 0x7f0904f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;->access$402(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 188
    new-instance v0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$1;-><init>(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 135
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

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 75
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c013e

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 76
    new-instance p3, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$1;)V

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;

    .line 77
    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->init(Landroid/view/View;I)V

    .line 78
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;

    .line 83
    :goto_0
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson1()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 84
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->searchString:Ljava/lang/String;

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_1
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result p3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_3

    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result p3

    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    goto :goto_1

    .line 92
    :cond_2
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;->access$200(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p3

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->searchString:Ljava/lang/String;

    const-string v2, "NA"

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 88
    :cond_3
    :goto_1
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;->access$200(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p3

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->searchString:Ljava/lang/String;

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :goto_2
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result p3

    if-eqz p3, :cond_4

    .line 97
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    const-string v4, " , "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_4
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getServerUpdatedStatus()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getServerUpdatedStatus()Ljava/lang/String;

    move-result-object p3

    const-string v1, "false"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 100
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;->access$500(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 102
    :cond_5
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;->access$500(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p3

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    const p3, 0x7f0902c7

    .line 105
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 106
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;->access$200(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0902c7

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result p1

    const/4 v1, 0x1

    const/high16 v2, 0x20000

    const/high16 v3, 0x4000000

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->context:Landroid/content/Context;

    const-class v4, Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-direct {p1, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->villageId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 159
    :cond_2
    :goto_0
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->context:Landroid/content/Context;

    const-class v4, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-direct {p1, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->villageId:I

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v1

    const-string v4, "SEGMENTID"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyName(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "ACTIVITYNAME"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityAssignmentId()I

    move-result v0

    const-string v1, "AssignmentId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public swapItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;)V"
        }
    .end annotation

    .line 232
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->listFarmerNames:Ljava/util/List;

    .line 233
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->mOriginalNames:Ljava/util/List;

    return-void
.end method
