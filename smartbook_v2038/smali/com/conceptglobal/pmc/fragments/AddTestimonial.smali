.class public Lcom/conceptglobal/pmc/fragments/AddTestimonial;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "AddTestimonial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fragments/AddTestimonial$DecimalDigitsInputFilter;,
        Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataInsertion;,
        Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;,
        Lcom/conceptglobal/pmc/fragments/AddTestimonial$VideoCompressor;
    }
.end annotation


# static fields
.field private static final DATEDIALOGID:I = 0x0

.field private static final DATEDIALOGID_YEARLESS:I = 0x1

.field private static final GET_CAM_IMG:I = 0x65

.field private static final INITIALCROPID:I = -0x1

.field private static final MY_CAMERA_REQUEST_CODE:I = 0x64

.field static final REQUEST_VIDEO_CAPTURE:I = 0x2

.field private static final RESULT_CODE_COMPRESS_VIDEO:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VideoCaptureActivity"

.field private static dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

.field private static farmerType:Ljava/lang/String;

.field private static isFraom:Ljava/lang/String;


# instance fields
.field _clickId:I

.field attribName:[Ljava/lang/String;

.field private attributesArry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/DynamicFields;",
            ">;"
        }
    .end annotation
.end field

.field private attributesOthersArry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/DynamicFields;",
            ">;"
        }
    .end annotation
.end field

.field private barcode:Ljava/lang/String;

.field bindQuery:Ljava/lang/String;

.field private btnCaptureVedio:Landroid/widget/Button;

.field private btnDraft:Landroid/widget/Button;

.field private btnLatLng:Landroid/widget/ImageView;

.field private btnRemarks:Landroid/widget/Button;

.field private btnSave:Landroid/widget/Button;

.field private btnSlectFile:Landroid/widget/Button;

.field private columnName:Ljava/lang/String;

.field compressedFile:Ljava/io/File;

.field private context:Landroid/content/Context;

.field private datePos:I

.field datesListener:Landroid/view/View$OnClickListener;

.field datesListenerYearless:Landroid/view/View$OnClickListener;

.field private defaultMaxDate:J

.field private defaultMinDate:J

.field private dialog:Landroid/app/Dialog;

.field private dialogMsgTxtview:Landroid/widget/TextView;

.field private draftStaticData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FarmerMaster;",
            ">;"
        }
    .end annotation
.end field

.field dynamicColumnnames:Ljava/lang/StringBuilder;

.field private edtDistrict:Landroid/widget/EditText;

.field private edtMandal:Landroid/widget/EditText;

.field private edtState:Landroid/widget/EditText;

.field private edtVillage:Landroid/widget/EditText;

.field private enableCropHybrids:I

.field private enableSowingDate:I

.field private etCropAccr:Landroid/widget/EditText;

.field private etCropDos:Landroid/widget/EditText;

.field private etCropName:Landroid/widget/EditText;

.field private etRemarks:Landroid/widget/EditText;

.field private ethybrid:Landroid/widget/EditText;

.field private farmerID:Ljava/lang/String;

.field private farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

.field private farmercount:I

.field private filePath:Ljava/lang/String;

