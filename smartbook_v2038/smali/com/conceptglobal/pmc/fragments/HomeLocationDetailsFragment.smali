.class public Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;
.super Landroidx/fragment/app/Fragment;
.source "HomeLocationDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnDiscription:Landroid/widget/Button;

.field private btnLatLng:Landroid/widget/ImageView;

.field private con:Landroid/content/Context;

.field private etDiscription:Landroid/widget/EditText;

.field private mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private response:Ljava/lang/String;

.field private rootView:Landroid/view/View;

.field private saveButton:Landroid/widget/Button;

.field private tvLatitude:Landroid/widget/TextView;

.field private tvLongitude:Landroid/widget/TextView;

.field private urlString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;)Landroid/widget/TextView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->tvLatitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;)Landroid/widget/EditText;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->etDiscription:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;)Landroid/widget/TextView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->tvLongitude:Landroid/widget/TextView;

    return-object p0
.end method

.method private fetchLocation()V
    .locals 5

    .line 151
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 155
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment$2;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment$2;-><init>(Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;)V

    const-string v3, "HomeLocationDetailsFragment"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getData()V
    .locals 0

    return-void
.end method

.method private initialization()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0900af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->saveButton:Landroid/widget/Button;

    .line 89
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->btnLatLng:Landroid/widget/ImageView;

    .line 90
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f09054d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->tvLatitude:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090556

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->tvLongitude:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090521

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->btnDiscription:Landroid/widget/Button;

    .line 93
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f09019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->etDiscription:Landroid/widget/EditText;

    .line 94
    new-instance v0, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 96
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->btnLatLng:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->saveButton:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment$1;-><init>(Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setCustomActionBar()V
    .locals 5

    .line 201
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, ")"

    const-string v3, " )"

    const-string v4, " "

    if-eq v0, v1, :cond_1

    .line 202
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_settingsToolbarText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->con:Landroid/content/Context;

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Settings (Training - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->con:Landroid/content/Context;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->con:Landroid/content/Context;

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_settingsToolbarText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (Training "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->con:Landroid/content/Context;

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 207
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_settingsToolbarText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->con:Landroid/content/Context;

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Settings ( Live "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->con:Landroid/content/Context;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->con:Landroid/content/Context;

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_settingsToolbarText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (Live "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->con:Landroid/content/Context;

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    :goto_0
    return-void
.end method

.method private setData()V
    .locals 0

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900a1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->fetchLocation()V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 73
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->con:Landroid/content/Context;

    const p3, 0x7f0c00c3

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->rootView:Landroid/view/View;

    .line 76
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->initialization()V

    .line 77
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->getData()V

    .line 78
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->setData()V

    .line 80
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 195
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/MainHomePageActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/MainHomePageActivity;->endBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 196
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 189
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 190
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/MainHomePageActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/MainHomePageActivity;->endBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
