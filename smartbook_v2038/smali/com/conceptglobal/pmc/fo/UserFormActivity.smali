.class public Lcom/conceptglobal/pmc/fo/UserFormActivity;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "UserFormActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/UserFormActivity$DecimalDigitsInputFilter;
    }
.end annotation


# static fields
.field private static final GETATTRIBUTEDONE:I = 0x3

.field private static final GETNEWACTIVITY:I = 0x2

.field private static final GETRETAILERLIST:I = 0xa

.field private static final INITIALCROPID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "UserFormActivity"


# instance fields
.field private GPSTimeStamp:Ljava/lang/String;

.field private activityAssignmentId:I

.field private activityId:I

.field private activityImage:Landroid/widget/ImageView;

.field private activityName:Ljava/lang/String;

.field private adapterActivities:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

.field private adapterCompany:Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;

.field private adapterCrops:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;

.field private assignmentId:I

.field private attributesArry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/DynamicFields;",
            ">;"
        }
    .end annotation
.end field

.field bindQuery:Ljava/lang/String;

.field private btnCultivated:Landroid/widget/Button;

.field private btnDealer:Landroid/widget/Button;

.field private btnDiscription:Landroid/widget/Button;

.field private btnDistrict:Landroid/widget/Button;

.field private btnFamermerName:Landroid/widget/Button;

.field private btnFarmerConumber:Landroid/widget/Button;

.field private btnFarmerFathername:Landroid/widget/Button;

.field private btnFarmerLandline:Landroid/widget/Button;

.field private btnFarmerMobile:Landroid/widget/Button;

.field private btnFarmerSurname:Landroid/widget/Button;

.field private btnInactive:Landroid/widget/Button;

.field private btnLatLng:Landroid/widget/ImageView;

.field private btnLeasedin:Landroid/widget/Button;

.field private btnLeasedout:Landroid/widget/Button;

.field private btnOwned:Landroid/widget/Button;

.field private btnSave:Landroid/widget/Button;

.field private btnState:Landroid/widget/Button;

.field private btnTaluka:Landroid/widget/Button;

.field private btnVillage:Landroid/widget/Button;

.field private btnVisit:Landroid/widget/Button;

.field private consentflag:I

.field private context:Landroid/content/Context;

.field private dateDialogID:I

.field dynamicColumnnames:Ljava/lang/StringBuilder;

.field private etCropAccr:Landroid/widget/EditText;

.field private etCropDos:Landroid/widget/EditText;

.field private etCropName:Landroid/widget/EditText;

.field private etCultivated:Landroid/widget/EditText;

.field private etDiscription:Landroid/widget/EditText;

.field private etDistrict:Landroid/widget/EditText;

.field private etFarmerAddress:Landroid/widget/EditText;

.field private etFarmerConumber:Landroid/widget/EditText;

.field private etFarmerFathername:Landroid/widget/EditText;

.field private etFarmerLandline:Landroid/widget/EditText;

.field private etFarmerLandmark:Landroid/widget/EditText;

.field private etFarmerMobile:Landroid/widget/EditText;

.field private etFarmerName:Landroid/widget/EditText;

.field private etFarmerSurname:Landroid/widget/EditText;

.field private etLeasedin:Landroid/widget/EditText;

.field private etLeasedout:Landroid/widget/EditText;

.field private etOwned:Landroid/widget/EditText;

.field private etState:Landroid/widget/EditText;

.field private etTaluka:Landroid/widget/EditText;

.field private etTotalLandHolding:Landroid/widget/EditText;

.field private etVillage:Landroid/widget/EditText;

.field private farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

.field private farmerID:Ljava/lang/String;

.field private farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

.field private getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private gridView:Landroid/widget/GridView;

.field private hAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

.field private imageFile:Ljava/io/File;

.field private imagePath:Ljava/lang/String;

.field private imagelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private intentGetData:Landroid/content/Intent;

.field private isImageDeleted:Z

.field private lastVisitData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/LastVisitModel;",
            ">;"
        }
    .end annotation
.end field

.field private layoutId:I

.field private listActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ActivityModel;",
            ">;"
        }
    .end annotation
.end field

.field private listDealerCompanies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DealerCompanyMapping;",
            ">;"
        }
    .end annotation
.end field

.field private listFarmerCrops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FarmerCropMapping;",
            ">;"
        }
    .end annotation
