.class public Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "FarmerRegistrationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$DecimalDigitsInputFilter;
    }
.end annotation


# static fields
.field private static SELECTED_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Farmer Registration Activity"


# instance fields
.field private acreas2Button:Landroid/widget/Button;

.field private acres1Button:Landroid/widget/Button;

.field private acres1EditText:Landroid/widget/EditText;

.field private acres2EditText:Landroid/widget/EditText;

.field private ageButton:Landroid/widget/Button;

.field private ageEditText:Landroid/widget/EditText;

.field private care_of_noButton:Landroid/widget/Button;

.field private care_of_noEditText:Landroid/widget/EditText;

.field characterSpaceFullStopFilter:Landroid/text/InputFilter;

.field private context:Landroid/content/Context;

.field private cultivatedLandButton:Landroid/widget/Button;

.field private cultivatedLandEditText:Landroid/widget/EditText;

.field private currentEditText:Landroid/widget/EditText;

.field private districtButton:Landroid/widget/Button;

.field private districtEditText:Landroid/widget/EditText;

.field private farmerNameButton:Landroid/widget/Button;

.field private farmerNameEditText:Landroid/widget/EditText;

.field private farmerTypeButton:Landroid/widget/Button;

.field private farmerTypeEditText:Landroid/widget/EditText;

.field private fatherNameButton:Landroid/widget/Button;

.field private fatherNameEditText:Landroid/widget/EditText;

.field filter:Landroid/text/InputFilter;

.field private getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private hybrid1Button:Landroid/widget/Button;

.field private hybrid1EditText:Landroid/widget/EditText;

.field private hybrid2Button:Landroid/widget/Button;

.field private hybrid2EditText:Landroid/widget/EditText;

.field private intentGetData:Landroid/content/Intent;

.field private irrigatedLandButton:Landroid/widget/Button;

.field private irrigatedLandEditText:Landroid/widget/EditText;

.field private landLineButton:Landroid/widget/Button;

.field private landLineEditText:Landroid/widget/EditText;

.field private leasedCultivatedButton:Landroid/widget/Button;

.field private leasedCultivatedEditText:Landroid/widget/EditText;

.field private mobileNoButton:Landroid/widget/Button;

.field private mobileNoEditText:Landroid/widget/EditText;

.field private ownedCultivatedButton:Landroid/widget/Button;

.field private ownedCultivatedEditText:Landroid/widget/EditText;

.field private preferredRetailerButton:Landroid/widget/Button;

.field private preferredRetailerEditText:Landroid/widget/EditText;

.field private queries:Lcom/conceptglobal/pmc/common/Queries;

.field private rainFedLandButton:Landroid/widget/Button;

.field private rainFedLandEditText:Landroid/widget/EditText;

.field private season1Button:Landroid/widget/Button;

.field private season1EditText:Landroid/widget/EditText;

.field private season2Button:Landroid/widget/Button;

.field private season2EditText:Landroid/widget/EditText;

.field private socialStatusButton:Landroid/widget/Button;

.field private socialStatusEditText:Landroid/widget/EditText;

.field private stateButton:Landroid/widget/Button;

.field private stateEditText:Landroid/widget/EditText;

.field private surNameButton:Landroid/widget/Button;

.field private surNameEditText:Landroid/widget/EditText;

.field private tabHost:Landroid/widget/TabHost;

.field private talukaButton:Landroid/widget/Button;

.field private talukaEditText:Landroid/widget/EditText;

.field private top1CropButton:Landroid/widget/Button;

.field private top1CropEditText:Landroid/widget/EditText;

.field private top2CropButton:Landroid/widget/Button;

.field private top2CropEditText:Landroid/widget/EditText;

.field private villageButton:Landroid/widget/Button;

