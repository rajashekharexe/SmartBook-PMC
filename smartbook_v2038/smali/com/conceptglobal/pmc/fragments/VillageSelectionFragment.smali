.class public Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;
.super Landroidx/fragment/app/Fragment;
.source "VillageSelectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "VillageSelectionActivity"


# instance fields
.field private adapter:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

.field private context:Landroid/content/Context;

.field private countSync:I

.field private getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private listVillageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/VillageDetails;",
            ">;"
        }
    .end annotation
.end field

.field private lvList:Landroid/widget/ListView;

.field private tvPD:Landroid/widget/TextView;

.field private tvScroll:Landroid/widget/TextView;

.field private tvTBV:Landroid/widget/TextView;

.field private tvVC:Landroid/widget/TextView;

.field private tvVillageName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->listVillageNames:Ljava/util/List;

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->countSync:I

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;)Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->adapter:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    return-object p0
.end method

.method private checkCountForSync()V
    .locals 2

    .line 121
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getCountForSync()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->countSync:I

    .line 122
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->supportInvalidateOptionsMenu()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 124
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->countSync:I

    .line 125
    const-string v1, "VillageSelectionActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private getDataFromDB()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getGetAllVillagesData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getVillageNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->listVillageNames:Ljava/util/List;

    return-void
.end method

.method private init()V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->context:Landroid/content/Context;

    .line 81
    new-instance v0, Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 82
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0902e4

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->lvList:Landroid/widget/ListView;

    .line 83
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f09059f

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->tvVillageName:Landroid/widget/TextView;

    .line 84
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f090586

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->tvTBV:Landroid/widget/TextView;

    .line 85
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f090566

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->tvPD:Landroid/widget/TextView;

    .line 86
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f090599

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->tvVC:Landroid/widget/TextView;

    .line 88
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f090578

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->tvScroll:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 90
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->tvTBV:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->tvPD:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->tvVC:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setData()V
    .locals 8

    .line 110
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->listVillageNames:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 111
    new-instance v0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->listVillageNames:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, ""

    const-string v5, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->adapter:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    .line 112
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->lvList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_contactReportManager()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_contactReportManager()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    sget-object v2, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {v0, v1, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    :goto_1
    return-void
.end method

.method private setLayoutData()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->tvVillageName:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_villageText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->tvTBV:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_tbvColumnText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->tvPD:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pdColumnText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->tvVC:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100237

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090566

    const-string v1, ""

    if-eq p1, v0, :cond_4

    const v0, 0x7f090586

    if-eq p1, v0, :cond_2

    const v0, 0x7f090599

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draftsHint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draftsHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/Style;->INFO:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p1, v1, v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_tbvScrollText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_tbvScrollText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/Style;->INFO:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p1, v1, v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    goto :goto_0

    .line 140
    :cond_4
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pendingDataHint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pendingDataHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/Style;->INFO:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p1, v1, v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 150
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0015

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0903bf

    .line 151
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "search"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 153
    invoke-static {v0}, Landroidx/core/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SearchView;

    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    const/4 v1, 0x0

    .line 156
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 158
    :cond_0
    iget v1, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->countSync:I

    const v3, 0x7f090413

    if-nez v1, :cond_1

    .line 159
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v3, 0x7f08010d

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 161
    :cond_1
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v3, 0x7f08010e

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 163
    :goto_0
    new-instance v1, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment$1;

    invoke-direct {v1, p0, v2}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment$1;-><init>(Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;Landroidx/appcompat/widget/SearchView;)V

    invoke-static {v0, v1}, Landroidx/core/view/MenuItemCompat;->setOnActionExpandListener(Landroid/view/MenuItem;Landroidx/core/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 183
    new-instance v0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment$2;-><init>(Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;)V

    .line 199
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 200
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0169

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 206
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_6

    const v1, 0x7f0903e0

    const/high16 v2, 0x4000000

    if-eq v0, v1, :cond_4

    const v1, 0x7f090413

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->countSync:I

    if-eqz v0, :cond_1

    .line 213
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/SyncPMC;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyfromwhichclass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fromvillageselectionfragment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->startActivity(Landroid/content/Intent;)V

    .line 216
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_1

    .line 221
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->context:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/SetupPMC;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->startActivity(Landroid/content/Intent;)V

    .line 222
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_1

    .line 225
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cannotSync()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cannotSync()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, ""

    :goto_0
    sget-object v2, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {v0, v1, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    goto :goto_1

    .line 229
    :cond_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->listVillageNames:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 230
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->context:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 232
    :cond_5
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100257

    sget-object v2, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {v0, v1, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;ILde/keyboardsurfer/android/widget/crouton/Style;)V

    .line 238
    :goto_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 208
    :cond_6
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onStart()V
    .locals 0

    .line 70
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 71
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->init()V

    .line 72
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->setLayoutData()V

    .line 73
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->getDataFromDB()V

    .line 74
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->setData()V

    .line 75
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->checkCountForSync()V

    return-void
.end method
