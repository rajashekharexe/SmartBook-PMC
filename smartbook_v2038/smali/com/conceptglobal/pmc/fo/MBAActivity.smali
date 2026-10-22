.class public Lcom/conceptglobal/pmc/fo/MBAActivity;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "MBAActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;
.implements Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;
.implements Lcom/conceptglobal/pmc/utils/CompressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/MBAActivity$DecimalDigitsInputFilter;
    }
.end annotation


# static fields
.field private static final GETATTRIBUTEDONE:I = 0x3

.field private static final GETCUSTOMER:I = 0x3

.field private static final GETNEWACTIVITY:I = 0x2

.field private static final GETRETAILERLIST:I = 0xa

.field private static final INITIALCROPID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MBAActivity"


# instance fields
.field private GPSTimeStamp:Ljava/lang/String;

.field private activityAssignmentId:I

.field private activityId:I

.field private activityImage:Landroid/widget/ImageView;

.field private activityName:Ljava/lang/String;

.field private adapterActivities:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

.field private adapterCrops:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;

.field private assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

.field private assignmentId:I

.field private btnCultivated:Landroid/widget/Button;

.field private btnCustomerDetails:Landroid/widget/Button;

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

.field private btnTerritoryDetails:Landroid/widget/Button;

.field private btnVillage:Landroid/widget/Button;

.field private btnVisit:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private custDetailsText:Landroid/widget/TextView;

.field protected d_remarks:Landroid/app/Dialog;

.field private dateDialogID:I

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

.field private farmerID:Ljava/lang/String;

.field private getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private gridView:Landroid/widget/GridView;

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

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ImageDetails;",
            ">;"
        }
    .end annotation
.end field

.field private intentGetData:Landroid/content/Intent;

.field private isImageDeleted:Z

.field private isMIActivity:Z

.field private lastVisitData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/LastVisitModel;",
            ">;"
        }
    .end annotation
.end field

.field private listActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ActivityModel;",
            ">;"
        }
    .end annotation
.end field

.field private listAttributes_Assgnmt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
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

.field private locationProvider:Ljava/lang/String;

.field private lvActivity:Landroid/widget/ListView;

.field private lvCrops:Landroid/widget/ListView;

.field private lvLastVisitData:Landroid/widget/ListView;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mEntryArrIds_Assgnmt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mEntryArr_Assgnmt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

.field private mMonth:I

.field private mYear:I

.field private message:Landroid/content/BroadcastReceiver;

.field private miDraft:Landroid/view/MenuItem;

.field private packageId:I

.field preferences:Landroid/content/SharedPreferences;

.field private queries:Lcom/conceptglobal/pmc/common/Queries;

.field private remarkNames:[Ljava/lang/String;

.field private remarkids:[Ljava/lang/String;

.field private segmentId:I

.field private segmentName:Ljava/lang/String;

.field private selCustomerId:Ljava/lang/String;

.field private selSegmentID:I

.field private tabHost:Landroid/widget/TabHost;

.field private tag:Ljava/lang/String;

.field private territoryDetailsText:Landroid/widget/TextView;

.field private tvAddCrop:Landroid/widget/TextView;

.field private tvCropid:Landroid/widget/TextView;

.field private tvFarmer:Landroid/widget/TextView;

.field private tvIsBayerFarmer:Landroid/widget/TextView;

.field private tvLatitude:Landroid/widget/TextView;

.field private final tvLatitudeListener:Landroid/text/TextWatcher;

.field private tvLongitude:Landroid/widget/TextView;

.field private tvRetailers:Landroid/widget/TextView;

.field private visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

.field private zipFilePath:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 115
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 118
    const-string v0, "MBAActivity"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->dateDialogID:I

    .line 131
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->farmerID:Ljava/lang/String;

    .line 132
    iput v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->packageId:I

    .line 163
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->selCustomerId:Ljava/lang/String;

    .line 165
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->segmentName:Ljava/lang/String;

    .line 166
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->GPSTimeStamp:Ljava/lang/String;

    .line 188
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->isMIActivity:Z

    .line 189
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->locationProvider:Ljava/lang/String;

    .line 660
    new-instance v0, Lcom/conceptglobal/pmc/fo/MBAActivity$8;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/MBAActivity$8;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvLatitudeListener:Landroid/text/TextWatcher;

    .line 1536
    new-instance v0, Lcom/conceptglobal/pmc/fo/MBAActivity$20;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/MBAActivity$20;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 1753
    new-instance v0, Lcom/conceptglobal/pmc/fo/MBAActivity$25;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/MBAActivity$25;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->message:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/MBAActivity;)Ljava/util/List;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->images:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fo/MBAActivity;J)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/MBAActivity;->captureImage(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/EditText;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etCultivated:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/TextView;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvLatitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/TextView;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvLongitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/EditText;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etCropDos:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fo/MBAActivity;)I
    .locals 0

    .line 115
    iget p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->dateDialogID:I

    return p0
.end method

