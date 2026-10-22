.class public Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;
.super Landroid/widget/BaseAdapter;
.source "StatusVillagesDisplayAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private holder:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;

.field private listActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/StatusVillagesActivityModel;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOriginalNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/StatusVillagesActivityModel;",
            ">;"
        }
    .end annotation
.end field

.field private searchString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/StatusVillagesActivityModel;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    new-instance v0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->searchString:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->listActivities:Ljava/util/List;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->listActivities:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->listActivities:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->mOriginalNames:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->mOriginalNames:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$702(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->searchString:Ljava/lang/String;

    return-object p1
.end method

.method private init(Landroid/view/View;I)V
    .locals 1

    .line 83
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;

    const v0, 0x7f0905f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;->access$102(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 84
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;

    const v0, 0x7f0905f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;->access$202(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 85
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;

    const v0, 0x7f0905f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;->access$302(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 86
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;

    const v0, 0x7f0905f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;->access$402(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->listActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 97
    new-instance v0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$1;-><init>(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 54
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

    .line 65
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c012d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 66
    new-instance p3, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$1;)V

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;

    .line 67
    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->init(Landroid/view/View;I)V

    .line 68
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;

    .line 73
    :goto_0
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->searchString:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->listActivities:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/StatusVillagesActivityModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/StatusVillagesActivityModel;->getVillagename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->listActivities:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/StatusVillagesActivityModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/StatusVillagesActivityModel;->getStatename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->listActivities:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/StatusVillagesActivityModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/StatusVillagesActivityModel;->getDistrictname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->listActivities:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/StatusVillagesActivityModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/StatusVillagesActivityModel;->getTalukaname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;->access$200(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->searchString:Ljava/lang/String;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->listActivities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/StatusVillagesActivityModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/StatusVillagesActivityModel;->getActivityname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;->access$300(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->searchString:Ljava/lang/String;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->listActivities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/StatusVillagesActivityModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/StatusVillagesActivityModel;->getFopendingcount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;->access$400(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->searchString:Ljava/lang/String;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->listActivities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/StatusVillagesActivityModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/StatusVillagesActivityModel;->getApprovedcount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