.field private geoDetailsConditions:[[Ljava/lang/String;

.field geoDetailsET:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field geoDetailsTV:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private gridView:Landroid/widget/GridView;

.field private hAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

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

.field private imgFarmer:Landroid/widget/ImageView;

.field private img_view:Landroid/widget/ImageView;

.field private isFromAll:Z

.field private isFromTransaction:I

.field private isImageDeleted:Z

.field latlongTag:Ljava/lang/String;

.field private layoutId:I

.field private lvCrops:Landroid/widget/ListView;

.field private mAddDynamicLinear:Landroid/widget/LinearLayout;

.field private mAddDynamicLinearOthers:Landroid/widget/LinearLayout;

.field private mAddGeoDetailsInOthers:Landroid/widget/LinearLayout;

.field private mAddGeoDetailsInPersonal:Landroid/widget/LinearLayout;

.field private mAppConstants:Lcom/conceptglobal/pmc/common/ConstantsPMC;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDateSetListener_Yearless:Landroid/app/DatePickerDialog$OnDateSetListener;

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

.field private mFiledStr:Ljava/lang/String;

.field private mForDates:I

.field private mForOperations:I

.field private mListPopupOne:Lcom/conceptglobal/pmc/common/ListPopupOne;

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

.field masterTablecount:I

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

.field private mobile:Ljava/lang/String;

.field operationListener:Landroid/view/View$OnClickListener;

.field private plotLatlongs:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;

.field private progressDialog:Landroid/app/Dialog;

.field private progressdialog:Landroid/app/ProgressDialog;

.field private rulesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/RulesConfig;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private segmentID:I

.field private status:I

.field private tableName:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private tempFile:Ljava/io/File;

.field private tvAcreagesNote:Landroid/widget/TextView;

.field private tvAddCrop:Landroid/widget/TextView;

.field private tvCropid:Landroid/widget/TextView;

.field private tvImage:Landroid/widget/TextView;

.field private tvLatitude:Landroid/widget/TextView;

.field private tvLongitude:Landroid/widget/TextView;

.field private tvStatus:Landroid/widget/TextView;

.field private tvdistrictid:Landroid/widget/TextView;

.field private tvhybridid:Landroid/widget/TextView;

.field private tvmandalid:Landroid/widget/TextView;

.field private tvstateid:Landroid/widget/TextView;

.field private tvvillageid:Landroid/widget/TextView;

.field private txt:Landroid/widget/TextView;

.field private typeOfFarmer:I

.field private updateDOS:Ljava/lang/String;

.field private validationFailedMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 265
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 138
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 139
    const-string v0, "AddTestimonial"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tag:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 156
    iput-wide v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->defaultMinDate:J

    .line 157
    iput-wide v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->defaultMaxDate:J

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mFiledStr:Ljava/lang/String;

    const/4 v1, 0x0

    .line 164
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->datePos:I

    const/4 v2, 0x0

    .line 168
    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->hAttributes:Ljava/util/HashMap;

    .line 172
    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    .line 173
    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesOthersArry:Ljava/util/ArrayList;

    const/4 v2, -0x1

    .line 184
    iput v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mForOperations:I

    iput v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mForDates:I

    .line 187
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->layoutId:I

    .line 189
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->_clickId:I

    .line 208
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->enableCropHybrids:I

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->enableSowingDate:I

    .line 210
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->plotLatlongs:Ljava/lang/String;

    .line 226
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_stateText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_districtText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_mandalsText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_villageText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attribName:[Ljava/lang/String;

    .line 227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->geoDetailsTV:Ljava/util/ArrayList;

    .line 228
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->geoDetailsET:Ljava/util/ArrayList;

    .line 251
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->isFromTransaction:I

    .line 258
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->latlongTag:Ljava/lang/String;

    .line 266
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->rulesMap:Ljava/util/HashMap;

    .line 269
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->validationFailedMsg:Ljava/lang/String;

    .line 1217
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$4;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$4;-><init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->operationListener:Landroid/view/View$OnClickListener;

    .line 1851
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$5;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$5;-><init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->datesListener:Landroid/view/View$OnClickListener;

    .line 1861
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$6;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$6;-><init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->datesListenerYearless:Landroid/view/View$OnClickListener;

    .line 1972
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$8;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$8;-><init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 1995
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$9;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$9;-><init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mDateSetListener_Yearless:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 3965
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$15;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$15;-><init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->message:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Ljava/util/List;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->images:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fragments/AddTestimonial;J)V
    .locals 0

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->captureImage(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->updateDisplay()V

    return-void
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Ljava/lang/String;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->updateDisplay_yearless()V

    return-void
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Landroid/content/Context;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fragments/AddTestimonial;Ljava/lang/String;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->createProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Landroid/app/Dialog;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Z
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->validation()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->dataInsertion()V

    return-void
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Landroid/widget/TextView;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->dialogMsgTxtview:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Lcom/conceptglobal/pmc/database/GetDataFromDB;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Ljava/lang/String;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->validationFailedMsg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/conceptglobal/pmc/fragments/AddTestimonial;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->validationFailedMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)I
    .locals 0

    .line 138
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->isFromTransaction:I

    return p0
.end method

.method static synthetic access$2200()Ljava/lang/String;
    .locals 1

    .line 138
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Ljava/util/ArrayList;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->imagelist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/conceptglobal/pmc/fragments/AddTestimonial;Z)Z
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->isImageDeleted:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Landroid/widget/TextView;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tvLatitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Lcom/conceptglobal/pmc/model/FarmerMaster;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Ljava/io/File;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tempFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Landroid/widget/TextView;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tvStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Landroid/app/ProgressDialog;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->progressdialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/conceptglobal/pmc/fragments/AddTestimonial;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->progressdialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Ljava/util/ArrayList;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Ljava/util/ArrayList;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArrIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$502(Lcom/conceptglobal/pmc/fragments/AddTestimonial;I)I
    .locals 0

    .line 138
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->datePos:I

    return p1
.end method

.method static synthetic access$602(Lcom/conceptglobal/pmc/fragments/AddTestimonial;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->txt:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$702(Lcom/conceptglobal/pmc/fragments/AddTestimonial;I)I
    .locals 0

    .line 138
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mYear:I

    return p1
.end method

.method static synthetic access$802(Lcom/conceptglobal/pmc/fragments/AddTestimonial;I)I
    .locals 0

    .line 138
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mMonth:I

    return p1
.end method

.method static synthetic access$902(Lcom/conceptglobal/pmc/fragments/AddTestimonial;I)I
    .locals 0

    .line 138
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mDay:I

    return p1
.end method

.method private bindOperations()V
    .locals 9

    .line 655
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->bindQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerOrRetailerBindDataDynamic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mentryValues:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 657
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 660
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mentryValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 661
    :goto_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 662
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Dropdown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 663
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mentryValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DealerMaster"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "VideoCaptureActivity"

    if-eqz v1, :cond_0

    .line 666
    :try_start_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    const-string v6, "RetailerShopName"

    const-string v7, "ContactId"

    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mentryValues:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v6, v2, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getColumnValueWhereConditionBased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v1

    .line 668
    invoke-static {v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 670
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FarmerMaster"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 672
    :try_start_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    const-string v6, "FarmerName"

    const-string v7, "RespondentNo"

    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mentryValues:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v6, v2, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getColumnValueWhereConditionBased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 674
    invoke-static {v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 676
    :cond_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TerritoryMaster"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 678
    :try_start_3
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    const-string v6, "territoryName"

    const-string v7, "territoryId"

    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mentryValues:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v6, v2, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getColumnValueWhereConditionBased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    .line 680
    invoke-static {v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 683
    :cond_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mentryValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 686
    :cond_3
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mentryValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_4
    return-void
.end method

.method private captureImage(J)V
    .locals 7

    .line 3942
    const-string v0, "Village"

    const-string v1, "Planter"

    const-string v2, "Farmer"

    new-instance v3, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v3}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    invoke-virtual {v3, p0}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    .line 3943
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->setPictureReportingContext(Landroid/content/Context;)V

    .line 3944
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->context:Landroid/content/Context;

    const-class v5, Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3945
    const-string v4, "activityId"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3946
    const-string v4, "assignmentId"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3948
    :try_start_0
    sget-object v4, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "setReferenceType"

    if-eqz v4, :cond_0

    .line 3949
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v3, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 3950
    :cond_0
    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3951
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v3, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 3952
    :cond_1
    sget-object v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3953
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v3, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3956
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3958
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setReferenceID"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3959
    const-string v0, "attributeId"

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3960
    const-string v0, "farmerId"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerID:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3961
    const-string v0, "imageId"

    invoke-virtual {v3, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3962
    invoke-virtual {p0, v3}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private createOperationAttributes()V
    .locals 34

    move-object/from16 v15, p0

    const v0, 0x7f090335

    .line 900
    invoke-virtual {v15, v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    const v0, 0x7f09033c

    .line 901
    invoke-virtual {v15, v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mAddDynamicLinearOthers:Landroid/widget/LinearLayout;

    .line 902
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->hAttributes:Ljava/util/HashMap;

    .line 903
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mattributesnamesArr:Ljava/util/ArrayList;

    .line 904
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mOprDatesArr:Ljava/util/ArrayList;

    .line 905
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    .line 907
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArrIds:Ljava/util/ArrayList;

    .line 909
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerType:Ljava/lang/String;

    const-string v14, "Farmer"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Personal"

    const-string v13, "Village"

    const-string v12, "Planter"

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v1, v14}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    goto :goto_0

    .line 911
    :cond_0
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerType:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 912
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v1, v12}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    goto :goto_0

    .line 913
    :cond_1
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerType:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 914
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v1, v13}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    .line 916
    :cond_2
    :goto_0
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 918
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->hAttributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 920
    const-string v10, ","

    const/16 v16, 0x0

    if-lez v11, :cond_3

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v11, :cond_3

    .line 923
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->hAttributes:Ljava/util/HashMap;

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsMandatory()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    .line 925
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxLength()I

    move-result v8

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v17

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v18

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v19

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v20

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsTransactionEditable()I

    move-result v22

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Lcom/conceptglobal/pmc/model/DynamicFields;

    move-object/from16 v0, p0

    move/from16 v24, v9

    move/from16 v9, v17

    move-object/from16 v25, v10

    move/from16 v10, v18

    move/from16 v17, v11

    move/from16 v11, v19

    move-object/from16 v26, v12

    move/from16 v12, v20

    move-object/from16 v27, v13

    move-object/from16 v13, v21

    move-object/from16 v28, v14

    move/from16 v14, v22

    move-object/from16 v15, v23

    .line 924
    invoke-virtual/range {v0 .. v15}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILandroid/widget/LinearLayout;ILcom/conceptglobal/pmc/model/DynamicFields;)V

    move-object/from16 v15, p0

    .line 926
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->dynamicColumnnames:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    move/from16 v3, v24

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v25

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v3, 0x1

    move-object v10, v14

    move/from16 v11, v17

    move-object/from16 v12, v26

    move-object/from16 v13, v27

    move-object/from16 v14, v28

    goto/16 :goto_1

    :cond_3
    move/from16 v17, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    move-object v14, v10

    .line 930
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerType:Ljava/lang/String;

    move-object/from16 v13, v28

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Others"

    if-eqz v0, :cond_4

    .line 931
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v1, v13}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesOthersArry:Ljava/util/ArrayList;

    move-object/from16 v12, v26

    :goto_2
    move-object/from16 v11, v27

    goto :goto_3

    .line 932
    :cond_4
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerType:Ljava/lang/String;

    move-object/from16 v12, v26

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 933
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v1, v12}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesOthersArry:Ljava/util/ArrayList;

    goto :goto_2

    .line 934
    :cond_5
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerType:Ljava/lang/String;

    move-object/from16 v11, v27

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 935
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v1, v11}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesOthersArry:Ljava/util/ArrayList;

    .line 939
    :cond_6
    :goto_3
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x1

    if-lez v0, :cond_7

    add-int/lit8 v0, v17, -0x1

    const/4 v9, 0x0

    .line 941
    :goto_4
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_7

    .line 942
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->hAttributes:Ljava/util/HashMap;

    iget-object v2, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v16, v0, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsMandatory()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesOthersArry:Ljava/util/ArrayList;

    .line 944
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxLength()I

    move-result v8

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v18

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v19

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v20

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v21

    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mAddDynamicLinearOthers:Landroid/widget/LinearLayout;

    iget-object v10, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsTransactionEditable()I

    move-result v23

    iget-object v10, v15, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v24, v10

    check-cast v24, Lcom/conceptglobal/pmc/model/DynamicFields;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move v10, v9

    move/from16 v9, v18

    move/from16 v29, v10

    move/from16 v10, v19

    move-object/from16 v30, v11

    move/from16 v11, v20

    move-object/from16 v31, v12

    move/from16 v12, v21

    move-object/from16 v32, v13

    move-object/from16 v13, v25

    move-object/from16 v33, v14

    move/from16 v14, v23

    move-object/from16 v15, v24

    .line 943
    invoke-virtual/range {v0 .. v15}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILandroid/widget/LinearLayout;ILcom/conceptglobal/pmc/model/DynamicFields;)V

    .line 945
    iget-object v1, v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->dynamicColumnnames:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesOthersArry:Ljava/util/ArrayList;

    move/from16 v4, v29

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v33

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v4, 0x1

    move-object v15, v0

    move-object v14, v3

    move/from16 v0, v16

    move-object/from16 v11, v30

    move-object/from16 v12, v31

    move-object/from16 v13, v32

    const/4 v10, 0x1

    goto/16 :goto_4

    :cond_7
    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-object/from16 v32, v13

    move-object v0, v15

    if-gtz v17, :cond_8

    .line 949
    iget-object v1, v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_8

    goto :goto_5

    .line 952
    :cond_8
    iget-object v1, v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 953
    iget-object v1, v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 954
    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerType:Ljava/lang/String;

    move-object/from16 v4, v31

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 955
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerID:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-virtual {v2, v1, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->bindQueryInAddFarmer(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->bindQuery:Ljava/lang/String;

    goto :goto_5

    .line 956
    :cond_9
    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerType:Ljava/lang/String;

    move-object/from16 v4, v32

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 957
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v4, v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerID:Ljava/lang/String;

    invoke-virtual {v2, v1, v4, v3}, Lcom/conceptglobal/pmc/common/Queries;->bindQueryInAddFarmer(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->bindQuery:Ljava/lang/String;

    goto :goto_5

    .line 958
    :cond_a
    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerType:Ljava/lang/String;

    move-object/from16 v3, v30

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 959
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerID:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v2, v1, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->bindQueryInAddFarmer(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->bindQuery:Ljava/lang/String;

    .line 962
    :cond_b
    :goto_5
    iget-object v1, v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private createProgressDialog(Ljava/lang/String;)V
    .locals 4

    .line 3752
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3753
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0114

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090305

    .line 3754
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->dialogMsgTxtview:Landroid/widget/TextView;

    .line 3755
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3756
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3757
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->dialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    .line 3758
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method private dataInsertion()V
    .locals 7

    .line 2416
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerID:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2417
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmeridIncrement()V

    .line 2419
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getPdaid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 2420
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->gettingPdaid()V

    .line 2422
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->geoDetailsTV:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setStateID(Ljava/lang/String;)V

    .line 2423
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->geoDetailsTV:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setDistrictID(Ljava/lang/String;)V

    .line 2424
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->geoDetailsTV:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setMandalID(Ljava/lang/String;)V

    .line 2425
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->geoDetailsTV:Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setVillageId(Ljava/lang/String;)V

    .line 2426
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setStateName(Ljava/lang/String;)V

    .line 2427
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setDistrictName(Ljava/lang/String;)V

    .line 2428
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setMandalName(Ljava/lang/String;)V

    .line 2429
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setVillageName(Ljava/lang/String;)V

    .line 2430
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setLatitude(Ljava/lang/String;)V

    .line 2431
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setLongitude(Ljava/lang/String;)V

    .line 2432
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setisNew(Ljava/lang/String;)V

    .line 2433
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setServerupdatedstatus(Ljava/lang/String;)V

    .line 2434
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getPdaid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setPdaid(Ljava/lang/String;)V

    .line 2435
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->status:I

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setStatus(I)V

    .line 2436
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerType:Ljava/lang/String;

    const-string v1, "Farmer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2437
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setTypeofFarmer(Ljava/lang/String;)V

    .line 2438
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setFarmerTypeId(Ljava/lang/String;)V

    .line 2439
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setProfilePicCaptured(I)V

    .line 2440
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->status:I

    if-ne v0, v3, :cond_5

    .line 2441
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setColumn3(I)V

    goto :goto_0

    .line 2443
    :cond_3
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerType:Ljava/lang/String;

    const-string v1, "Planter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2444
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setTypeofFarmer(Ljava/lang/String;)V

    .line 2445
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setFarmerTypeId(Ljava/lang/String;)V

    goto :goto_0

    .line 2446
    :cond_4
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerType:Ljava/lang/String;

    const-string v1, "Village"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2447
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setTypeofFarmer(Ljava/lang/String;)V

    .line 2448
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setFarmerTypeId(Ljava/lang/String;)V

    .line 2450
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    const-string v1, "True"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setIsActive(Ljava/lang/String;)V

    .line 2453
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingFarmerCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmercount:I

    if-lez v0, :cond_6

    .line 2455
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerID:Ljava/lang/String;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArrIds:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->updateFarmerDetails(Lcom/conceptglobal/pmc/model/FarmerMaster;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/ArrayList;)V

    goto :goto_1

    .line 2457
    :cond_6
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerDetails(Lcom/conceptglobal/pmc/model/FarmerMaster;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2460
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private deleteTempFile()V
    .locals 1

    .line 4182
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tempFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4183
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private farmeridIncrement()V
    .locals 2

    .line 739
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/Queries;->farmerIDIncrement()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->getMaxCount(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 741
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private fetchLocation(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    .line 4136
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4137
    const-string v0, "VideoCaptureActivity"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->latlongTag:Ljava/lang/String;

    .line 4140
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4141
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p1, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 4144
    :cond_1
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$16;-><init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;Landroid/widget/TextView;Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->latlongTag:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4166
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private generateResPondentNumber()Ljava/lang/String;
    .locals 4

    .line 713
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getPdaid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setRespondentNo(Ljava/lang/String;)V

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerID:Ljava/lang/String;

    .line 717
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 4318
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 4319
    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v0

    const-string v2, ":"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 4320
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 4321
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4323
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v3

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4324
    :cond_0
    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4325
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 4326
    const-string v0, "content://downloads/public_downloads"

    .line 4327
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4326
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    .line 4328
    :cond_1
    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4329
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 4330
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 4331
    aget-object v4, v0, v2

    .line 4332
    const-string v5, "image"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4333
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 4334
    :cond_2
    const-string v5, "video"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4335
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 4336
    :cond_3
    const-string v5, "audio"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4337
    sget-object p1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 4340
    :cond_4
    :goto_0
    new-array v4, v3, [Ljava/lang/String;

    aget-object v0, v0, v3

    aput-object v0, v4, v2

    const-string v0, "_id=?"

    move-object v6, p1

    move-object v8, v0

    move-object v9, v4

    goto :goto_2

    :cond_5
    :goto_1
    move-object v6, p1

    move-object v8, v1

    move-object v9, v8

    .line 4345
    :goto_2
    const-string p1, "content"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 4346
    const-string p1, "_data"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    .line 4351
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v10, 0x0

    .line 4352
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 4353
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 4354
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4355
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 4359
    :cond_6
    const-string p0, "file"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 4360
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    :cond_7
    return-object v1
.end method

.method private getRulesConfigs()V
    .locals 5

    .line 4015
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getRulesQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRulesConfigurations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4019
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->rulesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4021
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/RulesConfig;

    .line 4022
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->rulesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/RulesConfig;->getvAttrId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4023
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->rulesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/RulesConfig;->getvAttrId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 4024
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/RulesConfig;->getRule()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4025
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/RulesConfig;->getRule()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 4026
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4028
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4029
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4030
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/RulesConfig;->getRule()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4033
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4034
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4035
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4036
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/RulesConfig;->getRule()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4037
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->rulesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/RulesConfig;->getvAttrId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private gettingData()V
    .locals 5

    .line 611
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 612
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 614
    const-string v3, "farmerId"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerID:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 617
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setRespondentNo(Ljava/lang/String;)V

    .line 618
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->isFromAll:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 620
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tag:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 623
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmeridIncrement()V

    if-eqz v1, :cond_2

    .line 624
    const-string v3, "MobileNumber"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 625
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mobile:Ljava/lang/String;

    goto :goto_0

    .line 629
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmeridIncrement()V

    .line 632
    :cond_2
    :goto_0
    const-string v1, "SegmentId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 633
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->segmentID:I

    .line 635
    :cond_3
    const-string v1, "fromTransaction"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 636
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->isFromTransaction:I

    :cond_4
    return-void
.end method

.method private gettingPdaid()V
    .locals 3

    .line 2502
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->geetingPdaid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setPdaid(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2504
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private initialization()V
    .locals 3

    const/4 v0, 0x0

    .line 440
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->updateDOS:Ljava/lang/String;

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->dynamicColumnnames:Ljava/lang/StringBuilder;

    .line 442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mentryValues:Ljava/util/List;

    const v0, 0x7f0900af

    .line 474
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->btnSave:Landroid/widget/Button;

    .line 475
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_saveText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09021b

    .line 490
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->gridView:Landroid/widget/GridView;

    .line 506
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->btnSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 514
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mYear:I

    const/4 v1, 0x2

    .line 515
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mMonth:I

    const/4 v1, 0x5

    .line 516
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mDay:I

    .line 517
    new-instance v0, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->imagelist:Ljava/util/ArrayList;

    return-void
.end method

.method public static isDecimal(Ljava/lang/String;)Z
    .locals 2

    .line 2521
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 2523
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 4370
    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 4366
    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 4374
    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1

    .line 2511
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 2513
    const-string v0, "VideoCaptureActivity"

    invoke-static {v0, p0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private setAdapter()V
    .locals 3

    .line 4003
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailsQry_Assignment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->images:Ljava/util/List;

    .line 4004
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4005
    new-instance v0, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->images:Ljava/util/List;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->imagelist:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    .line 4006
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->gridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4007
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4008
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->gridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 4010
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->gridView:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setDate(I)V
    .locals 1

    .line 2037
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "dd-MM-yyyy"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2039
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2041
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2043
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->txt:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2044
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setDate_yearless(I)V
    .locals 2

    .line 2049
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2050
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2052
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2054
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2056
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2057
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 2390
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 2391
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 2392
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2393
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setError(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 3724
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$13;-><init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setText(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 1

    .line 3715
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$12;-><init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showGoBackDialog()V
    .locals 4

    .line 2082
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2084
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fragments/AddTestimonial$10;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$10;-><init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2091
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

    new-instance v3, Lcom/conceptglobal/pmc/fragments/AddTestimonial$11;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$11;-><init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2109
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2110
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2111
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1

    .line 3739
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$14;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$14;-><init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateDisplay()V
    .locals 3

    .line 2013
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mFiledStr:Ljava/lang/String;

    .line 2014
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2016
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2018
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2020
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setDate(I)V

    return-void
.end method

.method private updateDisplay_yearless()V
    .locals 2

    .line 2025
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mFiledStr:Ljava/lang/String;

    .line 2026
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2028
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2030
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2032
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setDate_yearless(I)V

    return-void
.end method

.method private validation()Z
    .locals 20

    move-object/from16 v1, p0

    .line 3040
    const-string v2, "\'"

    const-string v3, "\n"

    const-string v4, "Preferred Retailer1 and Preferred Retailer2 can\'t be same"

    .line 3045
    const-string v7, ""

    move-object v10, v7

    move-object v11, v10

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_0
    :try_start_0
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_39

    .line 3047
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    const/16 v13, 0x25

    if-ne v12, v13, :cond_0

    .line 3048
    :try_start_1
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 3050
    :cond_0
    :try_start_2
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    const/16 v13, 0x4c

    if-ne v12, v13, :cond_1

    .line 3051
    :try_start_3
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 3053
    :cond_1
    :try_start_4
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    const/16 v13, 0x2f

    if-ne v12, v13, :cond_2

    .line 3054
    :try_start_5
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 3056
    :cond_2
    :try_start_6
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsMandatory()Ljava/lang/String;

    move-result-object v12

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    const-string v13, "Decimal"

    const-string v14, "Email"

    const-string v15, "Mobile"

    const-string v5, "Datepicker"

    const-string v6, " "

    move/from16 v16, v9

    if-eqz v12, :cond_1b

    .line 3057
    :try_start_7
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_3

    .line 3059
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_emptyEditText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    move-object/from16 v17, v3

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    :goto_1
    const/4 v6, 0x0

    :goto_2
    const/4 v9, 0x0

    goto/16 :goto_19

    .line 3062
    :cond_3
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v12

    if-eqz v12, :cond_a

    .line 3063
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 3064
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->isInEditMode()Z

    move-result v12

    if-eqz v12, :cond_a

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_a

    .line 3065
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/conceptglobal/pmc/utils/Encryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3066
    invoke-virtual {v12, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 3067
    invoke-virtual {v12, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 3068
    :cond_4
    iget-object v15, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v9

    move-object/from16 v17, v3

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerID:Ljava/lang/String;

    move-object/from16 v18, v10

    iget v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->typeOfFarmer:I

    invoke-virtual {v9, v3, v10}, Lcom/conceptglobal/pmc/common/Queries;->isMobileExistsForFarmer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v3, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 3069
    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "select FarmerID from FarmerMaster where  RespondentNo = \'"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerID:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3070
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v11

    const-string v11, "SELECT Mobile FROM PMCTerritoryFarmerMaster where  Mobile =\'"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\' and FarmerID !=\'"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;)Z

    move-result v9

    .line 3071
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v10

    if-nez v3, :cond_7

    if-eqz v9, :cond_5

    goto :goto_3

    .line 3078
    :cond_5
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v10, :cond_6

    .line 3080
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v3, v9}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3085
    :cond_6
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-direct {v1, v3, v9}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3075
    :cond_7
    :goto_3
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_mobileExistsToast()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v3, v9}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move-object/from16 v17, v3

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 3089
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v3

    .line 3090
    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v3, :cond_9

    .line 3092
    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v9, v3}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_4
    const/4 v3, 0x0

    const/4 v9, 0x0

    goto :goto_6

    .line 3097
    :cond_9
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-direct {v1, v3, v9}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    :cond_a
    move-object/from16 v17, v3

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    :goto_5
    move/from16 v9, v16

    const/4 v3, 0x1

    .line 3101
    :goto_6
    :try_start_8
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_e

    .line 3102
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 3103
    sget-object v10, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_b

    .line 3105
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v3, v10}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_7
    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_8

    :cond_b
    if-eqz v3, :cond_e

    .line 3111
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-direct {v1, v10, v11}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 3115
    :cond_c
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 3116
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 3117
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3118
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 3119
    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 3120
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_d

    .line 3122
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v3, v10}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_d
    if-eqz v3, :cond_e

    .line 3128
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-direct {v1, v10, v11}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 3134
    :cond_e
    :goto_8
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Dropdown"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 3135
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_f

    .line 3137
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v3, v10}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto :goto_9

    :cond_f
    if-eqz v3, :cond_10

    .line 3143
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-direct {v1, v10, v11}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 3147
    :cond_10
    :goto_9
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_11

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    goto/16 :goto_21

    .line 3149
    :cond_11
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v5

    if-lez v5, :cond_14

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v5

    if-lez v5, :cond_14

    .line 3150
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->isNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 3151
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3152
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v10

    .line 3153
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v10, v12

    if-le v5, v10, :cond_13

    add-int/2addr v11, v12

    if-lt v5, v11, :cond_12

    goto :goto_a

    :cond_12
    if-eqz v3, :cond_18

    .line 3162
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 3156
    :cond_13
    :goto_a
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 3168
    :cond_14
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v5

    if-lez v5, :cond_16

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v5

    if-gtz v5, :cond_16

    .line 3169
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->isNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 3170
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3171
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v10

    if-ge v5, v10, :cond_15

    .line 3175
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_15
    if-eqz v3, :cond_18

    .line 3181
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 3187
    :cond_16
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v5

    if-lez v5, :cond_18

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v5

    if-gtz v5, :cond_18

    .line 3188
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->isNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 3189
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3190
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v10

    if-le v5, v10, :cond_17

    .line 3194
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_b
    const/4 v9, 0x0

    goto :goto_c

    :cond_17
    if-eqz v3, :cond_18

    .line 3200
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 3207
    :cond_18
    :goto_c
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v3

    if-lez v3, :cond_19

    .line 3208
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->isDecimal(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 3209
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 3210
    invoke-static {}, Ljava/text/DecimalFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v5

    .line 3211
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 3212
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    const/4 v6, 0x0

    .line 3213
    invoke-virtual {v5, v6}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 3214
    invoke-virtual {v5, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3215
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 3217
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 3222
    :cond_19
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    if-eqz v3, :cond_1a

    .line 3224
    :try_start_9
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_d

    .line 3227
    :catch_0
    :try_start_a
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_1

    :cond_1a
    :goto_d
    const/4 v6, 0x0

    goto/16 :goto_19

    :cond_1b
    move-object/from16 v17, v3

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 3232
    :try_start_b
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_30

    .line 3233
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move/from16 v9, v16

    goto/16 :goto_21

    .line 3235
    :cond_1c
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v3

    if-eqz v3, :cond_21

    .line 3236
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 3237
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_21

    .line 3238
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerID:Ljava/lang/String;

    iget v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->typeOfFarmer:I

    invoke-virtual {v5, v9, v10}, Lcom/conceptglobal/pmc/common/Queries;->isMobileExistsForFarmer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v5, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 3239
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v5

    if-eqz v3, :cond_1d

    .line 3243
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_mobileExistsToast()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 3246
    :cond_1d
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v5, :cond_1e

    .line 3248
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_e

    .line 3254
    :cond_1e
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_f

    .line 3259
    :cond_1f
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v3

    .line 3260
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v3, :cond_20

    .line 3262
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v3}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_e
    const/4 v3, 0x0

    const/4 v9, 0x0

    goto :goto_10

    .line 3268
    :cond_20
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :cond_21
    :goto_f
    move/from16 v9, v16

    const/4 v3, 0x1

    .line 3274
    :goto_10
    :try_start_c
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_25

    .line 3275
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 3276
    sget-object v5, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_22

    .line 3278
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_11
    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_12

    :cond_22
    if-eqz v3, :cond_25

    .line 3284
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 3288
    :cond_23
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 3289
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 3290
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3291
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 3292
    invoke-virtual {v5, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 3293
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_24

    .line 3295
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_24
    if-eqz v3, :cond_25

    .line 3301
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 3307
    :cond_25
    :goto_12
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v5

    if-lez v5, :cond_28

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v5

    if-lez v5, :cond_28

    .line 3308
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->isNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 3309
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3310
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v10

    .line 3311
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v10, v12

    if-le v5, v10, :cond_27

    add-int/2addr v11, v12

    if-lt v5, v11, :cond_26

    goto :goto_13

    :cond_26
    if-eqz v3, :cond_2a

    .line 3320
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 3314
    :cond_27
    :goto_13
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 3326
    :cond_28
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v5

    if-lez v5, :cond_2b

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v5

    if-gtz v5, :cond_2b

    .line 3327
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->isNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 3328
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3329
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v10

    if-ge v5, v10, :cond_29

    .line 3333
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_14
    const/4 v6, 0x0

    goto :goto_16

    :cond_29
    if-eqz v3, :cond_2a

    .line 3339
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_2a
    :goto_15
    move v6, v9

    :goto_16
    move v9, v6

    goto/16 :goto_17

    .line 3345
    :cond_2b
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v5

    if-lez v5, :cond_2e

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v5

    if-gtz v5, :cond_2e

    .line 3346
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->isNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 3347
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3348
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v10

    if-le v5, v10, :cond_2c

    .line 3352
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_17

    :cond_2c
    if-eqz v3, :cond_2e

    .line 3358
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_17

    :cond_2d
    move-object/from16 v10, v18

    move-object/from16 v11, v19

    goto/16 :goto_22

    .line 3365
    :cond_2e
    :goto_17
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v3

    if-lez v3, :cond_2f

    .line 3366
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 3367
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 3368
    invoke-static {}, Ljava/text/DecimalFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v5

    .line 3369
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 3370
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    const/4 v6, 0x0

    .line 3371
    invoke-virtual {v5, v6}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 3372
    invoke-virtual {v5, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3373
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 3374
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3375
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setText(Landroid/widget/EditText;Ljava/lang/String;)V

    goto :goto_18

    :cond_2f
    const/4 v6, 0x0

    .line 3380
    :goto_18
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    if-eqz v3, :cond_31

    .line 3382
    :try_start_d
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_19

    .line 3385
    :catch_1
    :try_start_e
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_2

    :cond_30
    const/4 v6, 0x0

    move/from16 v9, v16

    .line 3391
    :cond_31
    :goto_19
    :try_start_f
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->rulesMap:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 3392
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->rulesMap:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 3393
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3395
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 3396
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v10, v12, :cond_34

    .line 3398
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 3400
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v13, 0x0

    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_32

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/conceptglobal/pmc/model/RulesConfig;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    .line 3402
    :try_start_10
    iget-object v15, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->hAttributes:Ljava/util/HashMap;

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/model/RulesConfig;->getAttributeId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    add-float/2addr v13, v6

    goto :goto_1c

    :catch_2
    add-float/2addr v13, v11

    :goto_1c
    const/4 v6, 0x0

    goto :goto_1b

    :cond_32
    cmpl-float v5, v13, v10

    if-eqz v5, :cond_33

    .line 3410
    :try_start_11
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "Total count doesnt match"

    invoke-direct {v1, v5, v6}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_1d

    :cond_33
    move v6, v9

    :goto_1d
    move v9, v6

    goto/16 :goto_20

    :cond_34
    const/4 v6, 0x2

    if-ne v10, v6, :cond_37

    .line 3415
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v10, 0x0

    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_35

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/conceptglobal/pmc/model/RulesConfig;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    .line 3417
    :try_start_12
    iget-object v14, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    iget-object v15, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->hAttributes:Ljava/util/HashMap;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/RulesConfig;->getAttributeId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    add-float/2addr v10, v13

    goto :goto_1e

    :catch_3
    add-float/2addr v10, v11

    goto :goto_1e

    :cond_35
    const/high16 v6, 0x42c80000    # 100.0f

    cmpl-float v6, v10, v6

    if-lez v6, :cond_37

    .line 3423
    :try_start_13
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/RulesConfig;

    .line 3425
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->hAttributes:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/RulesConfig;->getAttributeId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v10, "Total Percentage should not exceed 100%"

    invoke-direct {v1, v6, v10}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1f

    :cond_36
    const/4 v9, 0x0

    :cond_37
    :goto_20
    const/4 v6, 0x0

    goto/16 :goto_1a

    :cond_38
    :goto_21
    const/4 v12, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto :goto_23

    :cond_39
    move/from16 v16, v9

    :goto_22
    if-eqz v10, :cond_3a

    .line 3436
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3a

    if-eqz v11, :cond_3a

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3a

    .line 3437
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    if-eqz v2, :cond_3a

    .line 3439
    :try_start_14
    iput-object v4, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->validationFailedMsg:Ljava/lang/String;

    .line 3441
    invoke-direct {v1, v4}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->showToast(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5

    const/4 v5, 0x0

    goto :goto_25

    :catch_5
    move-exception v0

    move-object v2, v0

    const/4 v5, 0x0

    goto :goto_24

    :catch_6
    move-exception v0

    move-object v2, v0

    move v5, v9

    goto :goto_24

    :cond_3a
    move v5, v9

    goto :goto_25

    :catch_7
    move-exception v0

    move/from16 v16, v9

    :goto_23
    move-object v2, v0

    move/from16 v5, v16

    .line 3666
    :goto_24
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3667
    const-string v3, "VideoCaptureActivity"

    invoke-static {v3, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_25
    return v5
.end method


# virtual methods
.method public addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILandroid/widget/LinearLayout;ILcom/conceptglobal/pmc/model/DynamicFields;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p8

    const-string v6, "select Column3 from FarmerMaster where RespondentNo = \'"

    .line 968
    iget v7, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mForOperations:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mForOperations:I

    .line 969
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x3f800000    # 1.0f

    .line 970
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 971
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x1

    .line 1023
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 971
    invoke-direct {v10, v12, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v9, 0x4

    const/4 v11, 0x0

    .line 972
    invoke-virtual {v10, v11, v9, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 973
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 974
    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x10

    .line 975
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 977
    iget v10, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->layoutId:I

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setId(I)V

    .line 979
    new-instance v10, Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-direct {v10, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 981
    const-string v14, "#ffffff"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v10, v14}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTextColor(I)V

    .line 982
    iget-object v14, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->context:Landroid/content/Context;

    const v15, 0x7f11015b

    invoke-virtual {v10, v14, v15}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 983
    invoke-virtual {v10, v9}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setGravity(I)V

    const/4 v9, 0x5

    .line 984
    invoke-virtual {v10, v9, v11, v11, v11}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setPadding(IIII)V

    .line 986
    const-string v14, "1"

    if-eqz v3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_1

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "true"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 987
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "<font color=\'#ff0000\'>*</font>"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 989
    :cond_1
    invoke-virtual {v10, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 991
    :goto_0
    invoke-virtual {v10, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 992
    iget v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mForDates:I

    add-int/2addr v3, v8

    iput v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mForDates:I

    .line 1002
    const-string v3, "Dropdown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v15, "Label"

    const-string v12, "Number"

    const-string v9, "Decimal"

    const-string v8, "Numeric Field"

    const-string v11, "Datepicker_MMDD"

    move-object/from16 p12, v7

    const-string v7, "Datepicker"

    move-object/from16 p14, v10

    const-string v10, "Email"

    const/16 v16, 0x0

    move-object/from16 p3, v15

    const-string v15, "textbox"

    if-eqz v3, :cond_2

    .line 1003
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1004
    const-string v3, "operation"

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1005
    iget v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mForOperations:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setId(I)V

    .line 1006
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v3, 0x7f080096

    .line 1007
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const v3, 0x7f0800d7

    const/4 v5, 0x0

    .line 1008
    invoke-virtual {v0, v5, v5, v3, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1009
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->operationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1010
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v3, 0x11

    .line 1011
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setGravity(I)V

    move-object/from16 v3, p3

    move-object v5, v0

    move-object/from16 v19, v7

    move-object/from16 v20, v11

    move-object/from16 v0, v16

    move-object v6, v0

    :goto_1
    move-object v7, v6

    move-object v11, v7

    move-object v13, v11

    goto/16 :goto_a

    .line 1013
    :cond_2
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v19, v7

    const v7, 0x7f0800c8

    if-eqz v3, :cond_4

    .line 1014
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1015
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1016
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1017
    iget v0, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mForDates:I

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setId(I)V

    const/16 v0, 0x11

    .line 1018
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setGravity(I)V

    const/4 v5, 0x0

    .line 1019
    invoke-virtual {v3, v5, v5, v7, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v0, 0x7f080096

    .line 1020
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1021
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->datesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1022
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    const v0, 0x7f100006

    .line 1023
    invoke-virtual {v3, v0, v13}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    const v5, 0x7f100005

    .line 1024
    invoke-virtual {v3, v5, v13}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    if-lez p11, :cond_3

    .line 1026
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    :cond_3
    if-lez p10, :cond_5

    const v0, 0x7f100005

    .line 1028
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    goto :goto_2

    .line 1030
    :cond_4
    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1031
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1032
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1033
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1034
    iget v0, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mForDates:I

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setId(I)V

    const/16 v0, 0x11

    .line 1035
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setGravity(I)V

    const/4 v5, 0x0

    .line 1036
    invoke-virtual {v3, v5, v5, v7, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v0, 0x7f080096

    .line 1037
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1038
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->datesListenerYearless:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1039
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    :cond_5
    :goto_2
    move-object v6, v3

    move-object/from16 v20, v11

    move-object/from16 v0, v16

    move-object v5, v0

    move-object v7, v5

    move-object v11, v7

    :goto_3
    move-object v13, v11

    move-object/from16 v3, p3

    goto/16 :goto_a

    .line 1041
    :cond_6
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v7, 0x2

    if-eqz v3, :cond_7

    .line 1042
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1043
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1044
    const-string v5, "b"

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 1045
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 1046
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 1047
    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 1048
    new-array v5, v3, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v6, 0x6

    invoke-direct {v3, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v3, 0x5

    .line 1049
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v3, p3

    move-object/from16 v20, v11

    move-object/from16 v5, v16

    :goto_4
    move-object v6, v5

    goto/16 :goto_1

    .line 1050
    :cond_7
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    .line 1051
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    .line 1052
    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1053
    const-string v13, "b"

    invoke-virtual {v3, v13}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v13, 0x7f080096

    .line 1054
    invoke-virtual {v3, v13}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v13, 0x11

    .line 1055
    invoke-virtual {v3, v13}, Landroid/widget/EditText;->setGravity(I)V

    if-lez v5, :cond_8

    .line 1064
    new-array v13, v7, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v7, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v7, v13, v5

    invoke-virtual {v3, v13}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    move-object/from16 v20, v11

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    .line 1066
    new-array v13, v7, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v20, v11

    const/16 v11, 0x32

    invoke-direct {v7, v11}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v13, v5

    invoke-virtual {v3, v13}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_5
    const/4 v5, 0x5

    .line 1068
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1070
    const-string v5, "Farmer Name"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1073
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1074
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1075
    invoke-direct {v1, v3}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setEditableFalse(Landroid/widget/EditText;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 1077
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_6
    move-object v7, v3

    move-object/from16 v0, v16

    move-object v5, v0

    move-object v6, v5

    move-object v11, v6

    goto/16 :goto_3

    :cond_a
    move-object/from16 v20, v11

    .line 1082
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1083
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1084
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1085
    const-string v6, "d"

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v6, 0x7f080096

    .line 1086
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v6, 0x11

    .line 1087
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setGravity(I)V

    const/16 v6, 0x2002

    .line 1088
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setInputType(I)V

    if-lez v5, :cond_b

    .line 1091
    new-array v6, v3, [Landroid/text/InputFilter;

    new-instance v11, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DecimalDigitsInputFilter;

    invoke-direct {v11, v1, v5, v7}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;II)V

    const/4 v5, 0x0

    aput-object v11, v6, v5

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_7

    :cond_b
    const/4 v5, 0x0

    .line 1094
    new-array v6, v3, [Landroid/text/InputFilter;

    new-instance v3, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DecimalDigitsInputFilter;

    const/16 v11, 0x14

    invoke-direct {v3, v1, v11, v7}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;II)V

    aput-object v3, v6, v5

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_7
    move-object/from16 v3, p3

    move-object v11, v0

    move-object/from16 v0, v16

    move-object v5, v0

    move-object v6, v5

    move-object v7, v6

    move-object v13, v7

    goto/16 :goto_a

    .line 1098
    :cond_c
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1099
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1100
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1101
    const-string v3, "e"

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v3, 0x7f080096

    .line 1102
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v3, 0x11

    .line 1103
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setGravity(I)V

    const/16 v3, 0x20

    .line 1104
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    move-object/from16 v3, p3

    :goto_8
    move-object v13, v0

    move-object/from16 v0, v16

    move-object v5, v0

    move-object v6, v5

    move-object v7, v6

    move-object v11, v7

    goto/16 :goto_a

    .line 1106
    :cond_d
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v4, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1107
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    .line 1108
    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1109
    const-string v6, "n"

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v6, 0x7f080096

    .line 1110
    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v6, 0x11

    .line 1111
    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setGravity(I)V

    .line 1112
    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 1113
    const-string v6, "Mobile"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1114
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mobile:Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 1115
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mobile:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1117
    :cond_e
    invoke-direct {v1, v3}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_f
    if-lez v5, :cond_10

    const/4 v6, 0x1

    .line 1122
    new-array v0, v6, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v7, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v7, v0, v5

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_9

    :cond_10
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1124
    new-array v0, v6, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x1e

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v0, v5

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_9
    const/4 v0, 0x5

    .line 1126
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_6

    .line 1128
    :cond_11
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 v3, p3

    if-eqz v0, :cond_12

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1129
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 1130
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1131
    const-string v5, "e"

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 1132
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 1133
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 1134
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    .line 1135
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1136
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    goto/16 :goto_8

    :cond_12
    move-object/from16 v0, v16

    move-object v5, v0

    goto/16 :goto_4

    .line 1140
    :goto_a
    new-instance v14, Landroid/widget/EditText;

    invoke-direct {v14, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1141
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p3, v12

    const v12, 0x3f19999a    # 0.6f

    move-object/from16 v16, v3

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1142
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v17, v13

    const v13, 0x3ecccccd    # 0.4f

    invoke-direct {v12, v3, v3, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1143
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, 0x0

    invoke-direct {v3, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v13, p14

    .line 1144
    invoke-virtual {v13, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1145
    invoke-virtual {v14, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1146
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "DropDown"

    if-eqz v1, :cond_13

    .line 1147
    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_b
    move-object/from16 v12, p12

    move-object/from16 p4, v10

    move-object/from16 p1, v14

    move-object/from16 v10, v17

    move-object/from16 v1, v19

    :goto_c
    move-object/from16 v14, v20

    :goto_d
    move-object/from16 v17, v11

    :goto_e
    move-object/from16 v11, p3

    goto/16 :goto_11

    .line 1148
    :cond_13
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1149
    invoke-virtual {v5, v12}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    :cond_14
    move-object/from16 v1, v19

    .line 1150
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 1151
    invoke-virtual {v6, v12}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v12, p12

    move-object/from16 p4, v10

    move-object/from16 p1, v14

    move-object/from16 v10, v17

    goto :goto_c

    :cond_15
    move-object/from16 p1, v14

    move-object/from16 v14, v20

    .line 1152
    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 1153
    invoke-virtual {v6, v12}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_f
    move-object/from16 v12, p12

    move-object/from16 p4, v10

    move-object/from16 v10, v17

    goto :goto_d

    .line 1154
    :cond_16
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_17

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_17

    .line 1155
    invoke-virtual {v7, v12}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f

    .line 1156
    :cond_17
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_18

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 1157
    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f

    .line 1158
    :cond_18
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_19

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_19

    move-object/from16 p4, v10

    move-object/from16 v10, v17

    .line 1159
    invoke-virtual {v10, v12}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v12, p12

    goto :goto_d

    :cond_19
    move-object/from16 p4, v10

    move-object/from16 v10, v17

    .line 1160
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1a

    move-object/from16 v17, v11

    move-object/from16 v11, v16

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1b

    .line 1161
    invoke-virtual {v10, v12}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v12, p12

    move-object/from16 v16, v11

    goto/16 :goto_e

    :cond_1a
    move-object/from16 v17, v11

    move-object/from16 v11, v16

    .line 1162
    :cond_1b
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1c

    move-object/from16 v16, v11

    move-object/from16 v11, p3

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1d

    .line 1163
    invoke-virtual {v7, v12}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_10

    :cond_1c
    move-object/from16 v16, v11

    move-object/from16 v11, p3

    :cond_1d
    :goto_10
    move-object/from16 v12, p12

    .line 1165
    :goto_11
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1166
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1f

    .line 1167
    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_12
    move-object/from16 p3, v9

    :goto_13
    move-object/from16 v9, v16

    :cond_1e
    :goto_14
    move-object/from16 v16, v11

    move-object/from16 v11, p13

    goto/16 :goto_16

    .line 1168
    :cond_1f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_20

    .line 1169
    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_12

    .line 1170
    :cond_20
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_21

    .line 1171
    invoke-virtual {v12, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_12

    .line 1172
    :cond_21
    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_22

    .line 1173
    invoke-virtual {v12, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_12

    .line 1174
    :cond_22
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_23

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_23

    .line 1175
    invoke-virtual {v12, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_12

    .line 1176
    :cond_23
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_24

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_24

    move-object/from16 p3, v9

    move-object/from16 v9, v17

    .line 1177
    invoke-virtual {v12, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_13

    :cond_24
    move-object/from16 p3, v9

    move-object/from16 v9, v17

    .line 1178
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_25

    move-object/from16 v17, v9

    move-object/from16 v9, p4

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_26

    .line 1179
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_15
    move-object/from16 p4, v9

    goto :goto_13

    :cond_25
    move-object/from16 v17, v9

    move-object/from16 v9, p4

    .line 1180
    :cond_26
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_27

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_27

    .line 1181
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_15

    .line 1182
    :cond_27
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    move-object/from16 p4, v9

    move-object/from16 v9, v16

    if-eqz v18, :cond_28

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_28

    .line 1183
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_14

    .line 1184
    :cond_28
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1e

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1e

    .line 1185
    invoke-virtual {v12, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_14

    .line 1187
    :goto_16
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v11, 0x1

    .line 1188
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_2a

    move-object/from16 v18, v9

    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v9, v9, Landroid/widget/EditText;

    if-eqz v9, :cond_29

    .line 1189
    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsReadOnly()I

    move-result v9

    if-ne v9, v11, :cond_29

    .line 1190
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    move-object/from16 v11, p0

    invoke-direct {v11, v9}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setEditableFalse(Landroid/widget/EditText;)V

    goto :goto_17

    :cond_29
    move-object/from16 v11, p0

    goto :goto_17

    :cond_2a
    move-object/from16 v11, p0

    move-object/from16 v18, v9

    .line 1193
    :goto_17
    iget-object v9, v11, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mattributesnamesArr:Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    iget-object v9, v11, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArrIds:Ljava/util/ArrayList;

    move-object/from16 v12, p1

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1195
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 1196
    iget-object v1, v11, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    .line 1197
    :cond_2b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1198
    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    .line 1199
    :cond_2c
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1200
    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    .line 1201
    :cond_2d
    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1202
    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 1203
    :cond_2e
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2f

    .line 1204
    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 1205
    :cond_2f
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    move-object/from16 v1, p3

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1206
    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 1207
    :cond_30
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    move-object/from16 v1, p4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1208
    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 1209
    :cond_31
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    move-object/from16 v1, v18

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1210
    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 1211
    :cond_32
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    move-object/from16 v1, v16

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1212
    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    :cond_33
    :goto_18
    iget v0, v11, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->layoutId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v11, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->layoutId:I

    return-void
.end method

.method public createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 0

    .line 649
    invoke-super {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/BaseActivity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 545
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

.method public hideLoader()V
    .locals 1

    .line 4384
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$17;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$17;-><init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    .line 4201
    const-string v3, "VideoCaptureActivity"

    .line 0
    const-string v4, "Size: "

    const-string v5, "Display Name: "

    const/4 v6, -0x1

    if-ne v2, v6, :cond_9

    if-eqz p3, :cond_9

    const/4 v7, 0x1

    if-eq v0, v7, :cond_6

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eq v0, v7, :cond_5

    const/4 v7, 0x3

    if-eq v0, v7, :cond_1

    const/16 v3, 0x65

    if-eq v0, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    if-ne v2, v6, :cond_9

    .line 4205
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->imagelist:Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4206
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setAdapter()V

    goto/16 :goto_3

    .line 4222
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-ne v0, v7, :cond_9

    if-eqz v2, :cond_9

    .line 4226
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v10, v2

    invoke-virtual/range {v9 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 4229
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4231
    const-string v0, "_display_name"

    .line 4232
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 4231
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4233
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4235
    const-string v5, "_size"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 4237
    invoke-interface {v6, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 4238
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 4240
    :cond_2
    const-string v5, "Unknown"

    .line 4242
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4243
    invoke-static {v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/utils/FileUtils;->saveTempFile(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tempFile:Ljava/io/File;

    .line 4244
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$VideoCompressor;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$VideoCompressor;-><init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)V

    new-array v2, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$VideoCompressor;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 4249
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4251
    :cond_3
    throw v0

    :cond_4
    :goto_1
    if-eqz v6, :cond_9

    .line 4249
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 4256
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 4258
    :try_start_1
    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->filePath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 4260
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 4262
    :goto_2
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->filePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tempFile:Ljava/io/File;

    .line 4263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "before compression"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4264
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$VideoCompressor;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$VideoCompressor;-><init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)V

    new-array v2, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$VideoCompressor;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3

    :cond_6
    if-eq v2, v6, :cond_8

    if-eqz v2, :cond_7

    goto :goto_3

    .line 4217
    :cond_7
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string v2, "GPSNotTurnedOn"

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_3

    .line 4213
    :cond_8
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tvLatitude:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tvLongitude:Landroid/widget/TextView;

    invoke-direct {v1, v0, v2}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->fetchLocation(Landroid/widget/TextView;Landroid/widget/TextView;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 4189
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onBackPressed()V

    .line 4190
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->deleteTempFile()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 2125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2202
    :sswitch_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x4

    if-gt p1, v1, :cond_0

    const-wide/16 v0, 0x0

    .line 2203
    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->captureImage(J)V

    goto :goto_0

    .line 2205
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getApplication()Landroid/app/Application;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_maxImagesToast()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2180
    :sswitch_1
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->status:I

    .line 2182
    new-instance p1, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;-><init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;Lcom/conceptglobal/pmc/fragments/AddTestimonial$1;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 2135
    :sswitch_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tvLatitude:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tvLongitude:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->fetchLocation(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0

    .line 2209
    :sswitch_3
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2210
    const-string v0, "video/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x3

    .line 2211
    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090088 -> :sswitch_3
        0x7f0900a0 -> :sswitch_2
        0x7f0900af -> :sswitch_1
        0x7f090242 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 287
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0052

    .line 291
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setContentView(I)V

    .line 292
    iput-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->context:Landroid/content/Context;

    .line 293
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 294
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 295
    new-instance p1, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 296
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 297
    const-string v0, "farmerType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->farmerType:Ljava/lang/String;

    .line 298
    const-string v0, "isFraom"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->isFraom:Ljava/lang/String;

    .line 299
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Add Testimonial("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 348
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->initialization()V

    .line 350
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->gettingData()V

    .line 353
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->generateResPondentNumber()Ljava/lang/String;

    .line 354
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->createOperationAttributes()V

    .line 355
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->bindOperations()V

    .line 382
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->gridView:Landroid/widget/GridView;

    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$1;-><init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f0901de

    .line 388
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    .line 389
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$2;-><init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)V

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mAppConstants:Lcom/conceptglobal/pmc/common/ConstantsPMC;

    const p1, 0x7f090088

    .line 404
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->btnSlectFile:Landroid/widget/Button;

    .line 405
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090077

    .line 406
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->btnCaptureVedio:Landroid/widget/Button;

    .line 407
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0904d7

    .line 408
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tvStatus:Landroid/widget/TextView;

    const p1, 0x7f09035c

    .line 409
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->progressBar:Landroid/widget/ProgressBar;

    .line 410
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 411
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const p1, 0x7f090543

    .line 412
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tvImage:Landroid/widget/TextView;

    .line 413
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pictureTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090243

    .line 414
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->img_view:Landroid/widget/ImageView;

    .line 415
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$3;-><init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1901
    :cond_0
    new-instance p1, Lcom/conceptglobal/pmc/fragments/AddTestimonial$7;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mDateSetListener_Yearless:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mYear:I

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mMonth:I

    iget v6, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mDay:I

    move-object v0, p1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$7;-><init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 1907
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectDayMonthDPTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1910
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "android"

    const-string v3, "year"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1912
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 1914
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-object p1

    .line 1874
    :cond_2
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mYear:I

    iget v6, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mMonth:I

    iget v7, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mDay:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 1876
    :try_start_0
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMinDate()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->defaultMinDate:J

    .line 1877
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMaxDate()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->defaultMaxDate:J

    .line 1878
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1879
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mEntryArr:Ljava/util/ArrayList;

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->datePos:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, -0x1

    if-eqz v2, :cond_3

    const v4, 0x7f100006

    .line 1881
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1882
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1883
    invoke-virtual {v5, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1884
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    neg-int v4, v4

    add-int/2addr v4, v0

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v4}, Ljava/util/Calendar;->add(II)V

    .line 1885
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 1886
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    :cond_3
    if-eqz v2, :cond_4

    const v4, 0x7f100005

    .line 1889
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1890
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1891
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1893
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 1894
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1895
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/DatePicker;->setMaxDate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 2117
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2118
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    .line 219
    invoke-super {p0, p1, p2}, Lcom/conceptglobal/pmc/BaseActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 0

    .line 4195
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onDestroy()V

    .line 4196
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->deleteTempFile()V

    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    .line 276
    invoke-super {p0, p1, p2}, Lcom/conceptglobal/pmc/BaseActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 2063
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f09024c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2073
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->status:I

    .line 2074
    new-instance v1, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataInsertion;

    invoke-direct {v1, p0, p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataInsertion;-><init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;Landroid/content/Context;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataInsertion;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2077
    :goto_0
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 2065
    :cond_1
    iget p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->isFromTransaction:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 2066
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->showGoBackDialog()V

    goto :goto_1

    .line 2068
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->finish()V

    :goto_1
    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .line 434
    invoke-super {p0, p1, p2}, Lcom/conceptglobal/pmc/BaseActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onProvideAssistData(Landroid/os/Bundle;)V
    .locals 0

    .line 708
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onProvideAssistData(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 3894
    const-string p2, "onRequestPermissionResult"

    const-string v0, "VideoCaptureActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 3896
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 3899
    const-string p1, "User interaction was cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3900
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 3902
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tvLatitude:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->tvLongitude:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->fetchLocation(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0

    .line 3905
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 3985
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    .line 3986
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setAdapter()V

    .line 3987
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3988
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_0
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0

    .line 281
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method
