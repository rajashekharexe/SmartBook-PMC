.class public Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;
.super Landroid/widget/BaseAdapter;
.source "FeedBackDraftAdapterCopy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private filteredSegmentType:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

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
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    new-instance v0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->searchString:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->context:Landroid/app/Activity;

    .line 46
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->listVillageNames:Ljava/util/List;

    .line 47
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->mOriginalNames:Ljava/util/List;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->mInflater:Landroid/view/LayoutInflater;

    .line 49
    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->from:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->filteredSegmentType:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->isFrom:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1002(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->searchString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->listVillageNames:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$802(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->listVillageNames:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->mOriginalNames:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$902(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->mOriginalNames:Ljava/util/List;

    return-object p1
.end method

.method private init(Landroid/view/View;I)V
    .locals 2

    .line 124
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    const v0, 0x7f09059e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$302(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 125
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    const v0, 0x7f090559

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$102(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 126
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    const v0, 0x7f090525

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$202(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 127
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    const v0, 0x7f090585

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$502(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 128
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    invoke-static {p2}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$500(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 129
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    const v0, 0x7f090598

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$602(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 130
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    const v0, 0x7f090565

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$402(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 131
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    const v0, 0x7f0902c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$702(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->listVillageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 177
    new-instance v0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$1;-><init>(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 141
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

    .line 62
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0144

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 63
    new-instance p3, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$1;)V

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    .line 64
    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->init(Landroid/view/View;I)V

    .line 65
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    .line 70
    :goto_0
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->listVillageNames:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/VillageDetails;

    .line 73
    :try_start_0
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->from:Ljava/lang/String;

    const-string v1, "Activity"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "NA"

    const-string v2, "null"

    const-string v3, "FeedBack"

    if-nez p3, :cond_3

    :try_start_1
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->isFrom:Ljava/lang/String;

    if-eqz p3, :cond_1

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->searchString:Ljava/lang/String;

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->listVillageNames:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/VillageDetails;->getVillageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->listVillageNames:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/VillageDetails;->getMandalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 98
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->searchString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 100
    :cond_2
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->searchString:Ljava/lang/String;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->listVillageNames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/VillageDetails;->getMandalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 75
    :cond_3
    :goto_1
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->isFrom:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 79
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$200(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 83
    :cond_4
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$200(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    :goto_2
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->listVillageNames:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/VillageDetails;->getVillageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFActiviyName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->listVillageNames:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/VillageDetails;->getMandalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 89
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->searchString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 91
    :cond_5
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->listVillageNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/VillageDetails;->getVillageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFActiviyCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :goto_3
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->listVillageNames:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/VillageDetails;->getPd()I

    move-result p3

    if-lez p3, :cond_6

    .line 104
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 106
    :cond_6
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    :goto_4
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->searchString:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->listVillageNames:Ljava/util/List;

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

    .line 110
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$500(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->searchString:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->listVillageNames:Ljava/util/List;

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

    .line 111
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$600(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->searchString:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->listVillageNames:Ljava/util/List;

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

    .line 113
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->holder:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;->access$700(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 116
    const-string p3, "VillageSelAdapter"

    invoke-static {p3, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0902c9

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->listVillageNames:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/VillageDetails;->getTbv()I

    move-result p1

    if-eqz p1, :cond_1

    .line 156
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->context:Landroid/app/Activity;

    const-class v2, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGENAME()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->listVillageNames:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/VillageDetails;->getVillageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->listVillageNames:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/VillageDetails;->getVillageId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->listVillageNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/VillageDetails;->getVillageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "location1"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->listVillageNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/VillageDetails;->getDistrictName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "location2"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v1, "FROM"

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->from:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v1, "IsFrom"

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->isFrom:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->listVillageNames:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/VillageDetails;->getIsmba()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    const-string v0, "FilteredCustType"

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->filteredSegmentType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->context:Landroid/app/Activity;

    const/high16 v1, 0x14000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 167
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->context:Landroid/app/Activity;

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