.method static synthetic access$1402(Lcom/conceptglobal/pmc/fo/MBAActivity;I)I
    .locals 0

    .line 115
    iput p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->dateDialogID:I

    return p1
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fo/MBAActivity;)Lcom/conceptglobal/pmc/common/Queries;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/TextView;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvCropid:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fo/MBAActivity;)Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/EditText;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etCropAccr:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fo/MBAActivity;)Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->farmerID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/MBAActivity;)I
    .locals 0

    .line 115
    iget p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityId:I

    return p0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/fo/MBAActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/EditText;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etCropName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/fo/MBAActivity;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->setListviewForAcreages()V

    return-void
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/fo/MBAActivity;)Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->GPSTimeStamp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/conceptglobal/pmc/fo/MBAActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->GPSTimeStamp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/fo/MBAActivity;I)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->saveDataIntoDataBase(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fo/MBAActivity;)I
    .locals 0

    .line 115
    iget p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mYear:I

    return p0
.end method

.method static synthetic access$2502(Lcom/conceptglobal/pmc/fo/MBAActivity;I)I
    .locals 0

    .line 115
    iput p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mYear:I

    return p1
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/fo/MBAActivity;)I
    .locals 0

    .line 115
    iget p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mMonth:I

    return p0
.end method

.method static synthetic access$2602(Lcom/conceptglobal/pmc/fo/MBAActivity;I)I
    .locals 0

    .line 115
    iput p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mMonth:I

    return p1
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fo/MBAActivity;)I
    .locals 0

    .line 115
    iget p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mDay:I

    return p0
.end method

.method static synthetic access$2702(Lcom/conceptglobal/pmc/fo/MBAActivity;I)I
    .locals 0

    .line 115
    iput p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mDay:I

    return p1
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fo/MBAActivity;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->showRemarkSelectionAlert()V

    return-void
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/fo/MBAActivity;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->prepareAttributeData()V

    return-void
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/TextView;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->territoryDetailsText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/fo/MBAActivity;)Ljava/util/List;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->listAttributes_Assgnmt:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/conceptglobal/pmc/fo/MBAActivity;)I
    .locals 0

    .line 115
    iget p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    return p0
.end method

.method static synthetic access$3200(Lcom/conceptglobal/pmc/fo/MBAActivity;)I
    .locals 0

    .line 115
    iget p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->assignmentId:I

    return p0
.end method

.method static synthetic access$3300(Lcom/conceptglobal/pmc/fo/MBAActivity;)I
    .locals 0

    .line 115
    iget p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->segmentId:I

    return p0
.end method

.method static synthetic access$3400(Lcom/conceptglobal/pmc/fo/MBAActivity;)Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/conceptglobal/pmc/fo/MBAActivity;)I
    .locals 0

    .line 115
    iget p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->packageId:I

    return p0
.end method

.method static synthetic access$3600(Lcom/conceptglobal/pmc/fo/MBAActivity;)[Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->remarkNames:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/EditText;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etDiscription:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/conceptglobal/pmc/fo/MBAActivity;)Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->locationProvider:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/conceptglobal/pmc/fo/MBAActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->imagelist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/TabHost;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method static synthetic access$4002(Lcom/conceptglobal/pmc/fo/MBAActivity;Z)Z
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->isImageDeleted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/view/MenuItem;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->miDraft:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fo/MBAActivity;)Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->isMIActivity:Z

    return p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/content/Context;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/EditText;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etOwned:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/EditText;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etLeasedin:Landroid/widget/EditText;

    return-object p0
.end method

