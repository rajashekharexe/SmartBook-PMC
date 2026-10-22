.class public Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;
.super Landroidx/fragment/app/Fragment;
.source "FeedBackListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "param1"

.field private static final ARG_PARAM2:Ljava/lang/String; = "param2"

.field protected static final TAG:Ljava/lang/String; = "FOHome"


# instance fields
.field private adapter:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

.field private addBrandQuery:Ljava/lang/String;

.field private addCropQuery:Ljava/lang/String;

.field private addCustTypeQuery:Ljava/lang/String;

.field private addRadiusQuery:Ljava/lang/String;

.field private brandSearch:Landroid/widget/EditText;

.field private btnClear:Landroid/widget/TextView;

.field private btnGo:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private countSync:I

.field private cropSearch:Landroid/widget/EditText;

.field private custTypeSearch:Landroid/widget/EditText;

.field private dbllatitude:Ljava/lang/Double;

.field private dbllongitude:Ljava/lang/Double;

.field private filterItem:Landroid/view/MenuItem;

.field public filteredCutomerType:Ljava/lang/String;

.field private filtersLL:Landroid/widget/LinearLayout;

.field private getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private hasLocation:Z

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

.field private locationMgr:Landroid/location/LocationManager;

.field private lvList:Landroid/widget/ListView;

.field private mParam1:Ljava/lang/String;

.field private mParam2:Ljava/lang/String;

.field private myLocationListener:Landroid/location/LocationListener;

.field private radiusSearch:Landroid/widget/EditText;

.field private rootView:Landroid/view/View;

.field private tvBrandId:Landroid/widget/TextView;

.field private tvCropId:Landroid/widget/TextView;

.field private tvCustTypeId:Landroid/widget/TextView;

.field private tvPD:Landroid/widget/TextView;

.field private tvScroll:Landroid/widget/TextView;

.field private tvTBV:Landroid/widget/TextView;

.field private tvVC:Landroid/widget/TextView;

.field private tvVillageName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->listVillageNames:Ljava/util/List;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->countSync:I

    .line 65
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->filteredCutomerType:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->addCustTypeQuery:Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->addCropQuery:Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->addBrandQuery:Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->addRadiusQuery:Ljava/lang/String;

    .line 77
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->hasLocation:Z

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;)Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->adapter:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    return-object p0
.end method