.end field

.field private lladdActivities:Landroid/widget/LinearLayout;

.field private lvActivity:Landroid/widget/ListView;

.field private lvCrops:Landroid/widget/ListView;

.field private lvLastVisitData:Landroid/widget/ListView;

.field private mAddDynamicLinear:Landroid/widget/LinearLayout;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mEntryArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mEntryArrIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mEntrySpinnerArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mForDates:I

.field private mForOperations:I

.field private mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

.field private mMonth:I

.field private mOprDatesArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mYear:I

.field private mattributesnamesArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mentryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private message:Landroid/content/BroadcastReceiver;

.field private queries:Lcom/conceptglobal/pmc/common/Queries;

.field private replacestring:Ljava/lang/String;

.field private segmentId:I

.field private tabHost:Landroid/widget/TabHost;

.field private tag:Ljava/lang/String;

.field private tvAddCrop:Landroid/widget/TextView;

.field private tvCropid:Landroid/widget/TextView;

.field private tvFarmer:Landroid/widget/TextView;

.field private tvIsBayerFarmer:Landroid/widget/TextView;

.field private tvLatitude:Landroid/widget/TextView;

.field private tvLongitude:Landroid/widget/TextView;

.field private tvRetailers:Landroid/widget/TextView;

.field private zipFilePath:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 106
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 109
    const-string v0, "UserFormActivity"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->dateDialogID:I

    .line 122
    const-string v1, "0"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerID:Ljava/lang/String;

    const/4 v1, 0x0

    .line 152
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->hAttributes:Ljava/util/HashMap;

    .line 162
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->attributesArry:Ljava/util/ArrayList;

    .line 165
    iput v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->layoutId:I

    const/4 v0, -0x1

    .line 166
    iput v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->mForOperations:I

    iput v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->mForDates:I

    .line 171
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->GPSTimeStamp:Ljava/lang/String;

    .line 1231
    new-instance v0, Lcom/conceptglobal/pmc/fo/UserFormActivity$19;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity$19;-><init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 1346
    new-instance v0, Lcom/conceptglobal/pmc/fo/UserFormActivity$20;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity$20;-><init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->message:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->imagelist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fo/UserFormActivity;I)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->captureImage(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fo/UserFormActivity;Ljava/lang/String;I)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->saveDataInLocal(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fo/UserFormActivity;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->saveDataInLocalAgree(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fo/UserFormActivity;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->mYear:I

    return p0
.end method

.method static synthetic access$1202(Lcom/conceptglobal/pmc/fo/UserFormActivity;I)I
    .locals 0

    .line 106
    iput p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->mYear:I

    return p1
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fo/UserFormActivity;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->mMonth:I

    return p0
.end method

.method static synthetic access$1302(Lcom/conceptglobal/pmc/fo/UserFormActivity;I)I
    .locals 0

    .line 106
    iput p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->mMonth:I

    return p1
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fo/UserFormActivity;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->mDay:I

    return p0
.end method

.method static synthetic access$1402(Lcom/conceptglobal/pmc/fo/UserFormActivity;I)I
    .locals 0

    .line 106
    iput p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->mDay:I

    return p1
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fo/UserFormActivity;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->dateDialogID:I

    return p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Landroid/widget/EditText;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etCropDos:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/conceptglobal/pmc/fo/UserFormActivity;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->isImageDeleted:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Landroid/widget/TextView;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tvLatitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Landroid/widget/TextView;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tvLongitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Landroid/widget/TabHost;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/conceptglobal/pmc/fo/UserFormActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->GPSTimeStamp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/UserFormActivity;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->segmentId:I

    return p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Landroid/widget/EditText;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etOwned:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Landroid/widget/EditText;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etLeasedin:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Landroid/widget/EditText;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etCultivated:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fo/UserFormActivity;Ljava/lang/String;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->setDataToObject(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fo/UserFormActivity;ILjava/lang/String;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->saveDataIntoDataBase(ILjava/lang/String;)V

    return-void
.end method

.method private addTab(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    .line 330
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 331
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    const v3, 0x7f0c0135

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090459

    .line 332
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 333
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090230

    .line 334
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 335
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 336
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 337
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10023c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const p2, 0x7f090414

    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto/16 :goto_0

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10023d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f090415

    .line 340
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto/16 :goto_0

    .line 341
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10023e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 342
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->context:Landroid/content/Context;

    const-class p3, Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 343
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    const-string p2, "SEGMENTID"

    iget p3, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->segmentId:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    const-string p2, "ISSELFASSIGN"

    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    const-string p2, "ACTIVITYNAME"

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->activityName:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string p2, "AssignmentId"

    iget p3, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->assignmentId:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 349
    const-string p2, "ActivityAssignmentId"

    iget p3, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->activityAssignmentId:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->activityId:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p2, 0x20000

    .line 352
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    const/high16 p3, 0x4000000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 354
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 356
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10023f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f090417

    .line 357
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 358
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f100240

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f090418

    .line 359
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 361
    :cond_4
    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 363
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method private captureImage(I)V
    .locals 5

    .line 1266
    new-instance v0, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 1267
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Todao"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getImageFiledate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".JPEG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->imageFile:Ljava/io/File;

    .line 1268
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Todo"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".ZIP"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->zipFilePath:Ljava/io/File;

    .line 1269
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->imageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->imagePath:Ljava/lang/String;

    .line 1271
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1273
    const-string v1, "com.conceptglobal.pmcdeepakfertilizers.provider"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->imageFile:Ljava/io/File;

    invoke-static {p0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1277
    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1279
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-gt v3, v4, :cond_0

    .line 1280
    const-string v3, ""

    invoke-static {v3, v1}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 v3, 0x3

    .line 1281
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1283
    :cond_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1284
    invoke-virtual {p0, v0, p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private fetchLocation()V
    .locals 4

    .line 1390
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 1394
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fo/UserFormActivity$21;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity$21;-><init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;)V

    const-string v2, "UserFormActivity"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1411
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getData()V
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->intentGetData:Landroid/content/Intent;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerID:Ljava/lang/String;

    .line 373
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->intentGetData:Landroid/content/Intent;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 374
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->intentGetData:Landroid/content/Intent;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->activityId:I

    .line 375
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->intentGetData:Landroid/content/Intent;

    const-string v3, "AssignmentId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->assignmentId:I

    .line 376
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->intentGetData:Landroid/content/Intent;

    const-string v3, "ACTIVITYNAME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->activityName:Ljava/lang/String;

    .line 377
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->intentGetData:Landroid/content/Intent;

    const-string v3, "ActivityAssignmentId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->activityAssignmentId:I

    .line 378
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->intentGetData:Landroid/content/Intent;

    const-string v3, "SEGMENTID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->segmentId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 380
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addFarmerDetailsText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 382
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_retailerDetailsText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 385
    :cond_1
    :goto_0
    new-instance v1, Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/model/FarmerDetails;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    int-to-long v2, v0

    .line 387
    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/model/FarmerDetails;->setVillageID(J)V

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setRespondentNo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 393
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private initialization()V
    .locals 2

    .line 246
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->intentGetData:Landroid/content/Intent;

    .line 247
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    .line 248
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->dynamicColumnnames:Ljava/lang/StringBuilder;

    const v0, 0x7f09041e

    .line 250
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09052b

    .line 252
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tvFarmer:Landroid/widget/TextView;

    .line 253
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09051c

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->btnDealer:Landroid/widget/Button;

    .line 254
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090521

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->btnDiscription:Landroid/widget/Button;

    .line 255
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09019a

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etDiscription:Landroid/widget/EditText;

    .line 256
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090502

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tvIsBayerFarmer:Landroid/widget/TextView;

    .line 257
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090575

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tvRetailers:Landroid/widget/TextView;

    .line 258
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900b4

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->btnSave:Landroid/widget/Button;

    .line 259
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->btnInactive:Landroid/widget/Button;

    .line 260
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->btnVisit:Landroid/widget/Button;

    const v0, 0x7f0902de

    .line 261
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->lvLastVisitData:Landroid/widget/ListView;

    .line 262
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->btnLatLng:Landroid/widget/ImageView;

    .line 263
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09054d

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tvLatitude:Landroid/widget/TextView;

    .line 264
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090556

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tvLongitude:Landroid/widget/TextView;

    .line 267
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090239

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->activityImage:Landroid/widget/ImageView;

    .line 268
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09021b

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->gridView:Landroid/widget/GridView;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->imagelist:Ljava/util/ArrayList;

    .line 270
    new-instance v0, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->mentryValues:Ljava/util/List;

    return-void
.end method

.method private insertPictureData()V
    .locals 9

    .line 1293
    new-instance v0, Lcom/conceptglobal/pmc/model/PictureReportingData;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/PictureReportingData;-><init>()V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v3, v2

    const/4 v2, 0x0

    .line 1294
    :goto_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 1296
    :try_start_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getPictureIdCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1298
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getPictureId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPictureId(Ljava/lang/String;)I

    move-result v2

    :cond_0
    if-eqz v2, :cond_1

    int-to-long v5, v2

    .line 1301
    invoke-virtual {v0, v5, v6}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setImageId(J)V

    goto :goto_1

    .line 1303
    :cond_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    const-string v6, "ActivityImageDetails"

    const-string v7, "ImageId"

    invoke-virtual {v5, v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getMaxId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setImageId(J)V

    .line 1305
    :goto_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    const-string v7, "ToDo"

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 1307
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1312
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->activityAssignmentId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setActivityId(Ljava/lang/String;)V

    .line 1314
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPicturePath(Ljava/lang/String;)V

    .line 1316
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPdaCreatedDate(Ljava/lang/String;)V

    .line 1317
    const-string v5, "false"

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setServerStatus(Ljava/lang/String;)V

    .line 1318
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPDAID(Ljava/lang/String;)V

    .line 1319
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setCreatedBy(Ljava/lang/String;)V

    .line 1320
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setCreatedDate(Ljava/lang/String;)V

    .line 1321
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setUpdatedBy(Ljava/lang/String;)V

    .line 1322
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setUpdatedDate(Ljava/lang/String;)V

    .line 1323
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setReferenceType(Ljava/lang/String;)V

    .line 1326
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setReferenceID(Ljava/lang/String;)V

    .line 1330
    :try_start_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->context:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertPictureDetails(Lcom/conceptglobal/pmc/model/PictureReportingData;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    .line 1332
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private saveDataInLocal(Ljava/lang/String;I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1102
    :try_start_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getPMCAssignedActivitiesQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivities(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->listActivities:Ljava/util/List;

    const/4 v2, 0x0

    .line 1103
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->listActivities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1104
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->listActivities:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/ActivityModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ActivityModel;->getIsDone()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1109
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tag:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    if-nez v1, :cond_2

    .line 1112
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1113
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pendActivities()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/fo/UserFormActivity$16;

    invoke-direct {v3, p0, p1, p2}, Lcom/conceptglobal/pmc/fo/UserFormActivity$16;-><init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1120
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/conceptglobal/pmc/fo/UserFormActivity$15;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity$15;-><init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1127
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1128
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1129
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    goto :goto_1

    .line 1132
    :cond_2
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->setDataToObject(Ljava/lang/String;)V

    .line 1133
    const-string p1, ""

    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->saveDataIntoDataBase(ILjava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private saveDataInLocalAgree(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1151
    :try_start_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getPMCAssignedActivitiesQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivities(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->listActivities:Ljava/util/List;

    const/4 v2, 0x0

    .line 1152
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->listActivities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1153
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->listActivities:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/ActivityModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ActivityModel;->getIsDone()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1158
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tag:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    if-nez v1, :cond_2

    .line 1161
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1162
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pendActivities()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/fo/UserFormActivity$18;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/conceptglobal/pmc/fo/UserFormActivity$18;-><init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1169
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object p3

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/conceptglobal/pmc/fo/UserFormActivity$17;

    invoke-direct {p3, p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity$17;-><init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1176
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1177
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1178
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    goto :goto_1

    .line 1181
    :cond_2
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->setDataToObject(Ljava/lang/String;)V

    .line 1182
    invoke-direct {p0, p2, p3}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->saveDataIntoDataBase(ILjava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private saveDataIntoDataBase(ILjava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    .line 730
    :try_start_0
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-static {v3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerRecordSave(Lcom/conceptglobal/pmc/model/FarmerDetails;)V

    .line 731
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->insertPictureData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    if-eqz v0, :cond_d

    const/4 v4, 0x1

    if-eq v0, v4, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto/16 :goto_6

    .line 807
    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getFarmerId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/common/Queries;->updateFieldOne(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->updatearmer(Ljava/lang/String;)V

    .line 808
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->updateFarmerCropMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 809
    iget v3, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->assignmentId:I

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerID:Ljava/lang/String;

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->activityAssignmentId:I

    const-string v11, ""

    const-string v12, ""

    iget-object v13, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->GPSTimeStamp:Ljava/lang/String;

    const-string v14, ""

    const-string v15, ""

    const-wide/16 v9, 0x0

    invoke-static/range {v3 .. v15}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 812
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 814
    :goto_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 816
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 817
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 818
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    goto :goto_1

    .line 822
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/fo/ToDoActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->startActivity(Landroid/content/Intent;)V

    .line 824
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_6

    .line 785
    :cond_3
    :try_start_3
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getFarmerId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/common/Queries;->updateIsactive(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->updatearmer(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 787
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 788
    const-string v2, "UserFormActivity"

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 792
    :goto_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 794
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 795
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 796
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    goto :goto_3

    .line 800
    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/fo/ToDoActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->startActivity(Landroid/content/Intent;)V

    .line 802
    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->finish()V

    goto/16 :goto_6

    .line 780
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->finish()V

    goto/16 :goto_6

    .line 739
    :cond_7
    iget v5, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->assignmentId:I

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerID:Ljava/lang/String;

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->activityAssignmentId:I

    const-string v13, ""

    const-string v14, ""

    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->GPSTimeStamp:Ljava/lang/String;

    const-string v16, ""

    const-string v17, ""

    const-wide/16 v11, 0x0

    invoke-static/range {v5 .. v17}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v0, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 744
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateFlag(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->updatearmer(Ljava/lang/String;)V

    .line 745
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 748
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 749
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    goto :goto_4

    .line 754
    :cond_8
    new-instance v0, Landroid/content/Intent;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/fo/ToDoActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->startActivity(Landroid/content/Intent;)V

    .line 756
    :cond_9
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->finish()V

    goto :goto_6

    .line 760
    :cond_a
    const-string v0, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 762
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateFlag(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->updatearmer(Ljava/lang/String;)V

    .line 763
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 766
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 767
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    goto :goto_5

    .line 771
    :cond_b
    new-instance v0, Landroid/content/Intent;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/fo/ToDoActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->startActivity(Landroid/content/Intent;)V

    .line 773
    :cond_c
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->finish()V

    goto :goto_6

    .line 734
    :cond_d
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_saveNCloseDialogInUFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->showAlertCancel(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    .line 832
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_6
    return-void
.end method

.method private setAdapter()V
    .locals 3

    .line 1339
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    if-nez v0, :cond_0

    .line 1340
    new-instance v0, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->imagelist:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    .line 1341
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1343
    :cond_0
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method private setDataToObject(Ljava/lang/String;)V
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/FarmerDetails;->setIsVisited(Ljava/lang/String;)V

    .line 845
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/model/FarmerDetails;->setVisitDescription(Ljava/lang/String;)V

    .line 846
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/model/FarmerDetails;->setIsMBA(I)V

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 234
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 235
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 236
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setLayoutData()V
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tvFarmer:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pmcFarmerInFFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->btnDealer:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_prefDealerInFFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->btnDiscription:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_visitDescInFFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etDiscription:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addDescInFFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->btnSave:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_closeInUFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->btnInactive:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_deactivateInUFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->btnVisit:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_visitCompleteButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setListeners()V
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tvAddCrop:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->btnSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->btnInactive:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->btnVisit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tvRetailers:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->btnLatLng:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->activityImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    new-instance v1, Lcom/conceptglobal/pmc/fo/UserFormActivity$4;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity$4;-><init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 517
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etOwned:Landroid/widget/EditText;

    new-instance v1, Lcom/conceptglobal/pmc/fo/UserFormActivity$5;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity$5;-><init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 538
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etLeasedin:Landroid/widget/EditText;

    new-instance v1, Lcom/conceptglobal/pmc/fo/UserFormActivity$6;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity$6;-><init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private settingData()V
    .locals 8

    .line 418
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 419
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->mYear:I

    const/4 v2, 0x2

    .line 420
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->mMonth:I

    const/4 v3, 0x5

    .line 421
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->mDay:I

    .line 423
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getFarmerName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "null"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getFarmerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etFarmerName:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getFarmerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 427
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tag:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 430
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etTotalLandHolding:Landroid/widget/EditText;

    new-array v4, v1, [Landroid/text/InputFilter;

    new-instance v5, Lcom/conceptglobal/pmc/fo/UserFormActivity$DecimalDigitsInputFilter;

    const/4 v6, 0x6

    invoke-direct {v5, p0, v6, v2}, Lcom/conceptglobal/pmc/fo/UserFormActivity$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;II)V

    const/4 v2, 0x0

    aput-object v5, v4, v2

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 432
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etDiscription:Landroid/widget/EditText;

    new-array v4, v1, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100268

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v2

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 434
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etLeasedin:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getLeasedIn()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etLeasedout:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getLeasedOut()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etOwned:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getAcreagesOwned()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etOwned:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etOwned:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 438
    :goto_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etLeasedin:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etLeasedin:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 439
    :cond_2
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etCultivated:Landroid/widget/EditText;

    add-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const-string v0, "%.2f"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getVisitDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getVisitDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 442
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etDiscription:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getVisitDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 444
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getIsBayerFarmer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getIsBayerFarmer()Ljava/lang/String;

    move-result-object v0

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 445
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tvIsBayerFarmer:Landroid/widget/TextView;

    const-string v3, "Yes"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 447
    :cond_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tvIsBayerFarmer:Landroid/widget/TextView;

    const-string v3, "No"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    :goto_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getRetailerName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getRetailerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 450
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getRetailerName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "()"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/model/FarmerDetails;->setRetailerName(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getRetailerName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "(null)"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/model/FarmerDetails;->setRetailerName(Ljava/lang/String;)V

    .line 453
    :cond_5
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getRetailerName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getRetailerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 454
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tvRetailers:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getRetailerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 456
    :cond_6
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tvRetailers:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectDealerInFFA()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    :goto_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->lastVisitData:Ljava/util/List;

    const v3, 0x7f0902bf

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 460
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->lvLastVisitData:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    goto :goto_4

    .line 464
    :cond_7
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090553

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 465
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_visitDetNotAvailText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method private settingTabs()V
    .locals 3

    .line 281
    new-instance v0, Landroid/app/LocalActivityManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    const/4 v1, 0x0

    .line 282
    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 283
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 284
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_lastVisitTabName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100240

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080108

    invoke-direct {p0, v0, v2, v1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_activityLastVisitText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10023e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080112

    invoke-direct {p0, v0, v2, v1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_finishTabSelfAssignText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10023f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080166

    invoke-direct {p0, v0, v2, v1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    new-instance v1, Lcom/conceptglobal/pmc/fo/UserFormActivity$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity$3;-><init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method

.method private showAlertCancel(Ljava/lang/String;I)V
    .locals 3

    .line 1012
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1013
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/UserFormActivity$11;

    invoke-direct {v2, p0, p2}, Lcom/conceptglobal/pmc/fo/UserFormActivity$11;-><init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;I)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1041
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/conceptglobal/pmc/fo/UserFormActivity$10;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity$10;-><init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;)V

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1046
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1047
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1048
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showAlertWithAgreeDisagree(Ljava/lang/String;)V
    .locals 3

    .line 1059
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1060
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_agreeVisitCompleteDialogButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/UserFormActivity$14;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity$14;-><init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1069
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_disAgree()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/UserFormActivity$13;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity$13;-><init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1077
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/UserFormActivity$12;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity$12;-><init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1084
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1085
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showAlertWithNewtral(Ljava/lang/String;I)V
    .locals 2

    .line 975
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 976
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_saveText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/fo/UserFormActivity$9;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity$9;-><init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 983
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_dontSave()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/fo/UserFormActivity$8;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity$8;-><init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 989
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/fo/UserFormActivity$7;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity$7;-><init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 996
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 997
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 998
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 224
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
    .locals 2

    .line 891
    invoke-super {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 p2, 0x65

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    .line 944
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->imagelist:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->setAdapter()V

    goto/16 :goto_0

    :cond_1
    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    .line 896
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYRETAILERNAME()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYRETAILERNAME()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 897
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYRETAILERNAME()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    const-string v1, "()"

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/model/FarmerDetails;->setRetailerName(Ljava/lang/String;)V

    .line 898
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYRETAILERNAME()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(null)"

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/model/FarmerDetails;->setRetailerName(Ljava/lang/String;)V

    .line 899
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tvRetailers:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getRetailerName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYRETAILERID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 902
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYRETAILERID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/model/FarmerDetails;->setRetailerId(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    if-eq p2, p1, :cond_5

    if-eqz p2, :cond_4

    goto :goto_0

    .line 957
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "GPSNotTurnedOn"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 952
    :cond_5
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->fetchLocation()V

    :cond_6
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 569
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 570
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "farmerid"

    const/4 v1, 0x0

    const-string v2, "1"

    const-string v3, "consent"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 661
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0xa

    .line 662
    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 711
    :sswitch_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 712
    const-string v0, "activityId"

    iget v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->activityId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 713
    const-string v0, "farmerId"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x65

    .line 714
    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 608
    :sswitch_2
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getConsentFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->consentflag:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 614
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tag:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 617
    :goto_0
    iget p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->consentflag:I

    const/4 v4, 0x4

    if-lez p1, :cond_0

    .line 619
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_confirmVisitCompleteDialogText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->showAlertCancel(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 627
    :cond_0
    :try_start_1
    invoke-virtual {p0, v3, v1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v1, 0x0

    .line 628
    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 629
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v3, :cond_1

    .line 631
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getFarmerId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 632
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/Queries;->getGetConsinment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 633
    const-string v0, "[XXXX]"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getFarmerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->replacestring:Ljava/lang/String;

    .line 635
    const-string p1, "true"

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v2}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->saveDataInLocalAgree(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 641
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1001a6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->replacestring:Ljava/lang/String;

    .line 642
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_confirmVisitCompleteDialogText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->showAlertCancel(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    .line 653
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 573
    :sswitch_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etFarmerMobile:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 574
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->etFarmerLandmark:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 575
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getMobile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v5, 0x2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getLandMark()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 578
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_doUWantToSaveChangesInUFA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->showAlertWithNewtral(Ljava/lang/String;I)V

    goto :goto_2

    .line 583
    :cond_2
    :try_start_2
    invoke-virtual {p0, v3, v1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 584
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 585
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 586
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getFarmerId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 587
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 590
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 592
    :goto_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_doUWantToSaveChangesInUFA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->showAlertWithNewtral(Ljava/lang/String;I)V

    goto :goto_2

    .line 600
    :sswitch_4
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_isNoLongerLivingFarmerInUFA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->showAlertCancel(Ljava/lang/String;I)V

    goto :goto_2

    .line 666
    :sswitch_5
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->fetchLocation()V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900a1 -> :sswitch_5
        0x7f0900a5 -> :sswitch_4
        0x7f0900b4 -> :sswitch_3
        0x7f0900c4 -> :sswitch_2
        0x7f090239 -> :sswitch_1
        0x7f090575 -> :sswitch_0
    .end sparse-switch
.end method

.method public onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 1202
    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1204
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->tabHost:Landroid/widget/TabHost;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 179
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0041

    .line 182
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->setContentView(I)V

    .line 183
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->context:Landroid/content/Context;

    .line 184
    new-instance p1, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 185
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 186
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->initialization()V

    .line 187
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getData()V

    .line 188
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->settingTabs()V

    .line 189
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->setLayoutData()V

    .line 190
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->settingData()V

    .line 193
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->setListeners()V

    .line 195
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->gridView:Landroid/widget/GridView;

    new-instance v0, Lcom/conceptglobal/pmc/fo/UserFormActivity$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity$1;-><init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f0901de

    .line 204
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    .line 206
    new-instance v0, Lcom/conceptglobal/pmc/fo/UserFormActivity$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity$2;-><init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;)V

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->message:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "send"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1194
    :cond_0
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->mYear:I

    iget v4, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->mMonth:I

    iget v5, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->mDay:I

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 1377
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->message:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1378
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 855
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 862
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 857
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 868
    const-string p2, "onRequestPermissionResult"

    const-string v0, "UserFormActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 870
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 873
    const-string p1, "User interaction was cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 874
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 876
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->fetchLocation()V

    goto :goto_0

    .line 879
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1367
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    .line 1368
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->imagelist:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1369
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->isImageDeleted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1370
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity;->isImageDeleted:Z

    .line 1371
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->setAdapter()V

    :cond_0
    return-void
.end method