.method private addTab(Ljava/lang/String;ILjava/lang/String;)V
    .locals 11

    .line 349
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 350
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    const v3, 0x7f0c0135

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090459

    .line 351
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 352
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090230

    .line 353
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 354
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 355
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 356
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10023c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const p2, 0x7f090414

    if-eqz p1, :cond_0

    .line 357
    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto/16 :goto_0

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10023d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f090415

    .line 359
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto/16 :goto_0

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10023e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 361
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->isMIActivity:Z

    const/16 p2, 0x2000

    const/high16 p3, 0x20000

    const-string v1, "MODELCLASS"

    const-string v2, "ActivityAssignmentId"

    const-string v3, "AssignmentId"

    const-string v5, "ACTIVITYNAME"

    const-string v6, "ISSELFASSIGN"

    const-string v7, "SEGMENTID"

    const/4 v8, 0x1

    if-eqz p1, :cond_2

    .line 362
    new-instance p1, Landroid/content/Intent;

    iget-object v9, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->context:Landroid/content/Context;

    const-class v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-direct {p1, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 363
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    iget v9, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->segmentId:I

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 366
    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 367
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityName:Ljava/lang/String;

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    iget v4, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->assignmentId:I

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    iget v3, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 370
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityId:I

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 371
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 373
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 374
    invoke-virtual {p1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 375
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 377
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto/16 :goto_0

    .line 379
    :cond_2
    new-instance p1, Landroid/content/Intent;

    iget-object v9, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->context:Landroid/content/Context;

    const-class v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-direct {p1, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 380
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    iget v9, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->segmentId:I

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 383
    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityName:Ljava/lang/String;

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    iget v4, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->assignmentId:I

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    iget v3, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 388
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 389
    invoke-virtual {p1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 390
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 391
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 395
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 398
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10023f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f090417

    .line 399
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 400
    :cond_4
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f100240

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f090418

    .line 401
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 403
    :cond_5
    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 405
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method private captureImage(J)V
    .locals 5

    .line 1573
    new-instance v0, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    .line 1574
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->setPictureReportingContext(Landroid/content/Context;)V

    .line 1575
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1576
    const-string v1, "activityId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1577
    const-string v1, "assignmentId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->assignmentId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1579
    :try_start_0
    const-string v1, "setReferenceType"

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    const-string v4, "ToDo"

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1581
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1582
    const-string v2, "MBAActivity"

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1584
    :goto_0
    iget v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setReferenceID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1585
    const-string v1, "attributeId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1586
    const-string v1, "farmerId"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1587
    const-string v1, "imageId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1588
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private checkCustomerDetails()Z
    .locals 6

    const/4 v0, 0x0

    .line 1062
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->segmentId:I

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1063
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v3, "ActivityCustomerSelection"

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 1064
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->selCustomerId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->selSegmentID:I

    if-nez v1, :cond_0

    .line 1065
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plsSelectCustomerToast()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 1073
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private checkImagesMandatory()Z
    .locals 6

    const/4 v0, 0x0

    .line 1800
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityId:I

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getImageIsMandatory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 1801
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1802
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plsSelectImageToast()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 1809
    const-string v2, "MBAActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private checkTerritorydetails()Z
    .locals 4

    const/4 v0, 0x0

    .line 1084
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->territoryDetailsText:Landroid/widget/TextView;

    const v2, 0x7f100001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1086
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plsSelectTerritory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1091
    const-string v2, "MBAActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private fetchLocation()V
    .locals 4

    .line 1401
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 1405
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fo/MBAActivity$17;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/MBAActivity$17;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V

    const-string v2, "MBAActivity"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1423
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getData()V
    .locals 4

    .line 415
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 416
    const-string v1, "MODELCLASS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    .line 417
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->intentGetData:Landroid/content/Intent;

    const-string v1, "farmerId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->farmerID:Ljava/lang/String;

    .line 418
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->intentGetData:Landroid/content/Intent;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 419
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->intentGetData:Landroid/content/Intent;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityId:I

    .line 420
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->intentGetData:Landroid/content/Intent;

    const-string v1, "AssignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->assignmentId:I

    .line 421
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->intentGetData:Landroid/content/Intent;

    const-string v1, "ACTIVITYNAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityName:Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->intentGetData:Landroid/content/Intent;

    const-string v1, "SEGMENTID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->segmentId:I

    .line 423
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->intentGetData:Landroid/content/Intent;

    const-string v1, "ActivityAssignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    .line 424
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->intentGetData:Landroid/content/Intent;

    const-string v1, "PackageId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->packageId:I

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->lastVisitData:Ljava/util/List;

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->segmentId:I

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Details"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 430
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->segmentId:I

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->segmentName:Ljava/lang/String;

    .line 431
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, ")"

    const-string v3, " Details("

    if-eq v0, v1, :cond_0

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->segmentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 436
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->segmentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 438
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getAssignmentVisitDetail(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getAssignmentVisitDetail(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityId:I

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getQueryActivityType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 441
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->isMIActivity:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 445
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private initialization()V
    .locals 3

    .line 276
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->context:Landroid/content/Context;

    .line 277
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->intentGetData:Landroid/content/Intent;

    .line 278
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    .line 279
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    const v0, 0x7f09041e

    .line 280
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090561

    .line 281
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnOwned:Landroid/widget/Button;

    .line 282
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090551

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnLeasedin:Landroid/widget/Button;

    .line 283
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090552

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnLeasedout:Landroid/widget/Button;

    .line 284
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090518

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnCultivated:Landroid/widget/Button;

    .line 285
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901b8

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etOwned:Landroid/widget/EditText;

    .line 286
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901ab

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etLeasedin:Landroid/widget/EditText;

    .line 287
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901a8

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etTotalLandHolding:Landroid/widget/EditText;

    .line 288
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901ac

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etLeasedout:Landroid/widget/EditText;

    .line 289
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090197

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etCultivated:Landroid/widget/EditText;

    .line 290
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090090

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvAddCrop:Landroid/widget/TextView;

    .line 291
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0902d8

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->lvCrops:Landroid/widget/ListView;

    .line 292
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09052b

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvFarmer:Landroid/widget/TextView;

    .line 293
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09051c

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnDealer:Landroid/widget/Button;

    .line 294
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090521

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnDiscription:Landroid/widget/Button;

    .line 295
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09019a

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etDiscription:Landroid/widget/EditText;

    .line 296
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090502

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvIsBayerFarmer:Landroid/widget/TextView;

    .line 297
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090575

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvRetailers:Landroid/widget/TextView;

    .line 299
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900b4

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnSave:Landroid/widget/Button;

    .line 300
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnInactive:Landroid/widget/Button;

    .line 301
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnVisit:Landroid/widget/Button;

    .line 302
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0905bd

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->custDetailsText:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 303
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f090081

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnCustomerDetails:Landroid/widget/Button;

    .line 305
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f0905c0

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->territoryDetailsText:Landroid/widget/TextView;

    .line 307
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f090084

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnTerritoryDetails:Landroid/widget/Button;

    .line 309
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0902de

    .line 310
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->lvLastVisitData:Landroid/widget/ListView;

    .line 311
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnDealer:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvRetailers:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnLatLng:Landroid/widget/ImageView;

    .line 314
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09054d

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvLatitude:Landroid/widget/TextView;

    .line 315
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090556

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvLongitude:Landroid/widget/TextView;

    .line 316
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvLatitude:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvLatitudeListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 319
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090239

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityImage:Landroid/widget/ImageView;

    .line 320
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09021b

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->gridView:Landroid/widget/GridView;

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->imagelist:Ljava/util/ArrayList;

    return-void
.end method

.method private insertPictureData()V
    .locals 8

    .line 1593
    const-string v0, "MBAActivity"

    .line 1597
    new-instance v1, Lcom/conceptglobal/pmc/model/PictureReportingData;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/model/PictureReportingData;-><init>()V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 1598
    :goto_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1600
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setImageId(J)V

    .line 1601
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    const-string v7, "ToDo"

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 1603
    invoke-static {v0, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1604
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1609
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setActivityId(Ljava/lang/String;)V

    .line 1611
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPicturePath(Ljava/lang/String;)V

    .line 1613
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPdaCreatedDate(Ljava/lang/String;)V

    .line 1614
    const-string v5, "false"

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setServerStatus(Ljava/lang/String;)V

    .line 1615
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPDAID(Ljava/lang/String;)V

    .line 1616
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setCreatedBy(Ljava/lang/String;)V

    .line 1617
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setCreatedDate(Ljava/lang/String;)V

    .line 1618
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setUpdatedBy(Ljava/lang/String;)V

    .line 1619
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setUpdatedDate(Ljava/lang/String;)V

    .line 1620
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setReferenceType(Ljava/lang/String;)V

    .line 1621
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->assignmentId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setAssignmentId(Ljava/lang/String;)V

    .line 1622
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setActivityId(Ljava/lang/String;)V

    .line 1623
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setReferenceID(Ljava/lang/String;)V

    .line 1626
    :try_start_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->context:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertPictureDetails(Lcom/conceptglobal/pmc/model/PictureReportingData;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    .line 1628
    invoke-static {v0, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1629
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private isValidData(Z)Z
    .locals 13

    .line 1106
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->listAttributes_Assgnmt:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1111
    :goto_0
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "MBAActivity"

    if-ge v2, v4, :cond_a

    .line 1112
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1133
    :try_start_0
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "0"

    const-string v8, "TextBoxND"

    const-wide/16 v9, 0x0

    const-string v11, "TextBoxN"

    if-ne v6, v0, :cond_5

    .line 1134
    :try_start_1
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :goto_1
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1137
    :cond_1
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v12

    if-ge v6, v12, :cond_2

    const/4 v3, 0x0

    .line 1140
    :cond_2
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_3
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v11

    cmp-long v6, v11, v9

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    cmp-long v8, v6, v4

    if-gez v8, :cond_9

    goto :goto_1

    .line 1145
    :cond_5
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    .line 1146
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v12

    if-ge v6, v12, :cond_6

    const/4 v3, 0x0

    .line 1149
    :cond_6
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_7
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v11

    cmp-long v6, v11, v9

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_8
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    cmp-long v8, v6, v4

    if-gez v8, :cond_9

    goto/16 :goto_1

    :catch_0
    move-exception v4

    .line 1155
    invoke-static {v5, v4}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    if-nez v3, :cond_b

    if-eqz p1, :cond_b

    .line 1161
    :try_start_2
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ctx:Landroid/content/Context;

    check-cast p1, Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;

    .line 1162
    invoke-interface {p1, v0}, Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;->onValidate(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 1164
    invoke-static {v5, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1166
    :goto_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 1169
    :cond_b
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityId:I

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getIsLatLongMandatory(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLondMandatory(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v0, :cond_d

    .line 1170
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_c

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_d

    .line 1171
    :cond_c
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 1172
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_d
    move v1, v3

    :goto_4
    return v1

    .line 1107
    :cond_e
    :goto_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return v1
.end method

.method private prepareAttributeData()V
    .locals 8

    .line 1184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1185
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1186
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v5

    const-string v6, ""

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "test"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Dropdown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1195
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1196
    :cond_1
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Multiselect Dropdown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1198
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 1199
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1201
    array-length v5, v4

    if-lez v5, :cond_4

    .line 1202
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    .line 1210
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_4

    .line 1211
    new-instance v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    .line 1212
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeId(I)V

    .line 1213
    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 1215
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1219
    :cond_2
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1220
    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto :goto_3

    .line 1222
    :cond_3
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1231
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 1232
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1233
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 1234
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1235
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    if-eqz v3, :cond_6

    .line 1236
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 1237
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method private saveDataIntoDataBase(I)V
    .locals 35

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 956
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->insertPictureData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 958
    const-string v3, "MBAACTIVITY"

    const-string v4, ""

    const/4 v5, 0x1

    const-string v6, "FarmerFormActivity"

    const-string v7, "0"

    const v8, 0x7f100001

    if-eq v0, v5, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_8

    .line 1016
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->prepareAttributeData()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 1019
    :try_start_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1020
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->farmerID:Ljava/lang/String;

    iget v10, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityId:I

    iget v11, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    invoke-virtual {v5, v9, v10, v11}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsActivity(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 1022
    :cond_1
    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->listAttributes_Assgnmt:Ljava/util/List;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->farmerID:Ljava/lang/String;

    iget v11, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityId:I

    iget v14, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->assignmentId:I

    iget v15, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->segmentId:I

    iget v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    iget v13, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->packageId:I

    const/4 v12, 0x1

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v21, v13

    move/from16 v13, v16

    move-wide/from16 v16, v17

    move/from16 v18, v19

    move/from16 v19, v0

    move-object/from16 v20, v5

    invoke-static/range {v9 .. v21}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsUpdate(Ljava/util/List;Ljava/lang/String;IIIIIJIILcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1025
    :try_start_3
    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1028
    :goto_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1030
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_1

    :cond_2
    move-object v13, v7

    .line 1032
    :goto_1
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->selCustomerId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->selSegmentID:I

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v0, :cond_5

    .line 1034
    :cond_4
    :try_start_4
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->selCustomerId:Ljava/lang/String;

    iget v9, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->selSegmentID:I

    iget v10, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    const-wide/16 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateAssignmentActivitiesCustomerDetails(Ljava/lang/String;IIJLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1036
    :try_start_5
    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1040
    :cond_5
    :goto_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget v4, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityId:I

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->farmerID:Ljava/lang/String;

    iget v7, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    invoke-virtual {v3, v4, v5, v7, v2}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForActivities(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 1041
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForAssignmentvisit(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 1042
    iget v7, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->assignmentId:I

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->farmerID:Ljava/lang/String;

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iget v12, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    const-string v15, "0"

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->locationProvider:Ljava/lang/String;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->GPSTimeStamp:Ljava/lang/String;

    const-string v18, ""

    const-string v19, ""

    const-wide/16 v13, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    invoke-static/range {v7 .. v19}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1044
    :cond_6
    iget v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->assignmentId:I

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->farmerID:Ljava/lang/String;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    iget v3, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    const-string v28, "0"

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->locationProvider:Ljava/lang/String;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->GPSTimeStamp:Ljava/lang/String;

    const-string v31, ""

    const-string v32, ""

    const-wide/16 v26, 0x0

    move/from16 v20, v0

    move-object/from16 v21, v2

    move/from16 v25, v3

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    invoke-static/range {v20 .. v32}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 1047
    :try_start_6
    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1049
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->finish()V

    goto/16 :goto_8

    .line 964
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->prepareAttributeData()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 966
    :try_start_7
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 967
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->farmerID:Ljava/lang/String;

    iget v10, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityId:I

    iget v11, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    invoke-virtual {v5, v9, v10, v11}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsActivity(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 969
    :cond_8
    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->listAttributes_Assgnmt:Ljava/util/List;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->farmerID:Ljava/lang/String;

    iget v11, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityId:I

    iget v14, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->assignmentId:I

    iget v15, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->segmentId:I

    iget v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    iget v13, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->packageId:I

    const/4 v12, 0x1

    const/16 v16, 0x1

    const-wide/16 v17, 0x0

    const/16 v19, 0x1

    move/from16 v21, v13

    move/from16 v13, v16

    move-wide/from16 v16, v17

    move/from16 v18, v19

    move/from16 v19, v0

    move-object/from16 v20, v5

    invoke-static/range {v9 .. v21}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsUpdate(Ljava/util/List;Ljava/lang/String;IIIIIJIILcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;I)V

    .line 970
    :goto_4
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 971
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->images:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catch_3
    move-exception v0

    .line 975
    :try_start_8
    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 978
    :cond_9
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v5, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForAssignmentvisit(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    .line 979
    iget v9, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->assignmentId:I

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->farmerID:Ljava/lang/String;

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    iget v14, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    const-string v17, "false"

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->locationProvider:Ljava/lang/String;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->GPSTimeStamp:Ljava/lang/String;

    const-string v20, ""

    const-string v21, ""

    const-wide/16 v15, 0x0

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    invoke-static/range {v9 .. v21}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 981
    :cond_a
    iget v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->assignmentId:I

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->farmerID:Ljava/lang/String;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v25

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v26

    iget v5, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    const-string v30, "false"

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->locationProvider:Ljava/lang/String;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->GPSTimeStamp:Ljava/lang/String;

    const-string v33, ""

    const-string v34, ""

    const-wide/16 v28, 0x0

    move/from16 v22, v0

    move-object/from16 v23, v2

    move/from16 v27, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v9

    invoke-static/range {v22 .. v34}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    :goto_5
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v9

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->farmerID:Ljava/lang/String;

    iget v11, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityId:I

    iget v12, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    const-wide/16 v13, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/conceptglobal/pmc/common/Queries;->getchildDetailsActivity(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->updateChildTransactionDetails(Ljava/lang/String;)V

    .line 991
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 993
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_6

    :cond_b
    move-object v13, v7

    .line 995
    :goto_6
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->selCustomerId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->selSegmentID:I

    if-nez v0, :cond_d

    :cond_c
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    if-nez v0, :cond_e

    .line 997
    :cond_d
    :try_start_9
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->selCustomerId:Ljava/lang/String;

    iget v9, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->selSegmentID:I

    iget v10, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    const-wide/16 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateAssignmentActivitiesCustomerDetails(Ljava/lang/String;IIJLjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    .line 999
    :try_start_a
    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1003
    :cond_e
    :goto_7
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1005
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 1006
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    .line 1008
    :cond_f
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x10008000

    .line 1009
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1010
    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->startActivity(Landroid/content/Intent;)V

    .line 1011
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->finish()V

    goto :goto_8

    .line 960
    :cond_10
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_saveNCloseDialogInUFA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lcom/conceptglobal/pmc/fo/MBAActivity;->showAlertCancel(Ljava/lang/String;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    .line 1056
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/MBAActivity;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8
    return-void
.end method

.method private setActionBar()V
    .locals 4

    .line 253
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 254
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 255
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 256
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 257
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    .line 258
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090591

    .line 259
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090581

    .line 260
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    .line 261
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addFarmerDetailsText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setAdapter()V
    .locals 3

    .line 1635
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailsQry_Assignment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->images:Ljava/util/List;

    .line 1636
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1637
    new-instance v0, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->images:Ljava/util/List;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->imagelist:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    .line 1638
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->gridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1639
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1640
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->gridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 1642
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->gridView:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setLayoutData()V
    .locals 11

    .line 456
    const-string v0, ""

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnDealer:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_prefDealerInFFA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnDiscription:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_visitDescInUFA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etDiscription:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addDescInFFA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnSave:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draftFarmerText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnSave:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 461
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnInactive:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_discardText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnVisit:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_visitCompleteButtonText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnVisit:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 464
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnVisit:Landroid/widget/Button;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 465
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnVisit:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setSingleLine(Z)V

    const/4 v1, 0x0

    .line 467
    :try_start_0
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_5

    const v4, 0x7f100001

    .line 469
    :try_start_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v7, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryDraftQuery(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 472
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->territoryDetailsText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    invoke-virtual {v10, v5}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 475
    :cond_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v7, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    invoke-virtual {v6, v7, v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->getEcexutionSegmentIdDraftQuery(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 478
    iput v5, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->selSegmentID:I

    .line 479
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v7, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityAssignmentId:I

    invoke-virtual {v6, v7, v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->getEcexutionSegmentValueDraftQuery(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->selCustomerId:Ljava/lang/String;

    .line 480
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v8, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->selSegmentID:I

    invoke-virtual {v7, v5, v8}, Lcom/conceptglobal/pmc/common/Queries;->getCustomerNameBySegmentValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 481
    iget v6, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->selSegmentID:I

    if-eq v6, v3, :cond_1

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    if-ne v6, v2, :cond_2

    .line 482
    :cond_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->custDetailsText:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/conceptglobal/pmc/utils/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 484
    :cond_2
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->custDetailsText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 488
    :try_start_2
    const-string v5, "MBAActivity"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 492
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    invoke-virtual {v5, v1}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryNamesListQuery(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTerritoryDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 493
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 495
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/TerritoryMaster;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/TerritoryMaster;->getTerritoryName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/TerritoryMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/TerritoryMaster;->getTerritoryId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 500
    :cond_4
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etDiscription:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getVisitDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getLatitude()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_5

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getLongitude()D

    move-result-wide v2

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_5

    .line 502
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvLatitude:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvLongitude:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 507
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tag:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private setListeners()V
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvAddCrop:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnInactive:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnVisit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->lvCrops:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 569
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvRetailers:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->btnLatLng:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->custDetailsText:Landroid/widget/TextView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/MBAActivity$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/MBAActivity$3;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->territoryDetailsText:Landroid/widget/TextView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/MBAActivity$4;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/MBAActivity$4;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    new-instance v1, Lcom/conceptglobal/pmc/fo/MBAActivity$5;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/MBAActivity$5;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 612
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etOwned:Landroid/widget/EditText;

    new-instance v1, Lcom/conceptglobal/pmc/fo/MBAActivity$6;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/MBAActivity$6;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 635
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etLeasedin:Landroid/widget/EditText;

    new-instance v1, Lcom/conceptglobal/pmc/fo/MBAActivity$7;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/MBAActivity$7;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private setListviewForAcreages()V
    .locals 3

    .line 549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->listFarmerCrops:Ljava/util/List;

    .line 550
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getCropsandAcreages(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getCropSelectionData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->listFarmerCrops:Ljava/util/List;

    .line 551
    new-instance v0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->listFarmerCrops:Ljava/util/List;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->farmerID:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->adapterCrops:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;

    .line 552
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->lvCrops:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 554
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->lvCrops:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/ListviewFillToParent;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    return-void
.end method

.method private settingData()V
    .locals 2

    .line 518
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 519
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mYear:I

    const/4 v1, 0x2

    .line 520
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mMonth:I

    const/4 v1, 0x5

    .line 521
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mDay:I

    return-void
.end method

.method private settingTabs()V
    .locals 3

    .line 331
    new-instance v0, Landroid/app/LocalActivityManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    const/4 v1, 0x0

    .line 332
    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 333
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 338
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_activityLastVisitText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10023e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080112

    invoke-direct {p0, v0, v2, v1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 339
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_finishTabSelfAssignText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10023f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080166

    invoke-direct {p0, v0, v2, v1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V
    .locals 9

    .line 687
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 688
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v2, 0x7f0c0056

    .line 689
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x7f090193

    .line 690
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etCropAccr:Landroid/widget/EditText;

    const v2, 0x7f0900b2

    .line 691
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0900a8

    .line 692
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f090192

    .line 693
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etCropName:Landroid/widget/EditText;

    const v4, 0x7f090194

    .line 694
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etCropDos:Landroid/widget/EditText;

    const v4, 0x7f0905a7

    .line 695
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvCropid:Landroid/widget/TextView;

    .line 696
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etCropAccr:Landroid/widget/EditText;

    const/16 v5, 0x2002

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 697
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etCropAccr:Landroid/widget/EditText;

    new-array v5, v1, [Landroid/text/InputFilter;

    new-instance v6, Lcom/conceptglobal/pmc/fo/MBAActivity$DecimalDigitsInputFilter;

    const/4 v7, 0x6

    const/4 v8, 0x2

    invoke-direct {v6, p0, v7, v8}, Lcom/conceptglobal/pmc/fo/MBAActivity$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;II)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v4, -0x777778

    .line 698
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    if-eqz p3, :cond_0

    .line 700
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etCropDos:Landroid/widget/EditText;

    invoke-virtual {v4, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-nez p4, :cond_1

    .line 703
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etCropAccr:Landroid/widget/EditText;

    const/16 v4, 0x8

    invoke-virtual {p3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 704
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etCropDos:Landroid/widget/EditText;

    invoke-virtual {p3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 706
    :cond_1
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etCropAccr:Landroid/widget/EditText;

    invoke-virtual {p3, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 707
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etCropDos:Landroid/widget/EditText;

    invoke-virtual {p3, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 709
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_2

    .line 710
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etCropName:Landroid/widget/EditText;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 711
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvCropid:Landroid/widget/TextView;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etCropAccr:Landroid/widget/EditText;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 714
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etCropName:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etCropAccr:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 717
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etCropAccr:Landroid/widget/EditText;

    new-instance p2, Lcom/conceptglobal/pmc/fo/MBAActivity$9;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fo/MBAActivity$9;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 744
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etCropDos:Landroid/widget/EditText;

    new-instance p2, Lcom/conceptglobal/pmc/fo/MBAActivity$10;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fo/MBAActivity$10;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 756
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->etCropName:Landroid/widget/EditText;

    new-instance p2, Lcom/conceptglobal/pmc/fo/MBAActivity$11;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fo/MBAActivity$11;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tvCropid:Landroid/widget/TextView;

    new-instance p2, Lcom/conceptglobal/pmc/fo/MBAActivity$12;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fo/MBAActivity$12;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 814
    new-instance p1, Lcom/conceptglobal/pmc/fo/MBAActivity$13;

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/pmc/fo/MBAActivity$13;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 851
    new-instance p1, Lcom/conceptglobal/pmc/fo/MBAActivity$14;

    invoke-direct {p1, p0, v3}, Lcom/conceptglobal/pmc/fo/MBAActivity$14;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;Landroid/widget/Button;)V

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 865
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 866
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 867
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 868
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 869
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showAlertCancel(Ljava/lang/String;I)V
    .locals 3

    .line 1436
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1437
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/MBAActivity$19;

    invoke-direct {v2, p0, p2}, Lcom/conceptglobal/pmc/fo/MBAActivity$19;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;I)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1454
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/conceptglobal/pmc/fo/MBAActivity$18;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/MBAActivity$18;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1460
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1461
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1462
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showDiscardAlert()V
    .locals 3

    .line 1646
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1650
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_discardSelfAssignConfirmDialog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1652
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/MBAActivity$21;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/MBAActivity$21;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1660
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/MBAActivity$22;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/MBAActivity$22;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1669
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1670
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1671
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showGoBackDialog()V
    .locals 4

    .line 1289
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1290
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addCustomerGoBackDialog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/fo/MBAActivity$15;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fo/MBAActivity$15;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1296
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/MBAActivity$16;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/MBAActivity$16;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1303
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1304
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1305
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showRemarkSelectionAlert()V
    .locals 6

    .line 1679
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    const-string v1, "SELECT itemType,itemValue FROM ConfigurableLookupMaster where itemKey=\'DiscardRemarks\'"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getlotdata(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    .line 1681
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->remarkNames:[Ljava/lang/String;

    .line 1682
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->remarkids:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1684
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1685
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->remarkids:[Ljava/lang/String;

    aget-object v4, v0, v2

    aget-object v4, v4, v1

    aput-object v4, v3, v2

    .line 1686
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->remarkNames:[Ljava/lang/String;

    aget-object v4, v0, v2

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1688
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1690
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectReasonDiscardTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1691
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->remarkNames:[Ljava/lang/String;

    new-instance v2, Lcom/conceptglobal/pmc/fo/MBAActivity$23;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/MBAActivity$23;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1741
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->d_remarks:Landroid/app/Dialog;

    .line 1742
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1743
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->d_remarks:Landroid/app/Dialog;

    new-instance v1, Lcom/conceptglobal/pmc/fo/MBAActivity$24;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/MBAActivity$24;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method public GetData(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;",
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;",
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;)V"
        }
    .end annotation

    .line 1496
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->listAttributes_Assgnmt:Ljava/util/List;

    .line 1497
    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    .line 1498
    iput-object p3, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    return-void
.end method

.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 266
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

.method public getFragmentsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1335
    invoke-super {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 p2, 0x65

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 1377
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->imagelist:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1378
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->setAdapter()V

    goto/16 :goto_1

    :cond_1
    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    .line 1340
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

    .line 1345
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYRETAILERID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    .line 1355
    const-string p1, "FarmerId"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1356
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->selCustomerId:Ljava/lang/String;

    .line 1358
    :cond_4
    const-string p2, "SegmentId"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 1359
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->selSegmentID:I

    .line 1361
    :cond_5
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->selCustomerId:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    iget p2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->selSegmentID:I

    if-eqz p2, :cond_6

    .line 1363
    :try_start_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->custDetailsText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FarmerName"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1365
    const-string p3, "MBAACTIVITY"

    invoke-static {p3, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1368
    :cond_6
    :goto_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 1369
    const-string p3, "FARMER_SELECTED"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1370
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->selCustomerId:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1371
    invoke-virtual {p0, p2}, Lcom/conceptglobal/pmc/fo/MBAActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_7
    const/4 p1, -0x1

    if-eq p2, p1, :cond_9

    if-eqz p2, :cond_8

    goto :goto_1

    .line 1389
    :cond_8
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "GPSNotTurnedOn"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 1384
    :cond_9
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->fetchLocation()V

    :cond_a
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 881
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 882
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 905
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0xa

    .line 906
    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 935
    :sswitch_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 936
    const-string v0, "activityId"

    iget v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->activityId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 937
    const-string v0, "farmerId"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x65

    .line 938
    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_2
    const/4 p1, 0x1

    .line 897
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->isValidData(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->checkCustomerDetails()Z

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->checkTerritorydetails()Z

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->checkImagesMandatory()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 899
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_confirmVisitCompleteDialogText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->showAlertCancel(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_3
    const/4 p1, 0x2

    .line 887
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->saveDataIntoDataBase(I)V

    goto :goto_0

    .line 892
    :sswitch_4
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->showDiscardAlert()V

    goto :goto_0

    .line 910
    :sswitch_5
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->fetchLocation()V

    goto :goto_0

    .line 884
    :sswitch_6
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090090 -> :sswitch_6
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

    .line 1477
    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1478
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->tabHost:Landroid/widget/TabHost;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_0
    return-void
.end method

.method public onComprssCompleteListener(Ljava/lang/String;)V
    .locals 0

    .line 1508
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->setAdapter()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 201
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00dc

    .line 205
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->setContentView(I)V

    .line 206
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->context:Landroid/content/Context;

    .line 207
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 208
    new-instance p1, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 209
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->initialization()V

    .line 210
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getData()V

    .line 211
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->settingTabs()V

    .line 212
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->setLayoutData()V

    .line 213
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->settingData()V

    .line 214
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->setListeners()V

    .line 218
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->gridView:Landroid/widget/GridView;

    new-instance v0, Lcom/conceptglobal/pmc/fo/MBAActivity$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/MBAActivity$1;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f0901de

    .line 228
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    .line 230
    new-instance v0, Lcom/conceptglobal/pmc/fo/MBAActivity$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/MBAActivity$2;-><init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->message:Landroid/content/BroadcastReceiver;

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

    .line 1470
    :cond_0
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mYear:I

    iget v4, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mMonth:I

    iget v5, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mDay:I

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 1260
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09024c

    .line 1261
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->miDraft:Landroid/view/MenuItem;

    .line 1262
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draftFarmerText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1263
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->miDraft:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1264
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 1788
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->message:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1789
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1248
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->listFarmerCrops:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getCropName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->listFarmerCrops:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getAcreages()F

    move-result p2

    iget-object p4, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->listFarmerCrops:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {p4}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getDos()Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->listFarmerCrops:Ljava/util/List;

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getCropId()I

    move-result p3

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/conceptglobal/pmc/fo/MBAActivity;->showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1274
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f09024c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 1280
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->saveDataIntoDataBase(I)V

    .line 1283
    :goto_0
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 1276
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->showGoBackDialog()V

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1311
    const-string p2, "onRequestPermissionResult"

    const-string v0, "MBAActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 1313
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 1316
    const-string p1, "User interaction was cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1317
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 1319
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->fetchLocation()V

    goto :goto_0

    .line 1322
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1775
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    .line 1782
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->setAdapter()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1484
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1489
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onStop()V

    return-void
.end method