.method private checkCountForSync()V
    .locals 2

    .line 257
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getCountForSync()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->countSync:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 259
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->countSync:I

    .line 260
    const-string v1, "FOHome"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private getDataFromDB()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->isFrom:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "FeedBack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getGetAllFeedBackData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActivityNamesForToDo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->listVillageNames:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private init()V
    .locals 4

    .line 133
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->context:Landroid/content/Context;

    .line 134
    new-instance v0, Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 135
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0902e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->lvList:Landroid/widget/ListView;

    .line 136
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->rootView:Landroid/view/View;

    const v1, 0x7f09059f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->tvVillageName:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090586

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->tvTBV:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090566

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->tvPD:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090599

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->tvVC:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->filtersLL:Landroid/widget/LinearLayout;

    .line 142
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->custTypeSearch:Landroid/widget/EditText;

    .line 143
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_customTypeFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090147

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->cropSearch:Landroid/widget/EditText;

    .line 145
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cropFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->cropSearch:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->rootView:Landroid/view/View;

    const v2, 0x7f09013e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->brandSearch:Landroid/widget/EditText;

    .line 148
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_brandFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->brandSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->rootView:Landroid/view/View;

    const v2, 0x7f090144

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->radiusSearch:Landroid/widget/EditText;

    .line 152
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_radiusFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->rootView:Landroid/view/View;

    const v2, 0x7f090488

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->tvCustTypeId:Landroid/widget/TextView;

    .line 156
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->rootView:Landroid/view/View;

    const v2, 0x7f090482

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->tvCropId:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->rootView:Landroid/view/View;

    const v2, 0x7f09047b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->tvBrandId:Landroid/widget/TextView;

    .line 158
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0901fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->btnGo:Landroid/widget/TextView;

    .line 161
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_goFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0901e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->btnClear:Landroid/widget/TextView;

    .line 164
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_clearFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->custTypeSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->cropSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->btnGo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->btnClear:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090578

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->tvScroll:Landroid/widget/TextView;

    .line 176
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_todoAbbrevations()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->tvScroll:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 178
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->tvTBV:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->tvPD:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->tvVC:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;
    .locals 3

    .line 85
    new-instance v0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;-><init>()V

    .line 86
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 87
    const-string v2, "param1"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string p0, "param2"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string p0, "IsFrom"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setData()V
    .locals 7

    .line 227
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->lvList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 236
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->listVillageNames:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 238
    new-instance v0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->listVillageNames:Ljava/util/List;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->mParam1:Ljava/lang/String;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->filteredCutomerType:Ljava/lang/String;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->isFrom:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->adapter:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    .line 239
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->lvList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method private setLayoutData()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->mParam1:Ljava/lang/String;

    const-string v1, "Activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->tvVillageName:Landroid/widget/TextView;

    const-string v1, "ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->tvVillageName:Landroid/widget/TextView;

    const-string v1, "GEOGRAPHY"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->tvTBV:Landroid/widget/TextView;

    const-string v1, "To Be Completed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->tvPD:Landroid/widget/TextView;

    const-string v1, "Not Synced"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setSueveyLayoutData()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->tvVillageName:Landroid/widget/TextView;

    const-string v1, "Complaints"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->tvTBV:Landroid/widget/TextView;

    const-string v1, "Total Complaints"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->tvPD:Landroid/widget/TextView;

    const-string v1, "Resolution Pending"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x3

    const v2, 0x7f1101b9

    const-string v3, " "

    const-string v4, "FOHome"

    const-string v5, "Resolution Pending"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 274
    :sswitch_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/Style;->INFO:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p1, v5, v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    goto/16 :goto_0

    .line 270
    :sswitch_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "Total Complaints"

    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->INFO:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p1, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    goto/16 :goto_0

    .line 278
    :sswitch_2
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/Style;->INFO:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p1, v5, v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    goto/16 :goto_0

    .line 388
    :sswitch_3
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->setData()V

    goto/16 :goto_0

    .line 393
    :sswitch_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->custTypeSearch:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->brandSearch:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->cropSearch:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->tvCropId:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->tvCustTypeId:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->tvBrandId:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->filteredCutomerType:Ljava/lang/String;

    .line 404
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->setData()V

    goto/16 :goto_0

    .line 283
    :sswitch_5
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_customTypeFilterText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getActivitySegments()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->tvCustTypeId:Landroid/widget/TextView;

    move-object v5, v0

    move-object v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 284
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 285
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 286
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 288
    invoke-static {v4, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 293
    :sswitch_6
    :try_start_1
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cropFilterText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getCropNames()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->tvCropId:Landroid/widget/TextView;

    move-object v5, v0

    move-object v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 294
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 295
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 296
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 298
    invoke-static {v4, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090147 -> :sswitch_6
        0x7f090148 -> :sswitch_5
        0x7f0901e7 -> :sswitch_4
        0x7f0901fb -> :sswitch_3
        0x7f090566 -> :sswitch_2
        0x7f090586 -> :sswitch_1
        0x7f090599 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 117
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->mParam1:Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->mParam2:Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "IsFrom"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->isFrom:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    const v0, 0x7f0d0011

    .line 444
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0901fd

    .line 445
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->filterItem:Landroid/view/MenuItem;

    const v0, 0x7f090432

    .line 446
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 447
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->filterItem:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 448
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0903c8

    .line 460
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 461
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 462
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "search"

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 463
    invoke-static {v0}, Landroidx/core/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/SearchView;

    if-eqz v3, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 466
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 469
    :cond_0
    new-instance v1, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment$1;

    invoke-direct {v1, p0, v3}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment$1;-><init>(Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;Landroidx/appcompat/widget/SearchView;)V

    invoke-static {v0, v1}, Landroidx/core/view/MenuItemCompat;->setOnActionExpandListener(Landroid/view/MenuItem;Landroidx/core/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 488
    new-instance v0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment$2;-><init>(Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;)V

    .line 504
    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 505
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 98
    iget-object p3, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->rootView:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c0169

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->rootView:Landroid/view/View;

    :cond_0
    const/4 p1, 0x1

    .line 101
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->setHasOptionsMenu(Z)V

    .line 102
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->init()V

    .line 103
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->isFrom:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string p2, "FeedBack"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 104
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->setSueveyLayoutData()V

    goto :goto_0

    .line 106
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->setLayoutData()V

    .line 108
    :goto_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->getDataFromDB()V

    .line 109
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->setData()V

    .line 110
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->checkCountForSync()V

    .line 112
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 416
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const v1, 0x7f0901fd

    if-eq v0, v1, :cond_1

    const v1, 0x7f090432

    if-eq v0, v1, :cond_0

    .line 437
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 422
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/activity/TargetVsPlanSummaryActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 423
    const-string v0, "title"

    const-string v1, "Target&PlanSummary"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 429
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->filtersLL:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f080146

    .line 430
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 432
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f080145

    .line 433
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_3
    :goto_0
    return v2

    .line 418
    :cond_4
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return v2
.end method

.method public onResume()V
    .locals 0

    .line 249
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 250
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->getDataFromDB()V

    .line 251
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->setData()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 128
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    return-void
.end method
