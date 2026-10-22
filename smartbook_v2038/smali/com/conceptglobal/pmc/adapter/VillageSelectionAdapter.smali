.class public Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;
.super Landroid/widget/BaseAdapter;
.source "VillageSelectionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private SVIDs:Ljava/lang/String;

.field private context:Landroid/app/Activity;

.field private filteredSegmentType:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

.field private isFrom:Ljava/lang/String;

.field private listVillageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/VillageDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOriginalNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/VillageDetails;",
            ">;"
        }
    .end annotation
.end field

.field private searchString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/VillageDetails;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    new-instance v0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->searchString:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->context:Landroid/app/Activity;

    .line 46
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->listVillageNames:Ljava/util/List;

    .line 47
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->mOriginalNames:Ljava/util/List;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 49
    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->from:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->filteredSegmentType:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->isFrom:Ljava/lang/String;

    .line 52
    iput-object p6, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->SVIDs:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1002(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->searchString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->listVillageNames:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$802(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->listVillageNames:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->mOriginalNames:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$902(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->mOriginalNames:Ljava/util/List;

    return-object p1
.end method

.method private init(Landroid/view/View;I)V
    .locals 2

    .line 119
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    const v0, 0x7f09059e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$102(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 120
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    const v0, 0x7f090559

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$202(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 121
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    const v0, 0x7f090525

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$302(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 122
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    const v0, 0x7f090585

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$502(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 123
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    invoke-static {p2}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$500(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$200(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 124
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    const v0, 0x7f090598

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$602(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 125
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    const v0, 0x7f090565

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$402(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 126
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    const v0, 0x7f0902c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$702(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->listVillageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 172
    new-instance v0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$1;-><init>(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 136
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
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 63
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0144

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 64
    new-instance p3, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$1;)V

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    .line 65
    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->init(Landroid/view/View;I)V

    .line 66
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    .line 72
    :goto_0
    :try_start_0
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->from:Ljava/lang/String;

    const-string v1, "Activity"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "NA"

    const-string v2, "null"

    const-string v3, "Survey"

    if-nez p3, :cond_3

    :try_start_1
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->isFrom:Ljava/lang/String;

    if-eqz p3, :cond_1

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    .line 91
    :cond_1
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->searchString:Ljava/lang/String;

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->listVillageNames:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/VillageDetails;->getVillageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->listVillageNames:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/VillageDetails;->getMandalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 93
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$200(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->searchString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 95
    :cond_2
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$200(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->searchString:Ljava/lang/String;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->listVillageNames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/VillageDetails;->getMandalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 74
    :cond_3
    :goto_1
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->isFrom:Ljava/lang/String;

    if-eqz p3, :cond_4

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 75
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->listVillageNames:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/VillageDetails;->getVillageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSurveyActiviyName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$200(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$300(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 79
    :cond_4
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$200(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$300(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->listVillageNames:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/VillageDetails;->getVillageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->listVillageNames:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/VillageDetails;->getpackageNameName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :goto_2
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->listVillageNames:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/VillageDetails;->getMandalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 84
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$200(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->searchString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 86
    :cond_5
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$200(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->listVillageNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/VillageDetails;->getVillageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_3
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->listVillageNames:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/VillageDetails;->getPd()I

    move-result p3

    if-lez p3, :cond_6

    .line 99
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$400(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 101
    :cond_6
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$400(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    :goto_4
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$400(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->searchString:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->listVillageNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/VillageDetails;->getPd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$500(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->searchString:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->listVillageNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/VillageDetails;->getTbv()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$600(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->searchString:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->listVillageNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/VillageDetails;->getVc()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0902c9

    .line 108
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 109
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;->access$700(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 111
    const-string p3, "VillageSelAdapter"

    invoke-static {p3, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0902c9

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->listVillageNames:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/VillageDetails;->getTbv()I

    move-result p1

    if-eqz p1, :cond_1

    .line 150
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->context:Landroid/app/Activity;

    const-class v2, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGENAME()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->listVillageNames:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/VillageDetails;->getVillageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->listVillageNames:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/VillageDetails;->getVillageId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->listVillageNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/VillageDetails;->getVillageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "location1"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->listVillageNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/VillageDetails;->getDistrictName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "location2"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v1, "FROM"

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->from:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v1, "IsFrom"

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->isFrom:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->listVillageNames:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/VillageDetails;->getIsmba()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const-string v0, "FilteredCustType"

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->filteredSegmentType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v0, "SVIDS"

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->SVIDs:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->context:Landroid/app/Activity;

    const/high16 v1, 0x14000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 162
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->context:Landroid/app/Activity;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noDataFound()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noDataFound()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p1, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    :goto_1
    return-void
.end method
