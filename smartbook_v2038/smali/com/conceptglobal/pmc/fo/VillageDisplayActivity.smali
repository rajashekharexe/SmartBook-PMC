.class public Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "VillageDisplayActivity.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "VillageSelectionActivity"


# instance fields
.field private adapter:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

.field private context:Landroid/content/Context;

.field private getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private listVillageData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private listVillageDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private llDrawer:Landroid/widget/LinearLayout;

.field private lvDetails:Landroid/widget/ListView;

.field private lvList:Landroid/widget/ListView;

.field private slidingDrawer:Landroid/widget/SlidingDrawer;

.field private tvSummery:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->listVillageData:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->listVillageDetails:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->tvSummery:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->llDrawer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;)Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->adapter:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;)Landroid/widget/SlidingDrawer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->slidingDrawer:Landroid/widget/SlidingDrawer;

    return-object p0
.end method

.method private getDataFromDB()V
    .locals 4

    .line 126
    const-string v0, "VillageSelectionActivity"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getGetQueryOfvillageDisplay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v3, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDataInHashMapList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->listVillageData:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 129
    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->listVillageData:Ljava/util/List;

    .line 133
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getGetVillageDataDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDataInHashMapList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->listVillageDetails:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 135
    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->listVillageDetails:Ljava/util/List;

    :goto_1
    return-void
.end method

.method private init()V
    .locals 1

    .line 92
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->context:Landroid/content/Context;

    .line 93
    new-instance v0, Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    const v0, 0x7f0902e3

    .line 94
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->lvList:Landroid/widget/ListView;

    const v0, 0x7f0902d9

    .line 95
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->lvDetails:Landroid/widget/ListView;

    const v0, 0x7f090222

    .line 96
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->llDrawer:Landroid/widget/LinearLayout;

    const v0, 0x7f090582

    .line 97
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->tvSummery:Landroid/widget/TextView;

    const v0, 0x7f0903eb

    .line 98
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->slidingDrawer:Landroid/widget/SlidingDrawer;

    return-void
.end method

.method private setActionBar()V
    .locals 4

    .line 77
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 78
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090591

    .line 83
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090581

    .line 84
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    .line 85
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_villWiseSummery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setData()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->listVillageData:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    new-instance v0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->listVillageData:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->adapter:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    .line 144
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->notifyDataSetChanged()V

    .line 145
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->lvList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->adapter:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->context:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noDataFound()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->listVillageDetails:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->lvDetails:Landroid/widget/ListView;

    new-instance v1, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->listVillageDetails:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    return-void
.end method

.method private slidingDrawerSetup()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->tvSummery:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->slidingDrawer:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$1;-><init>(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 113
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->slidingDrawer:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$2;-><init>(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    return-void
.end method


# virtual methods
.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p0, p1, p2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->slidingDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->slidingDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c016a

    .line 62
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->setContentView(I)V

    .line 63
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->setActionBar()V

    .line 64
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->init()V

    .line 65
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->slidingDrawerSetup()V

    .line 66
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->getDataFromDB()V

    .line 67
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->setData()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 158
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0011

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0903c8

    .line 159
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 160
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 161
    invoke-static {v0}, Landroidx/core/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SearchView;

    if-eqz v2, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    const/4 v1, 0x0

    .line 164
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 166
    :cond_0
    new-instance v1, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$3;

    invoke-direct {v1, p0, v2}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$3;-><init>(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;Landroidx/appcompat/widget/SearchView;)V

    invoke-static {v0, v1}, Landroidx/core/view/MenuItemCompat;->setOnActionExpandListener(Landroid/view/MenuItem;Landroidx/core/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 188
    new-instance v0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$4;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$4;-><init>(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;)V

    .line 206
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 207
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 217
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 228
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->slidingDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 220
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->slidingDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->close()V

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->finish()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 245
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    .line 246
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->getDataFromDB()V

    .line 247
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->setData()V

    return-void
.end method
