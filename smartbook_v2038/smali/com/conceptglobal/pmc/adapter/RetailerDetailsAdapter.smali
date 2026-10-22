.class public Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;
.super Landroid/widget/BaseAdapter;
.source "RetailerDetailsAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static mDuplicate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/PmcRetailersModel;",
            ">;"
        }
    .end annotation
.end field

.field public static mOriginalNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/PmcRetailersModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private holder:Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$ViewHolder;

.field private mInflater:Landroid/view/LayoutInflater;

.field private retailerNamesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/PmcRetailersModel;",
            ">;"
        }
    .end annotation
.end field

.field private searchString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->mDuplicate:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/PmcRetailersModel;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    new-instance v0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->holder:Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$ViewHolder;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->searchString:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->retailerNamesList:Ljava/util/List;

    .line 31
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    sput-object p2, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->mDuplicate:Ljava/util/List;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->retailerNamesList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->retailerNamesList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$302(Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->searchString:Ljava/lang/String;

    return-object p1
.end method

.method private init(Landroid/view/View;I)V
    .locals 1

    .line 57
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->holder:Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$ViewHolder;

    const v0, 0x7f090589

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$ViewHolder;->access$102(Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->retailerNamesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 77
    new-instance v0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$1;-><init>(Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->retailerNamesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 72
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->retailerNamesList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 43
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0141

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 44
    new-instance p3, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$1;)V

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->holder:Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$ViewHolder;

    .line 45
    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->init(Landroid/view/View;I)V

    .line 46
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->holder:Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$ViewHolder;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$ViewHolder;

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->holder:Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$ViewHolder;

    .line 51
    :goto_0
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->holder:Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->searchString:Ljava/lang/String;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->retailerNamesList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/PmcRetailersModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/PmcRetailersModel;->getContactName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