.field private villageEditText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 585
    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$5;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$5;-><init>(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->characterSpaceFullStopFilter:Landroid/text/InputFilter;

    .line 620
    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$6;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$6;-><init>(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->filter:Landroid/text/InputFilter;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;)Landroid/widget/EditText;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->currentEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$002(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->currentEditText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;)Landroid/widget/EditText;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->farmerNameEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;)Landroid/widget/EditText;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->fatherNameEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;)Landroid/widget/EditText;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->rainFedLandEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method private addTab(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    .line 233
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 234
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0c0135

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090459

    .line 235
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 236
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090230

    .line 237
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 238
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 240
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10023c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const p2, 0x7f090414

    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10023d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f090415

    .line 243
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10023e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f090416

    .line 245
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 246
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10023f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f090417

    .line 247
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 248
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f100240

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f090418

    .line 249
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 251
    :cond_4
    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 253
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method private getData()V
    .locals 0

    return-void
.end method

.method private initialization()V
    .locals 2

    .line 259
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->intentGetData:Landroid/content/Intent;

    .line 260
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    .line 261
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    const v0, 0x7f09037b

    .line 262
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09053d

    .line 264
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->stateButton:Landroid/widget/Button;

    .line 265
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09053a

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->districtButton:Landroid/widget/Button;

    .line 266
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09053e

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->talukaButton:Landroid/widget/Button;

    .line 267
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09053f

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->villageButton:Landroid/widget/Button;

    .line 269
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901ce

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->stateEditText:Landroid/widget/EditText;

    .line 270
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09019f

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->districtEditText:Landroid/widget/EditText;

    .line 271
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901d1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->talukaEditText:Landroid/widget/EditText;

    .line 272
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901d4

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->villageEditText:Landroid/widget/EditText;

    .line 275
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09055b

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->farmerNameButton:Landroid/widget/Button;

    .line 276
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090584

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->surNameButton:Landroid/widget/Button;

    .line 277
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090534

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->fatherNameButton:Landroid/widget/Button;

    .line 278
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09055a

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->mobileNoButton:Landroid/widget/Button;

    .line 279
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09054a

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->landLineButton:Landroid/widget/Button;

    .line 280
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09050d

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->care_of_noButton:Landroid/widget/Button;

    .line 281
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0904fa

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->ageButton:Landroid/widget/Button;

    .line 283
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901b4

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->farmerNameEditText:Landroid/widget/EditText;

    .line 284
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901d0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->surNameEditText:Landroid/widget/EditText;

    .line 285
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901a2

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->fatherNameEditText:Landroid/widget/EditText;

    .line 286
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901b0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->mobileNoEditText:Landroid/widget/EditText;

    .line 287
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901a9

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->landLineEditText:Landroid/widget/EditText;

    .line 288
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090190

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->care_of_noEditText:Landroid/widget/EditText;

    .line 289
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09018b

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->ageEditText:Landroid/widget/EditText;

    .line 292
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090519

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->cultivatedLandButton:Landroid/widget/Button;

    .line 293
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090560

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->ownedCultivatedButton:Landroid/widget/Button;

    .line 294
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090550

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->leasedCultivatedButton:Landroid/widget/Button;

    .line 295
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090546

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->irrigatedLandButton:Landroid/widget/Button;

    .line 296
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09056c

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->rainFedLandButton:Landroid/widget/Button;

    .line 298
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090198

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->cultivatedLandEditText:Landroid/widget/EditText;

    .line 299
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901b7

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->ownedCultivatedEditText:Landroid/widget/EditText;

    .line 300
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901aa

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->leasedCultivatedEditText:Landroid/widget/EditText;

    .line 301
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901a7

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->irrigatedLandEditText:Landroid/widget/EditText;

    .line 302
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901c1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->rainFedLandEditText:Landroid/widget/EditText;

    .line 305
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090593

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->top1CropButton:Landroid/widget/Button;

    .line 306
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090579

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->season1Button:Landroid/widget/Button;

    .line 307
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09053b

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->hybrid1Button:Landroid/widget/Button;

    .line 308
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0904f4

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->acres1Button:Landroid/widget/Button;

    .line 309
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090594

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->top2CropButton:Landroid/widget/Button;

    .line 310
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09057a

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->season2Button:Landroid/widget/Button;

    .line 311
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09053c

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->hybrid2Button:Landroid/widget/Button;

    .line 312
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0904ee

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->acreas2Button:Landroid/widget/Button;

    .line 314
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901d2

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->top1CropEditText:Landroid/widget/EditText;

    .line 315
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901c8

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->season1EditText:Landroid/widget/EditText;

    .line 316
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901a3

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->hybrid1EditText:Landroid/widget/EditText;

    .line 317
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09018a

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->acres1EditText:Landroid/widget/EditText;

    .line 318
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901d3

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->top2CropEditText:Landroid/widget/EditText;

    .line 319
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901c9

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->season2EditText:Landroid/widget/EditText;

    .line 320
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901a4

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->hybrid2EditText:Landroid/widget/EditText;

    .line 321
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090185

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->acres2EditText:Landroid/widget/EditText;

    .line 324
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090530

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->farmerTypeButton:Landroid/widget/Button;

    .line 325
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090569

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->preferredRetailerButton:Landroid/widget/Button;

    .line 326
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09057c

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->socialStatusButton:Landroid/widget/Button;

    .line 328
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901a1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->farmerTypeEditText:Landroid/widget/EditText;

    .line 329
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901be

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->preferredRetailerEditText:Landroid/widget/EditText;

    .line 330
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901ca

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->socialStatusEditText:Landroid/widget/EditText;

    return-void
.end method

.method private setFilters()V
    .locals 7

    .line 90
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->farmerNameEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$1;-><init>(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->farmerNameEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->characterSpaceFullStopFilter:Landroid/text/InputFilter;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 98
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->fatherNameEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$2;-><init>(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->fatherNameEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->characterSpaceFullStopFilter:Landroid/text/InputFilter;

    new-array v3, v2, [Landroid/text/InputFilter;

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 107
    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$DecimalDigitsInputFilter;

    const/4 v1, 0x5

    const/4 v3, 0x2

    invoke-direct {v0, p0, v1, v3}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;II)V

    .line 108
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->cultivatedLandEditText:Landroid/widget/EditText;

    new-array v3, v2, [Landroid/text/InputFilter;

    aput-object v0, v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 109
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->ownedCultivatedEditText:Landroid/widget/EditText;

    new-array v3, v2, [Landroid/text/InputFilter;

    aput-object v0, v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 110
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->leasedCultivatedEditText:Landroid/widget/EditText;

    new-array v3, v2, [Landroid/text/InputFilter;

    aput-object v0, v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 111
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->irrigatedLandEditText:Landroid/widget/EditText;

    new-array v3, v2, [Landroid/text/InputFilter;

    new-instance v5, Lcom/conceptglobal/pmc/common/InputFilterMinMax;

    const/16 v6, 0x64

    invoke-direct {v5, v4, v6}, Lcom/conceptglobal/pmc/common/InputFilterMinMax;-><init>(II)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 112
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->irrigatedLandEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$3;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$3;-><init>(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 138
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->acres1EditText:Landroid/widget/EditText;

    new-array v3, v2, [Landroid/text/InputFilter;

    aput-object v0, v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 139
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->acres2EditText:Landroid/widget/EditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private setLayoutData()V
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->stateButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100197

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->talukaButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10019a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->districtButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100188

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->villageButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10019b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->farmerNameButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10020d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->surNameButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100199

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->fatherNameButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100189

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->mobileNoButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100218

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->landLineButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1000b6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->care_of_noButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f10005c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->ageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1002e3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->cultivatedLandButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100186

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->ownedCultivatedButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100192

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->leasedCultivatedButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10018e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->irrigatedLandButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10018a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->rainFedLandButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100196

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->top1CropButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100214

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->season1Button:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100211

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->hybrid1Button:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10020c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->acres1Button:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100208

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->top2CropButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100213

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->season2Button:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100207

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->hybrid2Button:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100206

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->acreas2Button:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100205

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->farmerTypeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10020a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->preferredRetailerButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100210

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->socialStatusButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100212

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setListeners()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$4;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$4;-><init>(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 156
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->stateEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->districtEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->talukaEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->villageEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->ageEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->top1CropEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->season1EditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->hybrid1EditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->top2CropEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->season2EditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->hybrid2EditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private settingData()V
    .locals 0

    return-void
.end method

.method private settingTabs()V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 223
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10020b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10023c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080108

    invoke-direct {p0, v0, v2, v1}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10020f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10023d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08010b

    invoke-direct {p0, v0, v2, v1}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100209

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10023e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080101

    invoke-direct {p0, v0, v2, v1}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100215

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10023f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080112

    invoke-direct {p0, v0, v2, v1}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10020e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100240

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080166

    invoke-direct {p0, v0, v2, v1}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 145
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

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 498
    invoke-super {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 502
    sget-object p1, Lcom/conceptglobal/pmc/common/Astat;->KEY_LIST_SELECTION:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 504
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    sget-object p2, Lcom/conceptglobal/pmc/common/Astat;->KEY_LIST_SELECTION:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 505
    aget-object p3, p1, p2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    .line 506
    aget-object p2, p1, p2

    const/4 p3, 0x1

    .line 507
    aget-object p1, p1, p3

    .line 509
    :try_start_0
    sget p3, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->SELECTED_ID:I

    const/4 v0, 0x0

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_0

    .line 535
    :sswitch_0
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->villageEditText:Landroid/widget/EditText;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->villageEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 555
    :sswitch_1
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->top2CropEditText:Landroid/widget/EditText;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->top2CropEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 543
    :sswitch_2
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->top1CropEditText:Landroid/widget/EditText;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->top1CropEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 529
    :sswitch_3
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->talukaEditText:Landroid/widget/EditText;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->talukaEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 531
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->villageEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->villageEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 511
    :sswitch_4
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->stateEditText:Landroid/widget/EditText;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->stateEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 513
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->districtEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->districtEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 515
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->talukaEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->talukaEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 517
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->villageEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->villageEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 559
    :sswitch_5
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->season2EditText:Landroid/widget/EditText;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 560
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->season2EditText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 547
    :sswitch_6
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->season1EditText:Landroid/widget/EditText;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->season1EditText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 563
    :sswitch_7
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->hybrid2EditText:Landroid/widget/EditText;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->hybrid2EditText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 551
    :sswitch_8
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->hybrid1EditText:Landroid/widget/EditText;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->hybrid1EditText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 521
    :sswitch_9
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->districtEditText:Landroid/widget/EditText;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->districtEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 523
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->talukaEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->talukaEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 525
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->villageEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->villageEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 539
    :sswitch_a
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->ageEditText:Landroid/widget/EditText;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->ageEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 573
    const-string p2, "Farmer Registration Activity"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09018b -> :sswitch_a
        0x7f09019f -> :sswitch_9
        0x7f0901a3 -> :sswitch_8
        0x7f0901a4 -> :sswitch_7
        0x7f0901c8 -> :sswitch_6
        0x7f0901c9 -> :sswitch_5
        0x7f0901ce -> :sswitch_4
        0x7f0901d1 -> :sswitch_3
        0x7f0901d2 -> :sswitch_2
        0x7f0901d3 -> :sswitch_1
        0x7f0901d4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x7

    const/high16 v2, 0x4000000

    const-string v3, "Farmer Registration Activity"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 382
    :sswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->talukaEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const p1, 0x7f0901d4

    .line 383
    sput p1, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->SELECTED_ID:I

    .line 384
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 385
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->talukaEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 386
    sget-object v1, Lcom/conceptglobal/pmc/common/Astat;->KEY_LIST_QUERY:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/common/Queries;->getVillagesList(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x5

    .line 387
    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Please Select Taluka"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 392
    invoke-static {v3, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :sswitch_1
    const p1, 0x7f0901d3

    .line 437
    :try_start_1
    sput p1, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->SELECTED_ID:I

    .line 438
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 439
    sget-object v0, Lcom/conceptglobal/pmc/common/Astat;->KEY_LIST_QUERY:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getCropNames()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    invoke-virtual {p0, p1, v1}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 442
    invoke-static {v3, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :sswitch_2
    const p1, 0x7f0901d2

    .line 407
    :try_start_2
    sput p1, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->SELECTED_ID:I

    .line 408
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 409
    sget-object v0, Lcom/conceptglobal/pmc/common/Astat;->KEY_LIST_QUERY:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getCropNames()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    invoke-virtual {p0, p1, v1}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception p1

    .line 412
    invoke-static {v3, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 367
    :sswitch_3
    :try_start_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->districtEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const p1, 0x7f0901d1

    .line 368
    sput p1, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->SELECTED_ID:I

    .line 369
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 370
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->districtEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 371
    sget-object v1, Lcom/conceptglobal/pmc/common/Astat;->KEY_LIST_QUERY:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/common/Queries;->getTalukasList(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x4

    .line 372
    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Please Select District"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception p1

    .line 377
    invoke-static {v3, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :sswitch_4
    const p1, 0x7f0901ce

    .line 341
    :try_start_4
    sput p1, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->SELECTED_ID:I

    .line 342
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 343
    sget-object v0, Lcom/conceptglobal/pmc/common/Astat;->KEY_LIST_QUERY:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getStates()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 344
    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception p1

    .line 346
    invoke-static {v3, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :sswitch_5
    const p1, 0x7f0901c9

    .line 447
    :try_start_5
    sput p1, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->SELECTED_ID:I

    .line 448
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 449
    sget-object v0, Lcom/conceptglobal/pmc/common/Astat;->KEY_LIST_QUERY:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getSeasonNames()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    invoke-virtual {p0, p1, v1}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception p1

    .line 452
    invoke-static {v3, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :sswitch_6
    const p1, 0x7f0901c8

    .line 417
    :try_start_6
    sput p1, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->SELECTED_ID:I

    .line 418
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 419
    sget-object v0, Lcom/conceptglobal/pmc/common/Astat;->KEY_LIST_QUERY:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getSeasonNames()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    invoke-virtual {p0, p1, v1}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception p1

    .line 422
    invoke-static {v3, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :sswitch_7
    const p1, 0x7f0901be

    .line 477
    :try_start_7
    sput p1, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->SELECTED_ID:I

    .line 478
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 479
    sget-object v0, Lcom/conceptglobal/pmc/common/Astat;->KEY_LIST_QUERY:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getFarmerTypes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    invoke-virtual {p0, p1, v1}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception p1

    .line 482
    invoke-static {v3, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :sswitch_8
    const p1, 0x7f0901a4

    .line 457
    :try_start_8
    sput p1, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->SELECTED_ID:I

    .line 458
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 459
    sget-object v0, Lcom/conceptglobal/pmc/common/Astat;->KEY_LIST_QUERY:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getHybridNames()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    invoke-virtual {p0, p1, v1}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception p1

    .line 462
    invoke-static {v3, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :sswitch_9
    const p1, 0x7f0901a3

    .line 427
    :try_start_9
    sput p1, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->SELECTED_ID:I

    .line 428
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 429
    sget-object v0, Lcom/conceptglobal/pmc/common/Astat;->KEY_LIST_QUERY:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getHybridNames()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    invoke-virtual {p0, p1, v1}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_0

    :catch_9
    move-exception p1

    .line 432
    invoke-static {v3, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :sswitch_a
    const p1, 0x7f0901a1

    .line 467
    :try_start_a
    sput p1, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->SELECTED_ID:I

    .line 468
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 469
    sget-object v0, Lcom/conceptglobal/pmc/common/Astat;->KEY_LIST_QUERY:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getFarmerTypes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    invoke-virtual {p0, p1, v1}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception p1

    .line 472
    invoke-static {v3, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 351
    :sswitch_b
    :try_start_b
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->stateEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    const p1, 0x7f09019f

    .line 352
    sput p1, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->SELECTED_ID:I

    .line 353
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 354
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->stateEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 355
    const-string v1, "eeeee"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sget-object v1, Lcom/conceptglobal/pmc/common/Astat;->KEY_LIST_QUERY:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/common/Queries;->getDistrictlist(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x3

    .line 357
    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 359
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Please Select State"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_0

    :catch_b
    move-exception p1

    .line 362
    invoke-static {v3, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :sswitch_c
    const p1, 0x7f09018b

    .line 397
    :try_start_c
    sput p1, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->SELECTED_ID:I

    .line 398
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 399
    sget-object v0, Lcom/conceptglobal/pmc/common/Astat;->KEY_LIST_QUERY:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getAgeList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x6

    .line 400
    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_0

    :catch_c
    move-exception p1

    .line 402
    invoke-static {v3, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09018b -> :sswitch_c
        0x7f09019f -> :sswitch_b
        0x7f0901a1 -> :sswitch_a
        0x7f0901a3 -> :sswitch_9
        0x7f0901a4 -> :sswitch_8
        0x7f0901be -> :sswitch_7
        0x7f0901c8 -> :sswitch_6
        0x7f0901c9 -> :sswitch_5
        0x7f0901ce -> :sswitch_4
        0x7f0901d1 -> :sswitch_3
        0x7f0901d2 -> :sswitch_2
        0x7f0901d3 -> :sswitch_1
        0x7f0901d4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00aa

    .line 75
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->setContentView(I)V

    .line 76
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->context:Landroid/content/Context;

    .line 77
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 78
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_farmerRegDetails()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 79
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->initialization()V

    .line 80
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->settingTabs()V

    .line 81
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->setFilters()V

    .line 82
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->getData()V

    .line 83
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->setLayoutData()V

    .line 84
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->settingData()V

    .line 85
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->setListeners()V

    return-void
.end method
