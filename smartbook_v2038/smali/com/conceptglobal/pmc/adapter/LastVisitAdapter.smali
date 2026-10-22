.class public Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;
.super Landroid/widget/BaseAdapter;
.source "LastVisitAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private activityName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private holder:Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

.field private keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastVisitData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/LastVisitModel;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field maps:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/LastVisitModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/LinkedHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/LastVisitModel;",
            ">;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/LastVisitModel;",
            ">;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance p2, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$1;)V

    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->holder:Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    .line 25
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->lastVisitData:Ljava/util/List;

    .line 26
    const-string p2, ""

    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->activityName:Ljava/lang/String;

    .line 27
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->keys:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->context:Landroid/content/Context;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->maps:Ljava/util/LinkedHashMap;

    .line 39
    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 40
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->keys:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private init(Landroid/view/View;I)V
    .locals 1

    .line 143
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->holder:Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    const v0, 0x7f090592

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;->access$102(Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 144
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->holder:Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    const v0, 0x7f0905a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;->access$402(Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 145
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->holder:Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    const v0, 0x7f09058d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;->access$202(Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 146
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->holder:Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    const v0, 0x7f0904f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;->access$502(Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 147
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->holder:Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    const v0, 0x7f09058f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;->access$902(Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 148
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->holder:Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    const v0, 0x7f090515

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;->access$1002(Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 149
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->holder:Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    const v0, 0x7f09058e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;->access$702(Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 150
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->holder:Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    const v0, 0x7f090505

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;->access$802(Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 151
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->holder:Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    const v0, 0x7f090590

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;->access$302(Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 152
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->holder:Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    const v0, 0x7f09019e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;->access$602(Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->maps:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->keys:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 60
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00ce

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$1;)V

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->holder:Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    .line 62
    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->init(Landroid/view/View;I)V

    .line 63
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->holder:Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->holder:Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    .line 69
    :goto_0
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->maps:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->keys:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->lastVisitData:Ljava/util/List;

    .line 72
    const-string p1, ""

    move-object p3, p1

    move-object v1, p3

    :goto_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->lastVisitData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 74
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->lastVisitData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, "null"

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->lastVisitData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->lastVisitData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->lastVisitData:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getAttributeName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->lastVisitData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->lastVisitData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->lastVisitData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-nez v0, :cond_5

    .line 100
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->holder:Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_lastVisitDataText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->holder:Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;->access$200(Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_activityLastVisitText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->holder:Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;->access$300(Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_descriptioLastVisitText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->lastVisitData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->lastVisitData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 106
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->holder:Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;->access$400(Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->lastVisitData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_3
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->lastVisitData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getActivityName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->lastVisitData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 109
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->holder:Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;->access$500(Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->lastVisitData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_4
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->lastVisitData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getVisitDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->lastVisitData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getVisitDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 118
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->holder:Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;->access$600(Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->lastVisitData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getVisitDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_5
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->lastVisitData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_6

    .line 124
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->holder:Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;->access$700(Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter;->holder:Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;->access$800(Lcom/conceptglobal/pmc/adapter/LastVisitAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_7
    return-object p2
.end method
