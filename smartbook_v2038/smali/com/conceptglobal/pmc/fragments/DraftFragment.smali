.class public Lcom/conceptglobal/pmc/fragments/DraftFragment;
.super Landroidx/fragment/app/Fragment;
.source "DraftFragment.java"


# static fields
.field public static ACTION_REFRESH_LIST:Ljava/lang/String; = "ACTION_REFRESH_LIST"

.field private static final TAG:Ljava/lang/String; = "DraftFragment"

.field private static mFragment:Lcom/conceptglobal/pmc/fragments/DraftFragment;


# instance fields
.field private attributesArry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/DynamicFields;",
            ">;"
        }
    .end annotation
.end field

.field private draftList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;"
        }
    .end annotation
.end field

.field private draftStatus:Ljava/lang/String;

.field dynamicColumnnames:Ljava/lang/StringBuilder;

.field private farmerType:Ljava/lang/String;

.field private fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

.field private isFrom:Ljava/lang/String;

.field private list:Landroidx/recyclerview/widget/RecyclerView;

.field listOfStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;

.field public mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

.field private myReciever:Landroid/content/BroadcastReceiver;

.field private serverUpdateStatus:Ljava/lang/String;

.field private statusCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->draftList:Ljava/util/List;

    .line 54
    const-string v0, "0"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->draftStatus:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->statusCode:Ljava/lang/String;

    .line 56
    const-string v0, "false"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->serverUpdateStatus:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->isFrom:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->listOfStrings:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->attributesArry:Ljava/util/ArrayList;

    .line 253
    new-instance v0, Lcom/conceptglobal/pmc/fragments/DraftFragment$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/DraftFragment$3;-><init>(Lcom/conceptglobal/pmc/fragments/DraftFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->myReciever:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fragments/DraftFragment;)Landroid/app/Activity;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fragments/DraftFragment;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->farmerType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fragments/DraftFragment;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->isFrom:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fragments/DraftFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private initialization(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f09028c

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 140
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 141
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 143
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const v0, 0x7f0901e9

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/ifastscroll/FastScroller;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    return-void
.end method

.method public static newInstance(ILjava/lang/String;)Lcom/conceptglobal/pmc/fragments/DraftFragment;
    .locals 1

    .line 69
    new-instance v0, Lcom/conceptglobal/pmc/fragments/DraftFragment;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/fragments/DraftFragment;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->mFragment:Lcom/conceptglobal/pmc/fragments/DraftFragment;

    .line 70
    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->setDraftStatus(I)V

    .line 71
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 72
    const-string v0, "farmerType"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object p1, Lcom/conceptglobal/pmc/fragments/DraftFragment;->mFragment:Lcom/conceptglobal/pmc/fragments/DraftFragment;

    invoke-virtual {p1, p0}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->setArguments(Landroid/os/Bundle;)V

    .line 74
    sget-object p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->mFragment:Lcom/conceptglobal/pmc/fragments/DraftFragment;

    return-object p0
.end method

.method private setDraftStatus(I)V
    .locals 6

    .line 149
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSwipeTabsInDraftList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->getTab()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "DRAFT"

    const-string v2, "SENT"

    const-string v3, "ALL"

    const-string v4, "NOTSENT"

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    const-string p1, "false"

    const-string v0, "1"

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 151
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->attributesArry:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    .line 153
    const-string v0, "0"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->draftStatus:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->listOfStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 155
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->serverUpdateStatus:Ljava/lang/String;

    .line 156
    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->isFrom:Ljava/lang/String;

    goto :goto_1

    .line 177
    :pswitch_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->attributesArry:Ljava/util/ArrayList;

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    .line 179
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->draftStatus:Ljava/lang/String;

    .line 180
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->statusCode:Ljava/lang/String;

    .line 181
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->listOfStrings:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 182
    const-string p1, "true"

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->serverUpdateStatus:Ljava/lang/String;

    .line 183
    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->isFrom:Ljava/lang/String;

    goto :goto_1

    .line 167
    :pswitch_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->attributesArry:Ljava/util/ArrayList;

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    .line 169
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->draftStatus:Ljava/lang/String;

    .line 170
    const-string p1, "2"

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->statusCode:Ljava/lang/String;

    .line 171
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->listOfStrings:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 172
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->serverUpdateStatus:Ljava/lang/String;

    .line 173
    iput-object v3, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->isFrom:Ljava/lang/String;

    goto :goto_1

    .line 159
    :pswitch_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->attributesArry:Ljava/util/ArrayList;

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    .line 161
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->draftStatus:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->listOfStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 163
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->serverUpdateStatus:Ljava/lang/String;

    .line 164
    iput-object v4, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->isFrom:Ljava/lang/String;

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x56449b35 -> :sswitch_3
        0xfd81 -> :sswitch_2
        0x26c798 -> :sswitch_1
        0x3e48181 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12

    .line 99
    const-string v0, "Village"

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    .line 103
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "Retailer"

    const-string v4, "Dealer"

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    move-object v2, v4

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->farmerType:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDraftColunNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFieldsFirDraft(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->attributesArry:Ljava/util/ArrayList;

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 104
    :goto_2
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 105
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 107
    :cond_3
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 108
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->draftList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 112
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->farmerType:Ljava/lang/String;

    const-string v5, "Farmer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 113
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->draftStatus:Ljava/lang/String;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->serverUpdateStatus:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getDashboardData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    goto/16 :goto_4

    .line 114
    :cond_4
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 115
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->draftStatus:Ljava/lang/String;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->serverUpdateStatus:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getRetailerDashboardData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRetailerBindDataDynamic1(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_4

    .line 116
    :cond_5
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->farmerType:Ljava/lang/String;

    const-string v3, "Planter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 117
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->draftStatus:Ljava/lang/String;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->serverUpdateStatus:Ljava/lang/String;

    const-string v5, "8"

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getDashboardData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    goto :goto_4

    .line 118
    :cond_6
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 119
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->draftStatus:Ljava/lang/String;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->serverUpdateStatus:Ljava/lang/String;

    const-string v5, "4"

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getDashboardData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    goto :goto_4

    .line 120
    :cond_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->farmerType:Ljava/lang/String;

    const-string v0, "Distributor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->farmerType:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 p1, 0x0

    goto :goto_4

    .line 121
    :cond_9
    :goto_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->draftStatus:Ljava/lang/String;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->serverUpdateStatus:Ljava/lang/String;

    const-string v4, "3"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getRetailerDashboardData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRetailerBindDataDynamic1(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 123
    :goto_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->draftList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->listOfStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->listOfStrings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 129
    const-string v0, "DraftFragment"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    :goto_5
    new-instance p1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->listOfStrings:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->farmerType:Ljava/lang/String;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->draftStatus:Ljava/lang/String;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->isFrom:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/registration/DraftList;

    iget v7, v0, Lcom/conceptglobal/pmc/registration/DraftList;->segmentId:I

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v8, v0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSelfAssignment:Z

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v9, v0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTestmonial:Z

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v10, v0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromFeedBack:Z

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v11, v0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    move-object v1, p1

    invoke-direct/range {v1 .. v11}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZ)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    .line 133
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 134
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/ifastscroll/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 88
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->mActivity:Landroid/app/Activity;

    .line 90
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 91
    const-string v0, "farmerType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->farmerType:Ljava/lang/String;

    const/4 p1, 0x1

    .line 92
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->setHasOptionsMenu(Z)V

    .line 93
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->myReciever:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lcom/conceptglobal/pmc/fragments/DraftFragment;->ACTION_REFRESH_LIST:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const v0, 0x7f0d000c

    .line 206
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0903c3

    .line 207
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 208
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "search"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/SearchManager;

    .line 209
    invoke-static {p1}, Landroidx/core/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    if-eqz v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    const/4 p2, 0x0

    .line 212
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 214
    :cond_0
    new-instance p2, Lcom/conceptglobal/pmc/fragments/DraftFragment$1;

    invoke-direct {p2, p0, v0}, Lcom/conceptglobal/pmc/fragments/DraftFragment$1;-><init>(Lcom/conceptglobal/pmc/fragments/DraftFragment;Landroidx/appcompat/widget/SearchView;)V

    invoke-static {p1, p2}, Landroidx/core/view/MenuItemCompat;->setOnActionExpandListener(Landroid/view/MenuItem;Landroidx/core/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 234
    new-instance p1, Lcom/conceptglobal/pmc/fragments/DraftFragment$2;

    invoke-direct {p1, p0}, Lcom/conceptglobal/pmc/fragments/DraftFragment$2;-><init>(Lcom/conceptglobal/pmc/fragments/DraftFragment;)V

    .line 250
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00b4

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 81
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->initialization(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->myReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 265
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 192
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 199
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1
.end method
