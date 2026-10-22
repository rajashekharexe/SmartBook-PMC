.class public Lcom/conceptglobal/pmc/fragments/AddFarmer;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "AddFarmer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/conceptglobal/pmc/interfaces/OnVerifyOTPListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;,
        Lcom/conceptglobal/pmc/fragments/AddFarmer$DecimalDigitsInputFilter;,
        Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;,
        Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;,
        Lcom/conceptglobal/pmc/fragments/AddFarmer$OTPAsync;
    }
.end annotation


# static fields
.field private static final DATEDIALOGID1:I = 0x0

.field private static final DATEDIALOGID2:I = 0x2

.field private static final DATEDIALOGID3:I = 0x3

.field private static final DATEDIALOGID4:I = 0x4

.field private static final DATEDIALOGID5:I = 0x5

.field private static final DATEDIALOGID_YEARLESS:I = 0x1

.field private static final GETNEWACTIVITY:I = 0x2

.field private static final GET_CAM_IMG:I = 0x65

.field private static final INITIALCROPID:I = -0x1

.field private static final MY_CAMERA_REQUEST_CODE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AddFarmer"

.field private static dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

.field public static deletedCropsIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static farmerType:Ljava/lang/String;

.field private static isFraom:Ljava/lang/String;


# instance fields
.field _clickId:I

.field private adapterCrops:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;

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

.field public brandsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/BrandsModel;",
            ">;"
        }
    .end annotation
.end field

.field private btnDraft:Landroid/widget/Button;

.field private btnLatLng:Landroid/widget/ImageView;

.field private btnRemarks:Landroid/widget/Button;

.field private btnSave:Landroid/widget/Button;

.field private columnName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private datePos:I

.field datesListener:Landroid/view/View$OnClickListener;

.field datesListenerYearless:Landroid/view/View$OnClickListener;

.field private defaultMaxDate:J

.field private defaultMinDate:J

.field private dialodIdsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private dialog:Landroid/app/Dialog;

.field private dialogMsgTxtview:Landroid/widget/TextView;

.field private final districtChanged:Landroid/text/TextWatcher;

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

.field private et_crop_type_alert:Landroid/widget/EditText;

.field private ethybrid:Landroid/widget/EditText;

.field private farmerID:Ljava/lang/String;

.field private farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

.field private farmerUpdate:Ljava/lang/String;

.field private farmercount:I

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

.field private isFromAll:Z

.field public isFromFeedBack:Z

.field public isFromSelfAssignment:Z

.field private isFromSelfassgin:I

.field public isFromSurvey:Z

.field public isFromTestimonal:Z

.field private isFromTransaction:I

.field private isImageDeleted:Z

.field public isRoleReadonlyCropHero:Z

.field public isRoleReadonlyFarmer:Z

.field private isSaarthieFarmer:Ljava/lang/String;

.field latlongTag:Ljava/lang/String;

.field private layoutId:I

.field private listFarmerCrops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FarmerCropMapping;",
            ">;"
        }
    .end annotation
.end field

.field private lvCrops:Landroid/widget/ListView;

.field private mAddDynamicLinear:Landroid/widget/LinearLayout;

.field private mAddDynamicLinearOthers:Landroid/widget/LinearLayout;

.field private mAddGeoDetailsInOthers:Landroid/widget/LinearLayout;

.field private mAddGeoDetailsInPersonal:Landroid/widget/LinearLayout;

.field private mCurrentYear:I

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

.field private mFarmerMultiAttributeDetailsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/FarmerMultiAttributeDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mFiledStr:Ljava/lang/String;

.field private mForDates:I

.field private mForOperations:I

.field private mIsMobileNumberChanged:Z

.field private mListPopupOne:Lcom/conceptglobal/pmc/common/ListPopupOne;

.field private mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

.field private mMonth:I

.field mMultiAttribute:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMultiSelectEditText:Landroid/widget/EditText;

.field private mNewMobile:Ljava/lang/String;

.field private mOTP:Ljava/lang/String;

.field private mOldMobile:Ljava/lang/String;

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

.field private final mandalChanged:Landroid/text/TextWatcher;

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

.field maxLength_multiselect:I

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

.field mliListPopupOne:Lcom/conceptglobal/pmc/common/ListPopupOne;

.field private mobile:Ljava/lang/String;

.field private modifiedListOfFarmerCrops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field operationListener:Landroid/view/View$OnClickListener;

.field operationListenerMultiSelect:Landroid/view/View$OnClickListener;

.field private plotLatlongs:Ljava/lang/String;

.field private progressDialog:Landroid/app/Dialog;

.field private ruleAttributeIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ruleID:I

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

.field private sdtvValue:I

.field private segmentID:I

.field private final stateChanged:Landroid/text/TextWatcher;

.field private status:I

.field private statusFieldVal:I

.field private tab1:Landroid/widget/LinearLayout;

.field private tab2:Landroid/widget/RelativeLayout;

.field private tab3:Landroid/widget/LinearLayout;

.field private tabHost:Landroid/widget/TabHost;

.field private tableName:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private tvAcreagesNote:Landroid/widget/TextView;

.field private tvAddCrop:Landroid/widget/TextView;

.field private tvCropid:Landroid/widget/TextView;

.field private tvLatitude:Landroid/widget/TextView;

.field private tvLongitude:Landroid/widget/TextView;

.field private tvcrop_acrage_type_id:Landroid/widget/TextView;

.field private tvdistrictid:Landroid/widget/TextView;

.field private tvhybridid:Landroid/widget/TextView;

.field private tvmandalid:Landroid/widget/TextView;

.field private tvstateid:Landroid/widget/TextView;

.field private tvvillageid:Landroid/widget/TextView;

.field private txt:Landroid/widget/TextView;

.field private typeOfFarmer:I

.field private updateDOS:Ljava/lang/String;

.field private validationFailedMsg:Ljava/lang/String;

.field private visibiltyGoneIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field yearListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 292
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 150
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 151
    const-string v0, "AddFarmer"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tag:Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mMultiAttribute:Ljava/util/ArrayList;

    const-wide/16 v0, -0x1

    .line 160
    iput-wide v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->defaultMinDate:J

    .line 161
    iput-wide v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->defaultMaxDate:J

    .line 163
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mFiledStr:Ljava/lang/String;

    const/4 v1, 0x0

    .line 168
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->datePos:I

    const/4 v2, 0x0

    .line 172
    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->hAttributes:Ljava/util/HashMap;

    .line 178
    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->brandsList:Ljava/util/List;

    .line 182
    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    .line 183
    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesOthersArry:Ljava/util/ArrayList;

    .line 188
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->sdtvValue:I

    const/4 v3, -0x1

    .line 194
    iput v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mForOperations:I

    iput v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mForDates:I

    .line 197
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->layoutId:I

    .line 199
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->_clickId:I

    .line 218
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->enableCropHybrids:I

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->enableSowingDate:I

    .line 220
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->plotLatlongs:Ljava/lang/String;

    .line 223
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mIsMobileNumberChanged:Z

    .line 228
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isFromSelfassgin:I

    .line 229
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dialodIdsMap:Ljava/util/HashMap;

    .line 234
    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mMultiSelectEditText:Landroid/widget/EditText;

    .line 236
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->maxLength_multiselect:I

    .line 239
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isSaarthieFarmer:Ljava/lang/String;

    .line 240
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerUpdate:Ljava/lang/String;

    .line 251
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

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attribName:[Ljava/lang/String;

    .line 252
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    .line 253
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    .line 276
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isFromTransaction:I

    .line 285
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->latlongTag:Ljava/lang/String;

    .line 293
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->rulesMap:Ljava/util/HashMap;

    .line 296
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->validationFailedMsg:Ljava/lang/String;

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->visibiltyGoneIds:Ljava/util/ArrayList;

    .line 640
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddFarmer$4;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$4;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->stateChanged:Landroid/text/TextWatcher;

    .line 663
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddFarmer$5;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$5;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->districtChanged:Landroid/text/TextWatcher;

    .line 683
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddFarmer$6;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$6;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mandalChanged:Landroid/text/TextWatcher;

    .line 1559
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddFarmer$7;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$7;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    .line 1737
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddFarmer$8;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$8;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->operationListener:Landroid/view/View$OnClickListener;

    .line 2440
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddFarmer$17;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$17;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->datesListener:Landroid/view/View$OnClickListener;

    .line 2455
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddFarmer$18;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$18;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->datesListenerYearless:Landroid/view/View$OnClickListener;

    .line 2570
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddFarmer$20;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$20;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 2593
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddFarmer$21;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$21;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mDateSetListener_Yearless:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 4746
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddFarmer$32;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$32;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->message:Landroid/content/BroadcastReceiver;

    .line 5281
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddFarmer$38;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$38;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->yearListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/content/Context;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/TabHost;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/EditText;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->edtMandal:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/TextView;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvvillageid:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/EditText;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->edtVillage:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/ArrayList;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/ArrayList;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArrIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/EditText;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropAccr:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/EditText;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropDos:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/EditText;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->ethybrid:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/TextView;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvhybridid:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setListviewForAcreages()V

    return-void
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I
    .locals 0

    .line 150
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->enableSowingDate:I

    return p0
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/lang/String;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/conceptglobal/pmc/fragments/AddFarmer;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->txt:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/TextView;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvCropid:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/lang/String;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/EditText;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/fragments/AddFarmer;Ljava/lang/String;)Lcom/conceptglobal/pmc/model/FarmerCropMapping;
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isDuplicateCrop(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/List;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->listFarmerCrops:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/List;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->modifiedListOfFarmerCrops:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/conceptglobal/pmc/fragments/AddFarmer;I)I
    .locals 0

    .line 150
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->datePos:I

    return p1
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/List;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->images:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/HashMap;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dialodIdsMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3102(Lcom/conceptglobal/pmc/fragments/AddFarmer;I)I
    .locals 0

    .line 150
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mYear:I

    return p1
.end method

.method static synthetic access$3202(Lcom/conceptglobal/pmc/fragments/AddFarmer;I)I
    .locals 0

    .line 150
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mMonth:I

    return p1
.end method

.method static synthetic access$3302(Lcom/conceptglobal/pmc/fragments/AddFarmer;I)I
    .locals 0

    .line 150
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mDay:I

    return p1
.end method

.method static synthetic access$3400(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->updateDisplay()V

    return-void
.end method

.method static synthetic access$3500(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->updateDisplay_yearless()V

    return-void
.end method

.method static synthetic access$3700(Lcom/conceptglobal/pmc/fragments/AddFarmer;Ljava/lang/String;)Z
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isValidMobileNumber(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lcom/conceptglobal/pmc/fragments/AddFarmer;Ljava/lang/String;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->createProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/app/Dialog;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fragments/AddFarmer;J)V
    .locals 0

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->captureImage(J)V

    return-void
.end method

.method static synthetic access$4000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Z
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->validation()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dataInsertion()V

    return-void
.end method

.method static synthetic access$4200(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dataInsertMultiAttributeValues()V

    return-void
.end method

.method static synthetic access$4300(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/TextView;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dialogMsgTxtview:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/lang/String;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->validationFailedMsg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4402(Lcom/conceptglobal/pmc/fragments/AddFarmer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->validationFailedMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/model/FarmerMaster;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I
    .locals 0

    .line 150
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->segmentID:I

    return p0
.end method

.method static synthetic access$4700(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/lang/String;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerUpdate:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I
    .locals 0

    .line 150
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isFromTransaction:I

    return p0
.end method

.method static synthetic access$4900()Ljava/lang/String;
    .locals 1

    .line 150
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showAccessDeniedDialog()V

    return-void
.end method

.method static synthetic access$5000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Z
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->validateFarmerWithOTP()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/lang/String;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mNewMobile:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/lang/String;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mOldMobile:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I
    .locals 0

    .line 150
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->status:I

    return p0
.end method

.method static synthetic access$5400(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->startService()V

    return-void
.end method

.method static synthetic access$5500(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I
    .locals 0

    .line 150
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isFromSelfassgin:I

    return p0
.end method

.method static synthetic access$5600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->callOTPAsync()V

    return-void
.end method

.method static synthetic access$5700(Lcom/conceptglobal/pmc/fragments/AddFarmer;Lcom/conceptglobal/pmc/model/FarmerMaster;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showOTPDialog(Lcom/conceptglobal/pmc/model/FarmerMaster;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->navigateToDraftList()V

    return-void
.end method

.method static synthetic access$5900(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I
    .locals 0

    .line 150
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->statusFieldVal:I

    return p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showOTPVerifyDialog()V

    return-void
.end method

.method static synthetic access$6200(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/ArrayList;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->imagelist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6302(Lcom/conceptglobal/pmc/fragments/AddFarmer;Z)Z
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isImageDeleted:Z

    return p1
.end method

.method static synthetic access$6400(Lcom/conceptglobal/pmc/fragments/AddFarmer;Landroid/location/Location;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->bindAddress(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/TextView;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLatitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getOTPDetails()V

    return-void
.end method

.method static synthetic access$6700(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->removeMobileNumber()V

    return-void
.end method

.method static synthetic access$6800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/ArrayList;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->ruleAttributeIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I
    .locals 0

    .line 150
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->ruleID:I

    return p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/TextView;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvdistrictid:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/LinearLayout;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/ArrayList;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->visibiltyGoneIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/LinearLayout;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mAddDynamicLinearOthers:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$7300(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/HashMap;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->hAttributes:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I
    .locals 0

    .line 150
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mCurrentYear:I

    return p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/EditText;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->edtDistrict:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/TextView;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvmandalid:Landroid/widget/TextView;

    return-object p0
.end method

.method private addTab(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    .line 1760
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 1761
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0c0135

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090459

    .line 1762
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1763
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090230

    .line 1764
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 1765
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1766
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 1767
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10023c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const p2, 0x7f09041d

    if-eqz p1, :cond_0

    .line 1768
    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 1769
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10023d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f090415

    .line 1770
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 1771
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f100240

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f090418

    .line 1772
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 1776
    :cond_2
    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 1778
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method private bindAddress(Landroid/location/Location;)V
    .locals 6

    .line 3013
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getAddressWithLatLong(Landroid/content/Context;DD)Ljava/lang/String;

    move-result-object v0

    .line 3015
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getLongToDate(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setGPSTimeStamp(Ljava/lang/String;)V

    .line 3016
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "farmerGoogleAddress"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    .line 3017
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 3018
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 3019
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    .line 3020
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_0

    .line 3021
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3030
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 3028
    const-string v0, "AddFarmer"

    const-string v1, "Impossible to connect to Geocoder"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private bindOperations()V
    .locals 11

    .line 757
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->bindQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerOrRetailerBindDataDynamic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mentryValues:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 759
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 762
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mentryValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x0

    .line 763
    :goto_1
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 764
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Dropdown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 767
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mentryValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DealerMaster"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v5, "AddFarmer"

    if-eqz v3, :cond_0

    .line 771
    :try_start_1
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "RetailerShopName"

    const-string v9, "ContactId"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mentryValues:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v8, v4, v9, v10}, Lcom/conceptglobal/pmc/common/Queries;->getColumnValueWhereConditionBased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/conceptglobal/pmc/utils/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v3

    .line 773
    invoke-static {v5, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 775
    :cond_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FarmerMaster"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 777
    :try_start_2
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "FarmerName"

    const-string v9, "RespondentNo"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mentryValues:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v8, v4, v9, v10}, Lcom/conceptglobal/pmc/common/Queries;->getColumnValueWhereConditionBased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/conceptglobal/pmc/utils/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v3

    .line 779
    invoke-static {v5, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 781
    :cond_1
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TerritoryMaster"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 783
    :try_start_3
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "territoryName"

    const-string v9, "territoryId"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mentryValues:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v8, v4, v9, v10}, Lcom/conceptglobal/pmc/common/Queries;->getColumnValueWhereConditionBased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v3

    .line 785
    invoke-static {v5, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 789
    :cond_2
    :try_start_4
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mentryValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_2

    .line 794
    :cond_3
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Multiselect Dropdown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 795
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getFarmerMultiSelectDataQry(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getMultiSelectData(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/MultiSelectData;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 797
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/MultiSelectData;->getIds()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 798
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/MultiSelectData;->getNames()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 800
    :cond_4
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 801
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 805
    :cond_5
    :try_start_5
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v3

    const/16 v4, 0xfe

    if-ne v3, v4, :cond_6

    .line 806
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mentryValues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mentryValues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 807
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mentryValues:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getSaartiFarmerNameQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/conceptglobal/pmc/utils/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 810
    :cond_6
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mentryValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 818
    :cond_8
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->validateMobileNumber()V

    .line 821
    :cond_9
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->gettingAtaticData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataStatic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->draftStaticData:Ljava/util/List;

    .line 822
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lez v0, :cond_a

    .line 823
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->draftStaticData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getStateID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 824
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->draftStaticData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getStateName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 825
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->draftStaticData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getDistrictID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 826
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->draftStaticData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getDistrictName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 827
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->draftStaticData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getMandalID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->draftStaticData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getMandalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 829
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->draftStaticData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getVillageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 830
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->draftStaticData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getVillageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 831
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLatitude:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->draftStaticData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getLatitude()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 832
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLongitude:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->draftStaticData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getLongitude()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 834
    :cond_a
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->draftStaticData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->draftStaticData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getStateID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->draftStaticData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getStateID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 836
    :cond_b
    :try_start_6
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/Queries;->gettingStateCount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_c

    .line 838
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/Queries;->gettingStates()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSampleModel(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/SampleModel;

    move-result-object v0

    .line 839
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/SampleModel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/SampleModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception v0

    .line 843
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tag:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 846
    :cond_c
    :goto_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->draftStaticData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->draftStaticData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getDistrictID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->draftStaticData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getDistrictID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 848
    :cond_d
    :try_start_7
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    const-string v7, "DistrictMaster"

    const-string v8, "StateId "

    iget-object v9, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->gettingCountofMasters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_e

    .line 850
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->gettingDistricts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSampleModel(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/SampleModel;

    move-result-object v0

    .line 851
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/SampleModel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 852
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/SampleModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_4

    :catch_6
    move-exception v0

    .line 855
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tag:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 858
    :cond_e
    :goto_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->draftStaticData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->draftStaticData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getMandalID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->draftStaticData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getMandalID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 860
    :cond_f
    :try_start_8
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v6, "MandalMaster"

    const-string v7, "Districtid"

    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->gettingCountofMasters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_10

    .line 862
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/conceptglobal/pmc/common/Queries;->gettingMandals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSampleModel(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/SampleModel;

    move-result-object v0

    .line 863
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/SampleModel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 864
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/SampleModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_5

    :catch_7
    move-exception v0

    .line 867
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 870
    :cond_10
    :goto_5
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    const-string v1, "Village"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 871
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setEditableFalse(Landroid/widget/EditText;)V

    .line 872
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setEditableFalse(Landroid/widget/EditText;)V

    .line 873
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setEditableFalse(Landroid/widget/EditText;)V

    .line 874
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_11
    return-void
.end method

.method private callOTPAsync()V
    .locals 3

    .line 4505
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4508
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddFarmer$OTPAsync;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer$OTPAsync;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;Lcom/conceptglobal/pmc/fragments/AddFarmer$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer$OTPAsync;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4512
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private captureImage(J)V
    .locals 8

    .line 4722
    const-string v0, "Village"

    const-string v1, "Planter"

    const-string v2, "Farmer"

    new-instance v3, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v3}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    invoke-virtual {v3, p0}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    .line 4723
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->setPictureReportingContext(Landroid/content/Context;)V

    .line 4724
    const-string v3, "AddFarmer"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Navigation"

    const-string v6, "Image Capture Click"

    invoke-static {v5, v6, v3, v4}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4725
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    const-class v5, Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4726
    const-string v4, "activityId"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4727
    const-string v4, "assignmentId"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4729
    :try_start_0
    sget-object v4, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "setReferenceType"

    if-nez v4, :cond_2

    :try_start_1
    sget-object v4, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    const-string v7, "UnVerifiedFarmer"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 4731
    :cond_0
    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4732
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v3, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_1

    .line 4733
    :cond_1
    sget-object v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4734
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v3, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_1

    .line 4730
    :cond_2
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v3, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4737
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4739
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setReferenceID"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4740
    const-string v0, "attributeId"

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4741
    const-string v0, "farmerId"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4742
    const-string v0, "imageId"

    invoke-virtual {v3, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4743
    invoke-virtual {p0, v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private createOperationAttributes()V
    .locals 36

    move-object/from16 v15, p0

    const v0, 0x7f090335

    .line 1074
    invoke-virtual {v15, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    const v0, 0x7f09033c

    .line 1075
    invoke-virtual {v15, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mAddDynamicLinearOthers:Landroid/widget/LinearLayout;

    .line 1076
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->hAttributes:Ljava/util/HashMap;

    .line 1077
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mattributesnamesArr:Ljava/util/ArrayList;

    .line 1078
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mOprDatesArr:Ljava/util/ArrayList;

    .line 1079
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    .line 1081
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArrIds:Ljava/util/ArrayList;

    .line 1083
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    const-string v14, "Farmer"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v13, "UnVerifiedFarmer"

    const-string v1, "Personal"

    const-string v12, "Village"

    const-string v11, "Planter"

    if-nez v0, :cond_2

    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1087
    :cond_0
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1088
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v1, v11}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    goto :goto_1

    .line 1089
    :cond_1
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1090
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v1, v12}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    goto :goto_1

    .line 1084
    :cond_2
    :goto_0
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v1, v14}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    .line 1085
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->ruleID:I

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getRuleDetails(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRuleAttributeIds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->ruleAttributeIds:Ljava/util/ArrayList;

    .line 1092
    :cond_3
    :goto_1
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1094
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->hAttributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1096
    const-string v0, ","

    const/16 v17, 0x0

    if-lez v10, :cond_4

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v10, :cond_4

    .line 1099
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->hAttributes:Ljava/util/HashMap;

    iget-object v2, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsMandatory()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    .line 1101
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v8

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxLength()I

    move-result v16

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v18

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v19

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v20

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v21

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    move-object/from16 v22, v1

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsTransactionEditable()I

    move-result v23

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/conceptglobal/pmc/model/DynamicFields;

    move-object/from16 v1, p0

    move-object/from16 v25, v0

    move v0, v9

    move/from16 v9, v16

    move/from16 v26, v10

    move/from16 v10, v18

    move-object/from16 v27, v11

    move/from16 v11, v19

    move-object/from16 v28, v12

    move/from16 v12, v20

    move-object/from16 v29, v13

    move/from16 v13, v21

    move-object/from16 v30, v14

    move-object/from16 v14, v22

    move/from16 v15, v23

    move-object/from16 v16, v24

    .line 1100
    invoke-virtual/range {v1 .. v16}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILandroid/widget/LinearLayout;ILcom/conceptglobal/pmc/model/DynamicFields;)V

    move-object/from16 v15, p0

    .line 1102
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dynamicColumnnames:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v25

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v0, 0x1

    move-object v0, v14

    move/from16 v10, v26

    move-object/from16 v11, v27

    move-object/from16 v12, v28

    move-object/from16 v13, v29

    move-object/from16 v14, v30

    goto/16 :goto_2

    :cond_4
    move/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    move-object v14, v0

    .line 1106
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    move-object/from16 v13, v30

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Others"

    if-nez v0, :cond_7

    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    move-object/from16 v12, v29

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v11, v27

    move-object/from16 v10, v28

    goto :goto_3

    .line 1108
    :cond_5
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    move-object/from16 v11, v27

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1109
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v1, v11}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesOthersArry:Ljava/util/ArrayList;

    move-object/from16 v10, v28

    goto :goto_4

    .line 1110
    :cond_6
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    move-object/from16 v10, v28

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1111
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v1, v10}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesOthersArry:Ljava/util/ArrayList;

    goto :goto_4

    :cond_7
    move-object/from16 v11, v27

    move-object/from16 v10, v28

    move-object/from16 v12, v29

    .line 1107
    :goto_3
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v1, v13}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesOthersArry:Ljava/util/ArrayList;

    .line 1115
    :cond_8
    :goto_4
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x1

    if-lez v0, :cond_9

    add-int/lit8 v0, v26, -0x1

    const/4 v8, 0x0

    .line 1117
    :goto_5
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_9

    .line 1118
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->hAttributes:Ljava/util/HashMap;

    iget-object v2, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsMandatory()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesOthersArry:Ljava/util/ArrayList;

    .line 1120
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v16

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxLength()I

    move-result v17

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v18

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v19

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v20

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v21

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mAddDynamicLinearOthers:Landroid/widget/LinearLayout;

    iget-object v9, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsTransactionEditable()I

    move-result v23

    iget-object v9, v15, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v24, v9

    check-cast v24, Lcom/conceptglobal/pmc/model/DynamicFields;

    move-object/from16 v25, v1

    move-object/from16 v1, p0

    move v9, v8

    move-object/from16 v8, v16

    move/from16 v27, v0

    move v0, v9

    move/from16 v9, v17

    move-object/from16 v31, v10

    move/from16 v10, v18

    move-object/from16 v32, v11

    move/from16 v11, v19

    move-object/from16 v33, v12

    move/from16 v12, v20

    move-object/from16 v34, v13

    move/from16 v13, v21

    move-object/from16 v35, v14

    move-object/from16 v14, v25

    move/from16 v15, v23

    move-object/from16 v16, v24

    .line 1119
    invoke-virtual/range {v1 .. v16}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILandroid/widget/LinearLayout;ILcom/conceptglobal/pmc/model/DynamicFields;)V

    .line 1121
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dynamicColumnnames:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v35

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v0, 0x1

    move-object v15, v1

    move-object v14, v4

    move/from16 v0, v27

    move-object/from16 v10, v31

    move-object/from16 v11, v32

    move-object/from16 v12, v33

    move-object/from16 v13, v34

    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_9
    move-object/from16 v31, v10

    move-object/from16 v32, v11

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    move-object v1, v15

    .line 1125
    :try_start_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->hAttributes:Ljava/util/HashMap;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isSaarthieFarmer:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 1127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    if-gtz v26, :cond_a

    .line 1130
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_a

    goto :goto_8

    .line 1133
    :cond_a
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1134
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1135
    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    move-object/from16 v4, v32

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1136
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-virtual {v2, v0, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->bindQueryInAddFarmer(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->bindQuery:Ljava/lang/String;

    goto :goto_8

    .line 1137
    :cond_b
    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    move-object/from16 v4, v34

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    move-object/from16 v4, v33

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_7

    .line 1139
    :cond_c
    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    move-object/from16 v3, v31

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1140
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v2, v0, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->bindQueryInAddFarmer(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->bindQuery:Ljava/lang/String;

    goto :goto_8

    .line 1138
    :cond_d
    :goto_7
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    invoke-virtual {v2, v0, v4, v3}, Lcom/conceptglobal/pmc/common/Queries;->bindQueryInAddFarmer(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->bindQuery:Ljava/lang/String;

    .line 1143
    :cond_e
    :goto_8
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesOthersArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private createProgressDialog(Ljava/lang/String;)V
    .locals 4

    .line 4181
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4182
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0114

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090305

    .line 4183
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dialogMsgTxtview:Landroid/widget/TextView;

    .line 4184
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4185
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 4186
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    .line 4187
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method private dataInsertMultiAttributeValues()V
    .locals 22

    move-object/from16 v1, p0

    .line 4318
    const-string v0, ""

    const-string v2, ","

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 4319
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mFarmerMultiAttributeDetailsList:Ljava/util/ArrayList;

    .line 4320
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Multiselect Dropdown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4323
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 4324
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4325
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 4326
    array-length v7, v6

    if-lez v7, :cond_0

    .line 4327
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->deleteMultiAttributeData(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 4328
    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v8, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z

    const/4 v7, 0x0

    .line 4330
    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_0

    .line 4331
    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mFarmerMultiAttributeDetailsList:Ljava/util/ArrayList;

    new-instance v15, Lcom/conceptglobal/pmc/model/FarmerMultiAttributeDetails;

    const-string v10, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getFarmerID()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v12

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    .line 4332
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aget-object v14, v6, v7

    aget-object v16, v5, v7

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    .line 4335
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getPdaid()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    const-string v19, ""

    const-string v20, ""

    const-string v21, ""

    move-object v9, v15

    move-object v3, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    invoke-direct/range {v9 .. v20}, Lcom/conceptglobal/pmc/model/FarmerMultiAttributeDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4331
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4344
    :cond_0
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mFarmerMultiAttributeDetailsList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 4345
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mFarmerMultiAttributeDetailsList:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerMultiAttributeDetails(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 4348
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4349
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private dataInsertion()V
    .locals 9

    .line 3077
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 3078
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmeridIncrement()V

    .line 3080
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getPdaid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 3081
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->gettingPdaid()V

    .line 3083
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setStateID(Ljava/lang/String;)V

    .line 3084
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setDistrictID(Ljava/lang/String;)V

    .line 3085
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setMandalID(Ljava/lang/String;)V

    .line 3086
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setVillageId(Ljava/lang/String;)V

    .line 3087
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setStateName(Ljava/lang/String;)V

    .line 3088
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setDistrictName(Ljava/lang/String;)V

    .line 3089
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setMandalName(Ljava/lang/String;)V

    .line 3090
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setVillageName(Ljava/lang/String;)V

    .line 3091
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setLatitude(Ljava/lang/String;)V

    .line 3092
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setLongitude(Ljava/lang/String;)V

    .line 3093
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setisNew(Ljava/lang/String;)V

    .line 3094
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setServerupdatedstatus(Ljava/lang/String;)V

    .line 3095
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getPdaid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setPdaid(Ljava/lang/String;)V

    .line 3096
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->status:I

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setStatus(I)V

    .line 3097
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    const-string v1, "Farmer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    const-string v1, "UnVerifiedFarmer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    const-string v1, "Village"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 3121
    :cond_3
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    const-string v3, "Planter"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3122
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setTypeofFarmer(Ljava/lang/String;)V

    .line 3123
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setFarmerTypeId(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3124
    :cond_4
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3125
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setTypeofFarmer(Ljava/lang/String;)V

    .line 3126
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setFarmerTypeId(Ljava/lang/String;)V

    goto :goto_2

    .line 3098
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setTypeofFarmer(Ljava/lang/String;)V

    .line 3099
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setFarmerTypeId(Ljava/lang/String;)V

    .line 3100
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->status:I

    if-ne v0, v3, :cond_6

    .line 3101
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setProfilePicCaptured(I)V

    .line 3102
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setColumn3(I)V

    goto :goto_2

    :cond_6
    if-nez v0, :cond_9

    .line 3106
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getIsProfilePicCapturd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3107
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3108
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setProfilePicCaptured(I)V

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 3110
    :goto_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 3111
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->images:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/ImageDetails;

    .line 3112
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getEventTypeId()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_8

    .line 3113
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setProfilePicCaptured(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3128
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    const-string v1, "True"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setIsActive(Ljava/lang/String;)V

    .line 3131
    :try_start_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/common/Queries;->gettingFarmerCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmercount:I

    if-lez v0, :cond_a

    .line 3133
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArrIds:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->updateFarmerDetails(Lcom/conceptglobal/pmc/model/FarmerMaster;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/ArrayList;)V

    goto :goto_3

    .line 3145
    :cond_a
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-static {v0, v1, v3, v4}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerDetails(Lcom/conceptglobal/pmc/model/FarmerMaster;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 3148
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3152
    :goto_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->listFarmerCrops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v3, "AddFarmer"

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    .line 3153
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getMappingId()I

    move-result v4

    if-nez v4, :cond_c

    .line 3155
    :try_start_2
    invoke-static {v1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertCropSelectionDetails(Lcom/conceptglobal/pmc/model/FarmerCropMapping;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    .line 3157
    invoke-static {v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 3159
    :cond_c
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->modifiedListOfFarmerCrops:Ljava/util/List;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getMappingId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3161
    :try_start_3
    invoke-static {v1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->updateCropSelectionDetails(Lcom/conceptglobal/pmc/model/FarmerCropMapping;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    .line 3163
    invoke-static {v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 3169
    :cond_d
    :try_start_4
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 3170
    :goto_5
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->deletedCropsIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_e

    .line 3171
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update FarmerCropDetails set IsActive= 0 , serverupdatedstatus =\'false\'  where RespondentNo =\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' and DetailsID = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/conceptglobal/pmc/fragments/AddFarmer;->deletedCropsIds:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    .line 3175
    :try_start_5
    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3177
    :cond_e
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 3183
    :try_start_6
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getPdaid()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v2, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->UpdateFarmerCropStatus(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    .line 3185
    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    return-void

    .line 3177
    :goto_7
    sget-object v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 3178
    throw v0
.end method

.method private enableGeoDetailsLayout()V
    .locals 9

    .line 1011
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "Farmer"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getInWhichTab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInWhichTabGeoDetailsAvailable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090380

    .line 1012
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mAddGeoDetailsInPersonal:Landroid/widget/LinearLayout;

    const v1, 0x7f09037f

    .line 1013
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mAddGeoDetailsInOthers:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 1015
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attribName:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1016
    const-string v2, "Personal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1018
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attribName:[Ljava/lang/String;

    aget-object v4, v2, v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/EditText;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mAddGeoDetailsInPersonal:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsConditions:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aget-object v8, v2, v3

    move-object v2, p0

    move v3, v1

    invoke-virtual/range {v2 .. v8}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->addIndividualGeoDetails(ILjava/lang/String;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto :goto_1

    .line 1019
    :cond_0
    const-string v2, "Others"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1021
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attribName:[Ljava/lang/String;

    aget-object v4, v2, v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/EditText;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mAddGeoDetailsInOthers:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsConditions:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aget-object v8, v2, v3

    move-object v2, p0

    move v3, v1

    invoke-virtual/range {v2 .. v8}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->addIndividualGeoDetails(ILjava/lang/String;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1025
    const-string v1, "AddFarmer"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private farmeridIncrement()V
    .locals 2

    .line 910
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

    .line 912
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private fetchLocation(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    .line 4919
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4920
    const-string v0, "AddFarmer"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->latlongTag:Ljava/lang/String;

    .line 4923
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4924
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p1, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 4927
    :cond_1
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/AddFarmer$33;

    invoke-direct {v1, p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/AddFarmer$33;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;Landroid/widget/TextView;Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->latlongTag:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4950
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private generateResPondentNumber()Ljava/lang/String;
    .locals 4

    .line 885
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

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

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    .line 889
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOTPDetails()V
    .locals 9

    .line 4984
    const-string v0, "getOTPDetails"

    const-string v1, "AddFarmer"

    .line 0
    const-string v2, "mOTP ::::::::::::: "

    const-string v3, "OTP Request jsonObj ::::::::::::: "

    const-string v4, "name :::::::"

    const/4 v5, 0x0

    .line 4986
    :try_start_0
    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4987
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    .line 4988
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getFarmerNameMobileQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4987
    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerNameMobileData(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/FarmerMaster;

    move-result-object v6

    .line 4989
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getFarmerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mobile ::::::::::: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getMobile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4990
    new-instance v4, Lcom/conceptglobal/pmc/model/otp/GetOTP;

    invoke-direct {v4}, Lcom/conceptglobal/pmc/model/otp/GetOTP;-><init>()V

    .line 4991
    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/conceptglobal/pmc/model/otp/GetOTP;->setRespondentNo(Ljava/lang/String;)V

    .line 4992
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getMobile()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/conceptglobal/pmc/model/otp/GetOTP;->setMobileNo(Ljava/lang/String;)V

    .line 4993
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getFarmerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/conceptglobal/pmc/model/otp/GetOTP;->setFarmerName(Ljava/lang/String;)V

    .line 4994
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getPdaid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/conceptglobal/pmc/model/otp/GetOTP;->setPdaid(Ljava/lang/String;)V

    .line 4995
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    .line 4996
    invoke-virtual {v6, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 4997
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4998
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodSendFarmerOTP()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4999
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v7

    invoke-virtual {v7, v4, v3}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 5000
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 5001
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5002
    const-class v3, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;

    invoke-virtual {v6, v5, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;

    .line 5003
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Success"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5004
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;->getData()Lcom/conceptglobal/pmc/model/otp/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/otp/Data;->getOTP()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mOTP:Ljava/lang/String;

    .line 5005
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mOTP:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5007
    :cond_0
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 5011
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getRulesConfigs()V
    .locals 5

    .line 4798
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getRulesQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRulesConfigurations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4802
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->rulesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4804
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/RulesConfig;

    .line 4805
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->rulesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/RulesConfig;->getvAttrId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4806
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->rulesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/RulesConfig;->getvAttrId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 4807
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/RulesConfig;->getRule()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4808
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/RulesConfig;->getRule()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 4809
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4811
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4812
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4813
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/RulesConfig;->getRule()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4816
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4817
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4818
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4819
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/RulesConfig;->getRule()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4820
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->rulesMap:Ljava/util/HashMap;

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

    .line 703
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 704
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 706
    const-string v3, "farmerId"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 709
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setRespondentNo(Ljava/lang/String;)V

    .line 710
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isFromAll:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 712
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tag:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 715
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmeridIncrement()V

    if-eqz v1, :cond_2

    .line 716
    const-string v3, "MobileNumber"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 717
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mobile:Ljava/lang/String;

    goto :goto_0

    .line 721
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmeridIncrement()V

    .line 724
    :cond_2
    :goto_0
    const-string v1, "SegmentId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 725
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->segmentID:I

    .line 727
    :cond_3
    const-string v1, "fromTransaction"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 728
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isFromTransaction:I

    .line 730
    :cond_4
    const-string v1, "fromSelfassgin"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 731
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isFromSelfassgin:I

    .line 734
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/common/Queries;->getCropsandAcreages(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getCropSelectionData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->listFarmerCrops:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 737
    const-string v1, "AddFarmer"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 741
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v3, "AUTODeriveSDTVFromPincode"

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    .line 742
    iput v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->sdtvValue:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 744
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private gettingPdaid()V
    .locals 3

    .line 3192
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 3194
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private initialization()V
    .locals 8

    const/4 v0, 0x0

    .line 490
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->updateDOS:Ljava/lang/String;

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dynamicColumnnames:Ljava/lang/StringBuilder;

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mentryValues:Ljava/util/List;

    const v0, 0x7f09041e

    .line 493
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tabHost:Landroid/widget/TabHost;

    .line 494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->deletedCropsIds:Ljava/util/List;

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->listFarmerCrops:Ljava/util/List;

    .line 496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->modifiedListOfFarmerCrops:Ljava/util/List;

    const v0, 0x7f09033b

    .line 502
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tab1:Landroid/widget/LinearLayout;

    const v0, 0x7f090338

    .line 503
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tab2:Landroid/widget/RelativeLayout;

    const v0, 0x7f090336

    .line 504
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tab3:Landroid/widget/LinearLayout;

    .line 506
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvstateid:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvdistrictid:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvmandalid:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvvillageid:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->edtState:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->edtDistrict:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->edtMandal:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->edtVillage:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->edtState:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->stateChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 517
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->edtDistrict:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->districtChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 518
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->edtMandal:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mandalChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 520
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090090

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvAddCrop:Landroid/widget/TextView;

    .line 521
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addCropText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09009c

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->btnDraft:Landroid/widget/Button;

    .line 523
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draftTabText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900af

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->btnSave:Landroid/widget/Button;

    .line 525
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_saveText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0902d8

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->lvCrops:Landroid/widget/ListView;

    .line 527
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09054c

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLatitude:Landroid/widget/TextView;

    .line 528
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_latitudeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090555

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLongitude:Landroid/widget/TextView;

    .line 530
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_longitudeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900a0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->btnLatLng:Landroid/widget/ImageView;

    .line 532
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090242

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->imgFarmer:Landroid/widget/ImageView;

    .line 533
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09056d

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->btnRemarks:Landroid/widget/Button;

    .line 535
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_remarksText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0904fb

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvAcreagesNote:Landroid/widget/TextView;

    .line 537
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_acresValueText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901c2

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etRemarks:Landroid/widget/EditText;

    .line 539
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterRemarksText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f09021b

    .line 540
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->gridView:Landroid/widget/GridView;

    .line 555
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etRemarks:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->btnSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->btnDraft:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvAddCrop:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 560
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->btnLatLng:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 564
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mYear:I

    .line 565
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mCurrentYear:I

    const/4 v2, 0x2

    .line 566
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mMonth:I

    const/4 v2, 0x5

    .line 567
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mDay:I

    .line 568
    new-instance v0, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    .line 572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->imagelist:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 575
    :try_start_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getEnableCropHybrids()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->enableCropHybrids:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 577
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 578
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->enableCropHybrids:I

    .line 579
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tag:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 582
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getSowingWindowEnable()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->enableSowingDate:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    const v3, 0x7f10002e

    .line 584
    invoke-virtual {p0, v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Profarm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 585
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->enableSowingDate:I

    goto :goto_1

    .line 587
    :cond_0
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->enableSowingDate:I

    .line 589
    :goto_1
    const-string v3, "AddFarmer"

    invoke-static {v3, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 594
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    const-string v4, "FarmerMasterReadonlyRoleIds"

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 595
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    const-string v5, "CropHeroReadonlyRoleIds"

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getItemValuewithActiveCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 596
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/Queries;->getRoleIdFromuserRoleMapping()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 597
    const-string v5, ","

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 598
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    .line 599
    :goto_3
    array-length v7, v2

    if-ge v6, v7, :cond_3

    .line 600
    aget-object v7, v2, v6

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 601
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getSarthiFarmerQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 602
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "yes"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 603
    :cond_1
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isRoleReadonlyFarmer:Z

    goto :goto_4

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-eqz v3, :cond_5

    .line 609
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 610
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 611
    :goto_5
    array-length v3, v2

    if-ge v0, v3, :cond_5

    .line 612
    aget-object v3, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 613
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isRoleReadonlyCropHero:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catch_2
    move-exception v0

    .line 619
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 621
    :cond_5
    :goto_6
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isRoleReadonlyFarmer:Z

    if-eqz v0, :cond_6

    .line 622
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->edtState:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setEditableFalse(Landroid/widget/EditText;)V

    .line 623
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->edtDistrict:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setEditableFalse(Landroid/widget/EditText;)V

    .line 624
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->edtMandal:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setEditableFalse(Landroid/widget/EditText;)V

    .line 625
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->edtVillage:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_6
    return-void
.end method

.method public static isDecimal(Ljava/lang/String;)Z
    .locals 2

    .line 3211
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

    .line 3213
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private isDuplicateCrop(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/FarmerCropMapping;
    .locals 4

    const/4 v0, 0x0

    .line 2179
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->listFarmerCrops:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 2180
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->listFarmerCrops:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2181
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->listFarmerCrops:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    .line 2183
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getCropName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 2210
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1

    .line 3201
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 3203
    const-string v0, "AddFarmer"

    invoke-static {v0, p0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private isValidMobileNumber(Ljava/lang/String;)Z
    .locals 1

    .line 3007
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic lambda$setBottomViewPadding$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 5346
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    const v1, 0x1020013

    .line 5349
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TabWidget;

    if-eqz p0, :cond_0

    .line 5352
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getPaddingLeft()I

    move-result v1

    .line 5353
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getPaddingTop()I

    move-result v2

    .line 5354
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getPaddingRight()I

    move-result v3

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 5351
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/TabWidget;->setPadding(IIII)V

    :cond_0
    return-object p1
.end method

.method private makeParentChildVisibility(Lcom/conceptglobal/pmc/model/DynamicFields;)V
    .locals 7

    .line 5240
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->ruleAttributeIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 5242
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->ruleID:I

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getParentAttributeIdDraft(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 5243
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 5244
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->ruleID:I

    invoke-virtual {v2, v3, v0}, Lcom/conceptglobal/pmc/common/Queries;->getRuleParentAttrValueId(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 5245
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArrIds:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->hAttributes:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 5246
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->ruleID:I

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArrIds:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->hAttributes:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/conceptglobal/pmc/common/Queries;->getOperationType(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5247
    const-string v1, "Visibility"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5250
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    .line 5253
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5254
    move-object v5, v4

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5256
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5257
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5258
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5262
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mAddDynamicLinearOthers:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 5264
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mAddDynamicLinearOthers:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5265
    move-object v5, v4

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5267
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mAddDynamicLinearOthers:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5268
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5269
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 5276
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method private navigateToDraftList()V
    .locals 3

    .line 4518
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    const-string v1, "UnVerifiedFarmer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4519
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4520
    const-string v1, "farmerType"

    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 4521
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4522
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->startActivity(Landroid/content/Intent;)V

    .line 4524
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->finish()V

    .line 4525
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->startService()V

    return-void
.end method

.method private removeMobileNumber()V
    .locals 3

    const/4 v0, 0x0

    .line 5057
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5058
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v1

    if-eqz v1, :cond_0

    .line 5059
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5060
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 5061
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setAdapter()V
    .locals 3

    .line 4786
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailsQry_Assignment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->images:Ljava/util/List;

    .line 4787
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4788
    new-instance v0, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->images:Ljava/util/List;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->imagelist:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    .line 4789
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->gridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4790
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4791
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->gridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 4793
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->gridView:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setBottomViewPadding()V
    .locals 2

    .line 5345
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tabHost:Landroid/widget/TabHost;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/AddFarmer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private setDataForForm()V
    .locals 2

    const/4 v0, 0x0

    .line 474
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setDate(I)V
    .locals 1

    .line 2635
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "dd-MM-yyyy"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2637
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2639
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2641
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->txt:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2642
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setDate_yearless(I)V
    .locals 2

    .line 2647
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2648
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2650
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2652
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2654
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2655
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 3051
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3052
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 3053
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 3054
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setError(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 4153
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddFarmer$29;

    invoke-direct {v0, p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/AddFarmer$29;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setListviewForAcreages()V
    .locals 3

    .line 1788
    new-instance v0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->listFarmerCrops:Ljava/util/List;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->adapterCrops:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;

    .line 1789
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->lvCrops:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1790
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->lvCrops:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/ListviewFillToParent;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    return-void
.end method

.method private setText(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 1

    .line 4144
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddFarmer$28;

    invoke-direct {v0, p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/AddFarmer$28;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private settingTabs()V
    .locals 3

    .line 899
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 900
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_personalTabText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10023c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08010b

    invoke-direct {p0, v0, v2, v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 901
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_acreageTabText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10023d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080101

    invoke-direct {p0, v0, v2, v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 903
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_othersTabText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100240

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080166

    invoke-direct {p0, v0, v2, v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private showAccessDeniedDialog()V
    .locals 4

    .line 5071
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5073
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_accessDeniedDialog()Ljava/lang/String;

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

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/fragments/AddFarmer$37;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$37;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5078
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 5079
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5080
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V
    .locals 10

    .line 1813
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1814
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v2, 0x7f0c0056

    .line 1815
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x7f090193

    .line 1816
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropAccr:Landroid/widget/EditText;

    .line 1817
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addAcreages()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v2, 0x7f0900b2

    .line 1818
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1819
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_saveText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0900a8

    .line 1820
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f090192

    .line 1821
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropName:Landroid/widget/EditText;

    .line 1822
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addCropText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1823
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropName:Landroid/widget/EditText;

    const/4 v5, 0x0

    const v6, 0x7f0800d7

    invoke-virtual {v4, v5, v5, v6, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v4, 0x7f090194

    .line 1825
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropDos:Landroid/widget/EditText;

    .line 1826
    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_dateOfSowingInFarmerCrops()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1827
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropDos:Landroid/widget/EditText;

    const v7, 0x7f0800c8

    invoke-virtual {v4, v5, v5, v7, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v4, 0x7f0905a7

    .line 1828
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvCropid:Landroid/widget/TextView;

    const v4, 0x7f0901a3

    .line 1829
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->ethybrid:Landroid/widget/EditText;

    .line 1830
    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addHybrid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1831
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->ethybrid:Landroid/widget/EditText;

    invoke-virtual {v4, v5, v5, v6, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v4, 0x7f0905a9

    .line 1832
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvhybridid:Landroid/widget/TextView;

    .line 1833
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropAccr:Landroid/widget/EditText;

    const/16 v6, 0x2002

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 1834
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropAccr:Landroid/widget/EditText;

    new-array v6, v1, [Landroid/text/InputFilter;

    new-instance v7, Lcom/conceptglobal/pmc/fragments/AddFarmer$DecimalDigitsInputFilter;

    const/4 v8, 0x6

    const/4 v9, 0x2

    invoke-direct {v7, p0, v8, v9}, Lcom/conceptglobal/pmc/fragments/AddFarmer$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;II)V

    aput-object v7, v6, v5

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v4, -0x777778

    .line 1835
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1841
    iget v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->enableSowingDate:I

    if-ne v4, v1, :cond_0

    .line 1843
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropDos:Landroid/widget/EditText;

    const-string v6, "Sowing window"

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1845
    :cond_0
    iget v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->enableCropHybrids:I

    const/16 v6, 0x8

    if-nez v4, :cond_1

    .line 1846
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->ethybrid:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 1848
    :cond_1
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->ethybrid:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1850
    :goto_0
    iget v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->enableSowingDate:I

    if-nez v4, :cond_2

    .line 1851
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropDos:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1

    .line 1853
    :cond_2
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropDos:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1856
    :goto_1
    sget-object v4, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    const-string v7, "Village"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1857
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->ethybrid:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1858
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropDos:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_3
    if-eqz p3, :cond_4

    .line 1862
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropDos:Landroid/widget/EditText;

    invoke-virtual {v4, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-nez p4, :cond_5

    .line 1865
    iget-object p3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropAccr:Landroid/widget/EditText;

    invoke-virtual {p3, v6}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2

    .line 1868
    :cond_5
    iget-object p3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropAccr:Landroid/widget/EditText;

    invoke-virtual {p3, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1871
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_6

    .line 1872
    iget-object p3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropName:Landroid/widget/EditText;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1873
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvCropid:Landroid/widget/TextView;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1874
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropAccr:Landroid/widget/EditText;

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

    goto :goto_3

    .line 1876
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropName:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1877
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropAccr:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1879
    :goto_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropAccr:Landroid/widget/EditText;

    new-instance p2, Lcom/conceptglobal/pmc/fragments/AddFarmer$9;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$9;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1918
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropName:Landroid/widget/EditText;

    new-instance p2, Lcom/conceptglobal/pmc/fragments/AddFarmer$10;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$10;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1939
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropDos:Landroid/widget/EditText;

    new-instance p2, Lcom/conceptglobal/pmc/fragments/AddFarmer$11;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$11;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1963
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->etCropName:Landroid/widget/EditText;

    new-instance p2, Lcom/conceptglobal/pmc/fragments/AddFarmer$12;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$12;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1993
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->ethybrid:Landroid/widget/EditText;

    new-instance p2, Lcom/conceptglobal/pmc/fragments/AddFarmer$13;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$13;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2010
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvCropid:Landroid/widget/TextView;

    new-instance p2, Lcom/conceptglobal/pmc/fragments/AddFarmer$14;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$14;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2087
    new-instance p1, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;Landroid/app/Dialog;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2158
    new-instance p1, Lcom/conceptglobal/pmc/fragments/AddFarmer$16;

    invoke-direct {p1, p0, v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer$16;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;Landroid/widget/Button;)V

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2170
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2171
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2172
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2173
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2174
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 3

    .line 5016
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5017
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okDiscardDialog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fragments/AddFarmer$34;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$34;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5024
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 5025
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5026
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 5033
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5034
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_yesText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fragments/AddFarmer$36;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$36;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 5040
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fragments/AddFarmer$35;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$35;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5046
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 5047
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5048
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5051
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method private showDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;)V
    .locals 6

    .line 2980
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 2981
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0c0057

    .line 2982
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f0904a4

    .line 2983
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090241

    .line 2984
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v2, 0x7f0900aa

    .line 2985
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2986
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10020d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;->getFarmerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2987
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100218

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;->getMobile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\nMarket Name    : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2988
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;->getTerritory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\nVillage Name     : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2989
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;->getVillage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2986
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2991
    new-instance p1, Lcom/conceptglobal/pmc/fragments/AddFarmer$27;

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$27;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;Landroid/app/Dialog;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2998
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2999
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-virtual {p1, v1, v3}, Landroid/view/Window;->setLayout(II)V

    .line 3000
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3001
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3002
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3003
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showGoBackDialog()V
    .locals 4

    .line 2684
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2686
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fragments/AddFarmer$22;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$22;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2693
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

    new-instance v3, Lcom/conceptglobal/pmc/fragments/AddFarmer$23;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$23;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2711
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2712
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2713
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showMobileSearchDialog()V
    .locals 5

    .line 2898
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 2899
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0c005d

    .line 2900
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f090173

    .line 2901
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f090095

    .line 2904
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0900b8

    .line 2905
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 2907
    new-instance v4, Lcom/conceptglobal/pmc/fragments/AddFarmer$24;

    invoke-direct {v4, p0, v1, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$24;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2923
    new-instance v1, Lcom/conceptglobal/pmc/fragments/AddFarmer$25;

    invoke-direct {v1, p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$25;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;Landroid/app/Dialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2930
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2931
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v4}, Landroid/view/Window;->setLayout(II)V

    .line 2932
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2933
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2934
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2935
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showNoDataAvailableDialog(Ljava/lang/String;)V
    .locals 3

    .line 2962
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2963
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/fragments/AddFarmer$26;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$26;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    const v2, 0x7f100101

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2969
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2970
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2971
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showOTPDialog(Lcom/conceptglobal/pmc/model/FarmerMaster;)V
    .locals 2

    .line 2872
    new-instance v0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

    .line 2873
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getMobile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getFarmerName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1, p0}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/interfaces/OnVerifyOTPListener;)V

    .line 2874
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->showDialog()V

    return-void
.end method

.method private showOTPVerifyDialog()V
    .locals 4

    .line 4492
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 4493
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4494
    const-string v1, "As you don\'t have internet connection now. Please verify the farmer later."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4495
    new-instance v1, Lcom/conceptglobal/pmc/fragments/AddFarmer$31;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$31;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    const/4 v2, -0x1

    const-string v3, "Ok"

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4501
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1

    .line 4168
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddFarmer$30;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer$30;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startService()V
    .locals 3

    .line 4529
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4530
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4531
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Service initiated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 4532
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 4533
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    :cond_0
    return-void
.end method

.method private updateDisplay()V
    .locals 3

    .line 2611
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mFiledStr:Ljava/lang/String;

    .line 2612
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2614
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2616
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2618
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setDate(I)V

    return-void
.end method

.method private updateDisplay_yearless()V
    .locals 2

    .line 2623
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mFiledStr:Ljava/lang/String;

    .line 2624
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2626
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2628
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2630
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setDate_yearless(I)V

    return-void
.end method

.method private validateFarmerWithOTP()Z
    .locals 5

    const/4 v0, 0x0

    .line 2854
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v3, "FarmerOTPRoleId"

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getItemValuewithActiveCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2855
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getRoleIdFromuserRoleMapping()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 2856
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 2857
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 2858
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 2859
    aget-object v4, v1, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2866
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return v0
.end method

.method private validateMobileNumber()V
    .locals 3

    .line 2878
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 2879
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2880
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2881
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2882
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2883
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mOldMobile:Ljava/lang/String;

    goto :goto_1

    .line 2885
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mOldMobile:Ljava/lang/String;

    .line 2887
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mOldMobile Number ::::::::::: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AddFarmer"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private validation()Z
    .locals 34

    move-object/from16 v1, p0

    .line 3221
    const-string v2, "Please add atleast two crop"

    const-string v3, "IrrigatedArea & DripIrrigatedArea sum should less than or equal to Land Owned(acres) & Land Leased(acres) sum"

    const-string v4, "All Crop acres sum should less than or equal Owned & Cultivated (acres) and Leased In & Cultivated (acres) sum"

    const-string v5, "All Crop acres sum should less than or equal to Total Acreage value"

    const-string v6, "Irrigated Land and Rainfed Land sum  should not exceed 100%"

    const-string v7, "Preferred Retailer1 and Preferred Retailer2 can\'t be same"

    const-string v8, "Village"

    const-string v9, "Farmer"

    const-string v10, "1"

    const-string v11, " "

    .line 3236
    const-string v14, ""

    move-object/from16 v17, v14

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    const/4 v15, 0x0

    const/16 v16, 0x1

    :goto_0
    :try_start_0
    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_14

    const/16 v27, 0x0

    if-ge v15, v13, :cond_55

    .line 3238
    :try_start_1
    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    const/16 v12, 0x25

    if-ne v13, v12, :cond_0

    .line 3239
    :try_start_2
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v17, v12

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v3, v10

    goto/16 :goto_3e

    .line 3241
    :cond_0
    :goto_1
    :try_start_3
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    const/16 v13, 0x4c

    if-ne v12, v13, :cond_1

    .line 3242
    :try_start_4
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v18, v12

    .line 3244
    :cond_1
    :try_start_5
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    const/16 v13, 0x2f

    if-ne v12, v13, :cond_2

    .line 3245
    :try_start_6
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 3247
    :cond_2
    :try_start_7
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v12
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    const/16 v13, 0x1f

    if-ne v12, v13, :cond_3

    .line 3248
    :try_start_8
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-object/from16 v19, v12

    .line 3250
    :cond_3
    :try_start_9
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v12
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    const/16 v13, 0x46

    if-ne v12, v13, :cond_4

    .line 3251
    :try_start_a
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    move-object/from16 v20, v12

    .line 3253
    :cond_4
    :try_start_b
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v12
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    const/16 v13, 0x1c

    if-ne v12, v13, :cond_5

    .line 3254
    :try_start_c
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 3256
    :cond_5
    :try_start_d
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v12
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    const/16 v13, 0x1d

    if-ne v12, v13, :cond_6

    .line 3257
    :try_start_e
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    move-object/from16 v22, v12

    .line 3259
    :cond_6
    :try_start_f
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v12
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    const/16 v13, 0x1e

    if-ne v12, v13, :cond_7

    .line 3260
    :try_start_10
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    move-object/from16 v21, v12

    .line 3262
    :cond_7
    :try_start_11
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v12
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    const/16 v13, 0x45

    if-ne v12, v13, :cond_8

    .line 3263
    :try_start_12
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    move-object/from16 v23, v12

    .line 3265
    :cond_8
    :try_start_13
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v12
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5

    const/16 v13, 0x46

    if-ne v12, v13, :cond_9

    .line 3266
    :try_start_14
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    move-object/from16 v24, v12

    .line 3268
    :cond_9
    :try_start_15
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v12
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5

    const/16 v13, 0xa5

    if-ne v12, v13, :cond_a

    .line 3269
    :try_start_16
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    move-object/from16 v25, v12

    .line 3271
    :cond_a
    :try_start_17
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v12
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5

    const/16 v13, 0xd2

    if-ne v12, v13, :cond_b

    .line 3272
    :try_start_18
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    .line 3274
    :cond_b
    :try_start_19
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v12
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_5

    const/16 v13, 0x4e

    if-ne v12, v13, :cond_c

    .line 3275
    :try_start_1a
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    .line 3277
    :cond_c
    :try_start_1b
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsMandatory()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_32

    .line 3279
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->visibiltyGoneIds:Ljava/util/ArrayList;

    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    move-object/from16 v30, v2

    move-object/from16 v31, v5

    move-object/from16 v29, v9

    move-object/from16 v28, v10

    move-object v9, v14

    goto/16 :goto_12

    .line 3282
    :cond_d
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_5

    if-nez v12, :cond_e

    .line 3284
    :try_start_1c
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v28

    move-object/from16 v29, v9

    invoke-virtual/range {v28 .. v28}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_emptyEditText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v12, v9}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0

    move-object/from16 v30, v2

    move-object/from16 v32, v3

    move-object/from16 v33, v4

    move-object/from16 v31, v5

    move-object/from16 v28, v10

    move-object v9, v14

    :goto_2
    const/16 v16, 0x0

    goto/16 :goto_1e

    :cond_e
    move-object/from16 v29, v9

    .line 3287
    :try_start_1d
    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v9

    if-eqz v9, :cond_15

    .line 3288
    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v9

    const-string v12, "Mobile"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 3289
    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->isInEditMode()Z

    move-result v9

    if-eqz v9, :cond_15

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_15

    .line 3290
    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/conceptglobal/pmc/utils/Encryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3291
    const-string v12, "\n"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_5

    if-eqz v12, :cond_f

    .line 3292
    :try_start_1e
    const-string v12, "\n"

    invoke-virtual {v9, v12, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0

    .line 3293
    :cond_f
    :try_start_1f
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mNewMobile:Ljava/lang/String;

    .line 3294
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v13
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_5

    move-object/from16 v28, v10

    :try_start_20
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    move-object/from16 v30, v2

    iget v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->typeOfFarmer:I

    invoke-virtual {v13, v10, v2}, Lcom/conceptglobal/pmc/common/Queries;->isMobileExistsForFarmer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v2, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 3295
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "select FarmerID from FarmerMaster where  RespondentNo = \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3296
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v5

    const-string v5, "SELECT Mobile FROM PMCTerritoryFarmerMaster where  Mobile =\'"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' and FarmerID !=\'"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;)Z

    move-result v5

    .line 3297
    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v9

    if-nez v2, :cond_12

    if-eqz v5, :cond_10

    goto :goto_3

    .line 3304
    :cond_10
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v9, :cond_11

    .line 3306
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3311
    :cond_11
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3301
    :cond_12
    :goto_3
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_mobileExistsToast()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_4

    :cond_13
    move-object/from16 v30, v2

    move-object/from16 v31, v5

    move-object/from16 v28, v10

    .line 3315
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v2

    .line 3316
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v2, :cond_14

    .line 3318
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_4
    const/4 v2, 0x0

    const/16 v16, 0x0

    goto :goto_6

    .line 3323
    :cond_14
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_5

    :cond_15
    move-object/from16 v30, v2

    move-object/from16 v31, v5

    move-object/from16 v28, v10

    :goto_5
    const/4 v2, 0x1

    .line 3327
    :goto_6
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_19

    .line 3328
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v5

    const-string v9, "Email"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 3329
    sget-object v5, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_16

    .line 3331
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_7
    const/4 v2, 0x0

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_16
    if-eqz v2, :cond_19

    .line 3337
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-direct {v1, v5, v9}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 3341
    :cond_17
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 3342
    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 3343
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3344
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 3345
    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 3346
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_18

    .line 3348
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_18
    if-eqz v2, :cond_19

    .line 3354
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-direct {v1, v5, v9}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 3360
    :cond_19
    :goto_8
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v5

    const-string v9, "Dropdown"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 3361
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1a

    .line 3363
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/16 v16, 0x0

    goto :goto_9

    :cond_1a
    if-eqz v2, :cond_1b

    .line 3369
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-direct {v1, v5, v9}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 3372
    :cond_1b
    :goto_9
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1c

    .line 3374
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/16 v16, 0x0

    goto :goto_a

    :cond_1c
    if-eqz v2, :cond_1d

    .line 3380
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-direct {v1, v5, v9}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 3384
    :cond_1d
    :goto_a
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v5

    const-string v9, "Multiselect Dropdown"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 3387
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1e

    .line 3388
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3390
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_7

    .line 3393
    :try_start_21
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_6

    const/4 v2, 0x0

    const/16 v16, 0x0

    goto :goto_b

    :cond_1e
    if-eqz v2, :cond_1f

    .line 3397
    :try_start_22
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-direct {v1, v5, v9}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 3401
    :cond_1f
    :goto_b
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_20

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v5

    const-string v9, "Datepicker"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    move-object/from16 v32, v3

    move-object/from16 v33, v4

    move-object v9, v14

    goto/16 :goto_23

    .line 3403
    :cond_20
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v5

    if-lez v5, :cond_27

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v5

    if-lez v5, :cond_27

    .line 3404
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 3405
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3406
    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v9

    .line 3407
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v10

    const/4 v12, 0x1

    sub-int/2addr v9, v12

    if-le v5, v9, :cond_22

    add-int/2addr v10, v12

    if-lt v5, v10, :cond_21

    goto :goto_c

    :cond_21
    if-eqz v2, :cond_23

    .line 3416
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_d

    .line 3410
    :cond_22
    :goto_c
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/16 v16, 0x0

    :cond_23
    :goto_d
    move-object/from16 v32, v14

    goto/16 :goto_10

    .line 3419
    :cond_24
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isDecimal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 3420
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 3421
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v5

    .line 3422
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v5, v13

    move-object/from16 v32, v14

    int-to-double v13, v5

    cmpl-double v5, v9, v13

    if-lez v5, :cond_26

    const/4 v5, 0x1

    add-int/2addr v12, v5

    int-to-double v12, v12

    cmpg-double v5, v9, v12

    if-ltz v5, :cond_25

    goto :goto_e

    :cond_25
    if-eqz v2, :cond_2f

    .line 3431
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 3425
    :cond_26
    :goto_e
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_27
    move-object/from16 v32, v14

    .line 3435
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v5

    if-lez v5, :cond_2b

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v5

    if-gtz v5, :cond_2b

    .line 3436
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 3437
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3438
    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v9

    if-ge v5, v9, :cond_28

    .line 3442
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_28
    if-eqz v2, :cond_2f

    .line 3448
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 3451
    :cond_29
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isDecimal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 3452
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 3453
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v5

    int-to-double v12, v5

    cmpg-double v5, v9, v12

    if-gez v5, :cond_2a

    .line 3457
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_2a
    if-eqz v2, :cond_2f

    .line 3463
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 3467
    :cond_2b
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v5

    if-lez v5, :cond_2f

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v5

    if-gtz v5, :cond_2f

    .line 3468
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 3469
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3470
    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v9

    if-le v5, v9, :cond_2c

    .line 3474
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_2c
    if-eqz v2, :cond_2f

    .line 3480
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 3483
    :cond_2d
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isDecimal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 3484
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 3485
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v5

    int-to-double v12, v5

    cmpl-double v5, v9, v12

    if-lez v5, :cond_2e

    .line 3489
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_f
    const/16 v16, 0x0

    goto :goto_10

    :cond_2e
    if-eqz v2, :cond_2f

    .line 3495
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 3500
    :cond_2f
    :goto_10
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v2

    if-lez v2, :cond_30

    .line 3501
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isDecimal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 3502
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 3503
    invoke-static {}, Ljava/text/DecimalFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v5

    .line 3504
    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 3505
    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    const/4 v9, 0x0

    .line 3506
    invoke-virtual {v5, v9}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 3507
    invoke-virtual {v5, v2}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3508
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 3510
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 3515
    :cond_30
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Decimal"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_7

    if-eqz v2, :cond_31

    .line 3517
    :try_start_23
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1

    goto :goto_11

    .line 3520
    :catch_1
    :try_start_24
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v32

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_6

    move-object/from16 v32, v3

    move-object/from16 v33, v4

    goto/16 :goto_2

    :cond_31
    :goto_11
    move-object/from16 v9, v32

    goto/16 :goto_1d

    :cond_32
    move-object/from16 v30, v2

    move-object/from16 v31, v5

    move-object/from16 v29, v9

    move-object/from16 v28, v10

    move-object v9, v14

    .line 3525
    :try_start_25
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4d

    .line 3526
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_33

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Datepicker"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    :goto_12
    move-object/from16 v32, v3

    move-object/from16 v33, v4

    goto/16 :goto_23

    .line 3528
    :cond_33
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v2

    if-eqz v2, :cond_38

    .line 3529
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Mobile"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 3530
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_38

    .line 3531
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    iget v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->typeOfFarmer:I

    invoke-virtual {v5, v10, v12}, Lcom/conceptglobal/pmc/common/Queries;->isMobileExistsForFarmer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v5, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 3532
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v5

    if-eqz v2, :cond_34

    .line 3536
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_mobileExistsToast()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 3539
    :cond_34
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_35

    .line 3541
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_13

    .line 3547
    :cond_35
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_14

    .line 3552
    :cond_36
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v2

    .line 3553
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v2, :cond_37

    .line 3555
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_13
    const/4 v2, 0x0

    const/16 v16, 0x0

    goto :goto_15

    .line 3561
    :cond_37
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_38
    :goto_14
    const/4 v2, 0x1

    .line 3567
    :goto_15
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3c

    .line 3568
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v5

    const-string v10, "Email"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 3569
    sget-object v5, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-nez v5, :cond_39

    .line 3571
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_16
    const/4 v2, 0x0

    const/16 v16, 0x0

    goto/16 :goto_17

    :cond_39
    if-eqz v2, :cond_3c

    .line 3577
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 3581
    :cond_3a
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 3582
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 3583
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3584
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 3585
    invoke-virtual {v5, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 3586
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 3588
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_3b
    if-eqz v2, :cond_3c

    .line 3594
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 3600
    :cond_3c
    :goto_17
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v5

    if-lez v5, :cond_43

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v5

    if-lez v5, :cond_43

    .line 3601
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 3602
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3603
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v10

    .line 3604
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v10, v13

    if-le v5, v10, :cond_3e

    add-int/2addr v12, v13

    if-lt v5, v12, :cond_3d

    goto :goto_18

    :cond_3d
    if-eqz v2, :cond_3f

    .line 3613
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_19

    .line 3607
    :cond_3e
    :goto_18
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/16 v16, 0x0

    :cond_3f
    :goto_19
    move-object/from16 v32, v3

    move-object/from16 v33, v4

    goto/16 :goto_1c

    .line 3616
    :cond_40
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isDecimal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 3617
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 3618
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v10

    .line 3619
    iget-object v14, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v14

    .line 3620
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v26, 0x1

    add-int/lit8 v10, v10, -0x1

    move-object/from16 v32, v3

    move-object/from16 v33, v4

    int-to-double v3, v10

    cmpl-double v10, v12, v3

    if-lez v10, :cond_42

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v14, v14, 0x1

    int-to-double v3, v14

    cmpg-double v5, v12, v3

    if-ltz v5, :cond_41

    goto :goto_1a

    :cond_41
    if-eqz v2, :cond_4b

    .line 3628
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 3622
    :cond_42
    :goto_1a
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_43
    move-object/from16 v32, v3

    move-object/from16 v33, v4

    .line 3632
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v3

    if-lez v3, :cond_47

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v3

    if-gtz v3, :cond_47

    .line 3633
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 3634
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3635
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v4

    if-ge v3, v4, :cond_44

    .line 3639
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_44
    if-eqz v2, :cond_4b

    .line 3645
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 3648
    :cond_45
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isDecimal(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 3649
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 3650
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v10

    .line 3652
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-double v12, v10

    cmpg-double v5, v3, v12

    if-gez v5, :cond_46

    .line 3654
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_46
    if-eqz v2, :cond_4b

    .line 3660
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 3664
    :cond_47
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v3

    if-lez v3, :cond_4b

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v3

    if-gtz v3, :cond_4b

    .line 3665
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 3666
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3667
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v4

    if-le v3, v4, :cond_48

    .line 3671
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_48
    if-eqz v2, :cond_4b

    .line 3677
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 3680
    :cond_49
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isDecimal(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 3681
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 3682
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v10

    .line 3684
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-double v12, v10

    cmpl-double v5, v3, v12

    if-lez v5, :cond_4a

    .line 3686
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_1b
    const/16 v16, 0x0

    goto :goto_1c

    :cond_4a
    if-eqz v2, :cond_4b

    .line 3692
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 3697
    :cond_4b
    :goto_1c
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v2

    if-lez v2, :cond_4c

    .line 3698
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isDecimal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 3699
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 3700
    invoke-static {}, Ljava/text/DecimalFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v3

    .line 3701
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 3702
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    const/4 v4, 0x0

    .line 3703
    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 3704
    invoke-virtual {v3, v2}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3705
    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 3706
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3707
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 3712
    :cond_4c
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Decimal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_7

    if-eqz v2, :cond_4e

    .line 3714
    :try_start_26
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_2

    goto :goto_1e

    .line 3717
    :catch_2
    :try_start_27
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_6

    goto/16 :goto_2

    :cond_4d
    :goto_1d
    move-object/from16 v32, v3

    move-object/from16 v33, v4

    .line 3723
    :cond_4e
    :goto_1e
    :try_start_28
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->rulesMap:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_54

    .line 3724
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->rulesMap:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 3725
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3727
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3728
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v5, 0x1

    if-ne v4, v5, :cond_52

    .line 3730
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 3732
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/RulesConfig;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_7

    .line 3734
    :try_start_29
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->hAttributes:Ljava/util/HashMap;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/RulesConfig;->getAttributeId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_3

    add-float/2addr v5, v10

    goto :goto_20

    :catch_3
    add-float v5, v5, v27

    goto :goto_20

    :cond_50
    cmpl-float v3, v5, v4

    if-eqz v3, :cond_4f

    .line 3742
    :try_start_2a
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "Total count doesnt match"

    invoke-direct {v1, v3, v4}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_51
    const/16 v16, 0x0

    goto/16 :goto_1f

    :cond_52
    const/4 v5, 0x2

    if-ne v4, v5, :cond_4f

    .line 3747
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/RulesConfig;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_7

    .line 3749
    :try_start_2b
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->hAttributes:Ljava/util/HashMap;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/RulesConfig;->getAttributeId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_4

    add-float/2addr v5, v10

    goto :goto_21

    :catch_4
    add-float v5, v5, v27

    goto :goto_21

    :cond_53
    const/high16 v4, 0x42c80000    # 100.0f

    cmpl-float v4, v5, v4

    if-lez v4, :cond_4f

    .line 3755
    :try_start_2c
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/RulesConfig;

    .line 3757
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->hAttributes:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/RulesConfig;->getAttributeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "Total Percentage should not exceed 100%"

    invoke-direct {v1, v4, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_22

    :cond_54
    :goto_23
    add-int/lit8 v15, v15, 0x1

    move-object v14, v9

    move-object/from16 v10, v28

    move-object/from16 v9, v29

    move-object/from16 v2, v30

    move-object/from16 v5, v31

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    goto/16 :goto_0

    :catch_5
    move-exception v0

    move-object/from16 v28, v10

    :goto_24
    move-object v2, v0

    move-object/from16 v3, v28

    goto/16 :goto_3e

    :cond_55
    move-object/from16 v30, v2

    move-object/from16 v32, v3

    move-object/from16 v33, v4

    move-object/from16 v31, v5

    move-object/from16 v29, v9

    move-object/from16 v28, v10

    move-object v9, v14

    :cond_56
    move-object/from16 v2, v17

    move-object/from16 v3, v18

    if-eqz v2, :cond_57

    .line 3768
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_57

    if-eqz v3, :cond_57

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_57

    .line 3769
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_7

    if-eqz v2, :cond_57

    .line 3771
    :try_start_2d
    iput-object v7, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->validationFailedMsg:Ljava/lang/String;

    .line 3773
    invoke-direct {v1, v7}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showToast(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_6

    const/16 v16, 0x0

    goto :goto_26

    :catch_6
    move-exception v0

    move-object v2, v0

    move-object/from16 v3, v28

    :goto_25
    const/16 v16, 0x0

    goto/16 :goto_3e

    :catch_7
    move-exception v0

    goto :goto_24

    :cond_57
    :goto_26
    if-eqz v19, :cond_58

    .line 3776
    :try_start_2e
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_58

    if-eqz v20, :cond_58

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_58

    .line 3778
    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_7

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpl-double v7, v2, v4

    if-lez v7, :cond_58

    .line 3780
    :try_start_2f
    iput-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->validationFailedMsg:Ljava/lang/String;

    .line 3782
    invoke-direct {v1, v6}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showToast(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_6

    const/16 v16, 0x0

    :cond_58
    const-wide/16 v2, 0x0

    move-wide v5, v2

    const/4 v4, 0x0

    .line 3786
    :goto_27
    :try_start_30
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->listFarmerCrops:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_13

    if-ge v4, v7, :cond_59

    .line 3787
    :try_start_31
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->listFarmerCrops:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getAcreages()F

    move-result v7
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_7

    float-to-double v12, v7

    add-double/2addr v5, v12

    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 3789
    :cond_59
    :try_start_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_13

    if-eqz v22, :cond_5a

    .line 3790
    :try_start_33
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5a

    if-eqz v21, :cond_5a

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5a

    if-eqz v4, :cond_5a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5a

    .line 3792
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-static/range {v22 .. v22}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v17
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_7

    add-double v14, v14, v17

    cmpl-double v4, v12, v14

    if-lez v4, :cond_5a

    move-object/from16 v4, v33

    .line 3794
    :try_start_34
    iput-object v4, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->validationFailedMsg:Ljava/lang/String;

    .line 3796
    invoke-direct {v1, v4}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showToast(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_6

    const/16 v16, 0x0

    .line 3799
    :cond_5a
    :try_start_35
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_13

    if-nez v4, :cond_5b

    :try_start_36
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5b

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5b

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5b

    .line 3801
    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-static/range {v24 .. v24}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static/range {v22 .. v22}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v17
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_7

    add-double v14, v14, v17

    cmpl-double v4, v12, v14

    if-lez v4, :cond_5b

    move-object/from16 v4, v32

    .line 3803
    :try_start_37
    iput-object v4, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->validationFailedMsg:Ljava/lang/String;

    .line 3805
    invoke-direct {v1, v4}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showToast(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_6

    const/16 v16, 0x0

    .line 3808
    :cond_5b
    :try_start_38
    sget-object v4, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_13

    if-eqz v4, :cond_5c

    cmpl-double v4, v5, v2

    if-lez v4, :cond_5c

    .line 3809
    :try_start_39
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 3811
    invoke-static/range {v25 .. v25}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_7

    cmpl-double v4, v5, v2

    if-lez v4, :cond_5c

    move-object/from16 v2, v31

    .line 3813
    :try_start_3a
    iput-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->validationFailedMsg:Ljava/lang/String;

    .line 3815
    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showToast(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_6

    const/16 v16, 0x0

    .line 3839
    :cond_5c
    :try_start_3b
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getAddCropMandatory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_62

    .line 3840
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->listFarmerCrops:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->listFarmerCrops:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_5d

    goto :goto_29

    .line 3846
    :cond_5d
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->listFarmerCrops:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5e
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    .line 3847
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getCropName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5f

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getCropName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_9

    if-nez v4, :cond_60

    .line 3849
    :cond_5f
    :try_start_3c
    const-string v4, "Please add crop name"

    iput-object v4, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->validationFailedMsg:Ljava/lang/String;

    .line 3851
    const-string v4, "Please add crop name"

    invoke-direct {v1, v4}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showToast(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_8

    const/16 v16, 0x0

    .line 3853
    :cond_60
    :try_start_3d
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getAcreages()F

    move-result v3
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_9

    cmpl-float v3, v3, v27

    if-nez v3, :cond_5e

    .line 3855
    :try_start_3e
    const-string v3, "Please add crop accerages"

    iput-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->validationFailedMsg:Ljava/lang/String;

    .line 3857
    const-string v3, "Please add crop accerages"

    invoke-direct {v1, v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showToast(Ljava/lang/String;)V

    const/16 v16, 0x0

    goto :goto_28

    :cond_61
    :goto_29
    move-object/from16 v2, v30

    .line 3842
    iput-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->validationFailedMsg:Ljava/lang/String;

    .line 3844
    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showToast(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_8

    const/16 v16, 0x0

    goto :goto_2b

    :catch_8
    move-exception v0

    move-object v2, v0

    const/16 v16, 0x0

    goto :goto_2a

    :catch_9
    move-exception v0

    move-object v2, v0

    .line 3876
    :goto_2a
    :try_start_3f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_13

    .line 3889
    :cond_62
    :goto_2b
    :try_start_40
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    const-string v4, "isImagereqforAddFarmer"

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getIsImageReq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_d

    if-eqz v2, :cond_67

    move-object/from16 v3, v28

    .line 3890
    :try_start_41
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_c

    move-object/from16 v4, v29

    :try_start_42
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 3891
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getIsProfilePicCapturd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_63

    .line 3892
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 3895
    :cond_63
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_64

    const/4 v5, 0x0

    const/16 v16, 0x0

    goto :goto_2d

    :cond_64
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 3898
    :goto_2c
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->images:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_66

    .line 3899
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->images:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/ImageDetails;

    .line 3900
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/ImageDetails;->getEventTypeId()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_65

    .line 3902
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setProfilePicCaptured(I)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_b

    const/4 v5, 0x1

    :cond_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_66
    :goto_2d
    if-nez v5, :cond_69

    .line 3907
    :try_start_43
    const-string v2, "Please take farmer profile photo"

    iput-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->validationFailedMsg:Ljava/lang/String;

    .line 3909
    const-string v2, "Please take farmer profile photo"

    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showToast(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_a

    const/16 v16, 0x0

    goto :goto_31

    :catch_a
    move-exception v0

    move-object v2, v0

    const/16 v16, 0x0

    goto :goto_30

    :catch_b
    move-exception v0

    goto :goto_2f

    :catch_c
    move-exception v0

    goto :goto_2e

    :cond_67
    move-object/from16 v3, v28

    :cond_68
    move-object/from16 v4, v29

    goto :goto_31

    :catch_d
    move-exception v0

    move-object/from16 v3, v28

    :goto_2e
    move-object/from16 v4, v29

    :goto_2f
    move-object v2, v0

    .line 3915
    :goto_30
    :try_start_44
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_12

    .line 3919
    :cond_69
    :goto_31
    :try_start_45
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    const-string v6, "isImagereqforAddVillage"

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getIsImageReq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6c

    .line 3920
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 3921
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getIsProfilePicCapturd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6a

    .line 3922
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 3925
    :cond_6a
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_f

    if-nez v2, :cond_6b

    .line 3927
    :try_start_46
    const-string v2, "Please take  photo"

    iput-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->validationFailedMsg:Ljava/lang/String;

    .line 3928
    const-string v2, "Please take  photo"

    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showToast(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_e

    const/16 v16, 0x0

    goto :goto_33

    :catch_e
    move-exception v0

    move-object v2, v0

    const/16 v16, 0x0

    goto :goto_32

    .line 3930
    :cond_6b
    :try_start_47
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setProfilePicCaptured(I)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_f

    goto :goto_33

    :catch_f
    move-exception v0

    move-object v2, v0

    .line 3935
    :goto_32
    :try_start_48
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3938
    :cond_6c
    :goto_33
    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_12

    const-string v5, "UnVerifiedFarmer"

    const-string v6, "Please take Latitude and Longitude"

    if-nez v2, :cond_6d

    :try_start_49
    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 3939
    :cond_6d
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v7, "isFarmerLatLongRequired"

    invoke-virtual {v2, v7}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLondMandatory(Ljava/lang/String;)I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_6f

    .line 3940
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6e

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_6f

    .line 3944
    :cond_6e
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLatitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v2, v7}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 3945
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLongitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v2, v7}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_12

    .line 3947
    :try_start_4a
    iput-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->validationFailedMsg:Ljava/lang/String;

    .line 3948
    invoke-direct {v1, v6}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showToast(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_10

    const/16 v16, 0x0

    goto :goto_34

    :catch_10
    move-exception v0

    move-object v2, v0

    goto/16 :goto_25

    .line 3954
    :cond_6f
    :goto_34
    :try_start_4b
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v7, "TotalCropSumAcerage"

    invoke-virtual {v2, v7}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLondMandatory(Ljava/lang/String;)I

    move-result v2
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_12

    const-string v7, "Planter"

    const/4 v10, 0x1

    if-ne v2, v10, :cond_79

    .line 3957
    :try_start_4c
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v12, "CropInPercentage"

    invoke-virtual {v2, v12}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLondMandatory(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v10, :cond_73

    .line 3958
    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_70

    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_70

    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 3960
    :cond_70
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->listFarmerCrops:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    .line 3961
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getAcreages()F

    move-result v9
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_12

    add-float v27, v27, v9

    goto :goto_35

    :cond_71
    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v2, v27, v2

    if-lez v2, :cond_72

    .line 3967
    :try_start_4d
    const-string v2, "Total crop percentage should not exceed 100%"

    iput-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->validationFailedMsg:Ljava/lang/String;

    .line 3969
    const-string v2, "Total crop percentage should not exceed 100%"

    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showToast(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_10

    const/4 v9, 0x0

    goto :goto_36

    :cond_72
    move/from16 v9, v16

    :goto_36
    move/from16 v16, v9

    goto/16 :goto_3a

    .line 3974
    :cond_73
    :try_start_4e
    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_74

    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_74

    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_12

    if-eqz v2, :cond_79

    .line 3977
    :cond_74
    :try_start_4f
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    sget-object v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_75

    const-string v10, "FarmerTotalCultivatedId"

    goto :goto_37

    :cond_75
    sget-object v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_76

    const-string v10, "PlanterTotalCultivatedId"

    goto :goto_37

    :cond_76
    const-string v10, "VillageTotalCultivatedId"

    :goto_37
    invoke-virtual {v2, v10}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLondMandatory(Ljava/lang/String;)I

    move-result v2

    .line 3980
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->listFarmerCrops:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_38
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_77

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    .line 3982
    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getAcreages()F

    goto :goto_38

    .line 3990
    :cond_77
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->hAttributes:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 3991
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 3992
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->hAttributes:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3993
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_78

    const-string v9, "."

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_78

    goto :goto_39

    :cond_78
    const-string v2, "0"

    :goto_39
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_11

    .line 4051
    :catch_11
    :cond_79
    :goto_3a
    :try_start_50
    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 4052
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v4, "isVillageLatLongRequired"

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLondMandatory(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_80

    .line 4053
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7a

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_80

    .line 4057
    :cond_7a
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLatitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 4058
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLongitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_3b
    const/4 v9, 0x0

    goto/16 :goto_3f

    .line 4064
    :cond_7b
    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7e

    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7c

    goto :goto_3c

    .line 4079
    :cond_7c
    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 4080
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v4, "isPlanterLatLongRequired"

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLondMandatory(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_80

    .line 4081
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7d

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_80

    .line 4085
    :cond_7d
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLatitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 4086
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLongitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 4065
    :cond_7e
    :goto_3c
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v4, "isFarmerLatLongRequired"

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLondMandatory(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_80

    .line 4066
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7f

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_80

    .line 4070
    :cond_7f
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLatitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 4071
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLongitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_12

    .line 4073
    :try_start_51
    iput-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->validationFailedMsg:Ljava/lang/String;

    .line 4074
    invoke-direct {v1, v6}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showToast(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_10

    goto/16 :goto_3b

    :catch_12
    move-exception v0

    goto :goto_3d

    :catch_13
    move-exception v0

    move-object/from16 v3, v28

    goto :goto_3d

    :catch_14
    move-exception v0

    move-object v3, v10

    :goto_3d
    move-object v2, v0

    .line 4095
    :goto_3e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 4096
    const-string v4, "AddFarmer"

    invoke-static {v4, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_80
    move/from16 v9, v16

    .line 4099
    :goto_3f
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsConditions:[[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 4100
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_82

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_81

    goto :goto_40

    .line 4106
    :cond_81
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_41

    .line 4102
    :cond_82
    :goto_40
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_stateText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 4109
    :cond_83
    :goto_41
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsConditions:[[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 4110
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_85

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_84

    goto :goto_42

    .line 4116
    :cond_84
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-direct {v1, v2, v6}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_43

    .line 4112
    :cond_85
    :goto_42
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_districtText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 4119
    :cond_86
    :goto_43
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsConditions:[[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v2, v2, v5

    const/4 v6, 0x1

    aget-object v2, v2, v6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 4120
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_88

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_87

    goto :goto_44

    .line 4126
    :cond_87
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_45

    .line 4122
    :cond_88
    :goto_44
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_mandalsText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 4129
    :cond_89
    :goto_45
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsConditions:[[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v2, v2, v5

    const/4 v6, 0x1

    aget-object v2, v2, v6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 4130
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8b

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_8a

    goto :goto_46

    .line 4136
    :cond_8a
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_47

    .line 4132
    :cond_8b
    :goto_46
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_villageText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v12, 0x0

    goto :goto_48

    :cond_8c
    :goto_47
    move v12, v9

    :goto_48
    return v12
.end method


# virtual methods
.method public addIndividualGeoDetails(ILjava/lang/String;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 7

    .line 1031
    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1032
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 1033
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v0, 0x4

    const/4 v2, 0x0

    .line 1034
    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1035
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1036
    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    .line 1037
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1039
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1040
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v3, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1041
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1043
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x13

    .line 1044
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1045
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    const v6, 0x7f11015b

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1046
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1047
    const-string v0, "1"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_0

    .line 1048
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "<font color=\'#ff0000\'>*</font>"

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1050
    :cond_0
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1053
    :goto_0
    const-string p2, "operation"

    invoke-virtual {p4, p2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1054
    invoke-virtual {p4, p1}, Landroid/widget/EditText;->setId(I)V

    .line 1055
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const p1, 0x7f080096

    .line 1056
    invoke-virtual {p4, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const p1, 0x7f0800d7

    .line 1057
    invoke-virtual {p4, v2, v2, p1, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1058
    invoke-virtual {p4, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1059
    invoke-virtual {p4, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 p1, 0x11

    .line 1060
    invoke-virtual {p4, p1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1061
    invoke-virtual {p4, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1063
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1064
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1066
    invoke-virtual {p3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1067
    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1069
    invoke-virtual {p5, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILandroid/widget/LinearLayout;ILcom/conceptglobal/pmc/model/DynamicFields;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p8

    move-object/from16 v6, p15

    const-string v7, "select Column3 from FarmerMaster where RespondentNo = \'"

    .line 1149
    iget v8, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mForOperations:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mForOperations:I

    .line 1150
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v10, 0x3f800000    # 1.0f

    .line 1151
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 1152
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x1

    .line 1236
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 1152
    invoke-direct {v11, v13, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v10, 0x0

    const/4 v12, 0x4

    .line 1231
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 1153
    invoke-virtual {v11, v10, v12, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1154
    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1155
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v11, 0x10

    .line 1156
    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1157
    iget v11, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->layoutId:I

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1160
    new-instance v11, Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-direct {v11, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1161
    const-string v16, "#ffffff"

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v11, v13}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTextColor(I)V

    .line 1162
    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    const v12, 0x7f11015b

    invoke-virtual {v11, v13, v12}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/16 v12, 0x10

    .line 1163
    invoke-virtual {v11, v12}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setGravity(I)V

    const/4 v12, 0x5

    .line 1164
    invoke-virtual {v11, v12, v10, v10, v10}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setPadding(IIII)V

    if-eqz v3, :cond_1

    .line 1166
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_1

    const-string v13, "1"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "true"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1167
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "<font color=\'#ff0000\'>*</font>"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1169
    :cond_1
    invoke-virtual {v11, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1171
    :goto_0
    invoke-virtual {v11, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1172
    iget v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mForDates:I

    add-int/2addr v3, v9

    iput v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mForDates:I

    .line 1183
    const-string v3, "Dropdown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v13, "Label"

    const-string v12, "Number"

    const-string v9, "Decimal"

    const-string v10, "Datepicker_MMDD"

    move-object/from16 p14, v8

    const-string v8, "Yearpicker"

    move-object/from16 v16, v11

    const-string v11, "Numeric Field"

    move-object/from16 p3, v13

    const-string v13, "Datepicker"

    move-object/from16 v17, v12

    const-string v12, "Email"

    move-object/from16 v18, v12

    const-string v12, "textbox"

    if-eqz v3, :cond_2

    .line 1184
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1185
    const-string v3, "operation"

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1186
    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v5, 0x7f100009

    invoke-virtual {v0, v5, v3}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1187
    iget v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mForOperations:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setId(I)V

    .line 1188
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v3, 0x7f080096

    .line 1189
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const v3, 0x7f0800d7

    const/4 v5, 0x0

    .line 1190
    invoke-virtual {v0, v5, v5, v3, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1191
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->operationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1192
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v3, 0x11

    .line 1193
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 1194
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 1196
    new-instance v3, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v0, v6, v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;Landroid/widget/EditText;Lcom/conceptglobal/pmc/model/DynamicFields;Lcom/conceptglobal/pmc/fragments/AddFarmer$1;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object v14, v0

    move-object v6, v5

    move-object v7, v6

    move-object v15, v7

    move-object/from16 v21, v15

    goto/16 :goto_e

    .line 1198
    :cond_2
    const-string v3, "Multiselect Dropdown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1199
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mMultiSelectEditText:Landroid/widget/EditText;

    const/4 v3, 0x1

    .line 1200
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1201
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mMultiSelectEditText:Landroid/widget/EditText;

    iget v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mForOperations:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1202
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mMultiSelectEditText:Landroid/widget/EditText;

    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v5, 0x7f100009

    invoke-virtual {v0, v5, v3}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1203
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mMultiSelectEditText:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1206
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mMultiSelectEditText:Landroid/widget/EditText;

    const v3, 0x7f080096

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1207
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mMultiSelectEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1208
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mMultiSelectEditText:Landroid/widget/EditText;

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 1209
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mMultiSelectEditText:Landroid/widget/EditText;

    const v5, 0x7f0800d7

    invoke-virtual {v0, v3, v3, v5, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1210
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mMultiSelectEditText:Landroid/widget/EditText;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v5, p3

    move-object/from16 v7, v17

    move-object/from16 v3, v18

    goto/16 :goto_9

    .line 1211
    :cond_3
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x2

    if-eqz v3, :cond_a

    .line 1212
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1213
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1214
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1215
    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v5, 0x7f100009

    invoke-virtual {v3, v5, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1216
    iget v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mForDates:I

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setId(I)V

    const/16 v0, 0x11

    .line 1217
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setGravity(I)V

    const v0, 0x7f0800c8

    const/4 v5, 0x0

    .line 1218
    invoke-virtual {v3, v5, v5, v0, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v0, 0x7f080096

    .line 1219
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1220
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->datesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1221
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1222
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 1223
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dialodIdsMap:Ljava/util/HashMap;

    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1224
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dialodIdsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 1225
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dialodIdsMap:Ljava/util/HashMap;

    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1226
    :cond_4
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dialodIdsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_5

    .line 1227
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dialodIdsMap:Ljava/util/HashMap;

    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1228
    :cond_5
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dialodIdsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ne v0, v6, :cond_6

    .line 1229
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dialodIdsMap:Ljava/util/HashMap;

    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1230
    :cond_6
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dialodIdsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_7

    .line 1231
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dialodIdsMap:Ljava/util/HashMap;

    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1232
    :cond_7
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dialodIdsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_8

    .line 1233
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->dialodIdsMap:Ljava/util/HashMap;

    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_1
    const v0, 0x7f100006

    .line 1236
    invoke-virtual {v3, v0, v14}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f100005

    .line 1237
    invoke-virtual {v3, v0, v14}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    if-lez p11, :cond_9

    const v0, 0x7f100006

    .line 1239
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    :cond_9
    if-lez p10, :cond_b

    const v0, 0x7f100005

    .line 1241
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    goto :goto_2

    .line 1243
    :cond_a
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1244
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1245
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1246
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1247
    iget v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mForDates:I

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setId(I)V

    const/16 v0, 0x11

    .line 1248
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setGravity(I)V

    const v0, 0x7f0800c8

    const/4 v5, 0x0

    .line 1249
    invoke-virtual {v3, v5, v5, v0, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v0, 0x7f080096

    .line 1250
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1251
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->yearListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1252
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1253
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 1254
    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v5, 0x7f100009

    invoke-virtual {v3, v5, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    :cond_b
    :goto_2
    move-object v15, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    goto/16 :goto_d

    .line 1258
    :cond_c
    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1259
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1260
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1261
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1262
    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v5, 0x7f100009

    invoke-virtual {v3, v5, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1263
    iget v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mForDates:I

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setId(I)V

    const/16 v0, 0x11

    .line 1264
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setGravity(I)V

    const v0, 0x7f0800c8

    const/4 v5, 0x0

    .line 1265
    invoke-virtual {v3, v5, v5, v0, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v0, 0x7f080096

    .line 1266
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1267
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->datesListenerYearless:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1268
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1269
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setLongClickable(Z)V

    goto :goto_2

    .line 1271
    :cond_d
    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1272
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1273
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1274
    const-string v5, "b"

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1275
    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v7, 0x7f100009

    invoke-virtual {v0, v7, v5}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    const v5, 0x7f080096

    .line 1276
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 1277
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 1278
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 1279
    new-array v5, v3, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v6, 0x6

    invoke-direct {v3, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v3, 0x5

    .line 1280
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object v6, v0

    const/4 v5, 0x0

    goto/16 :goto_b

    .line 1281
    :cond_e
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_11

    .line 1282
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    .line 1283
    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1284
    const-string v14, "b"

    invoke-virtual {v3, v14}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1285
    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x7f100009

    invoke-virtual {v3, v15, v14}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    const v14, 0x7f080096

    .line 1286
    invoke-virtual {v3, v14}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v14, 0x11

    .line 1287
    invoke-virtual {v3, v14}, Landroid/widget/EditText;->setGravity(I)V

    if-lez v5, :cond_f

    .line 1296
    new-array v14, v6, [Landroid/text/InputFilter;

    new-instance v15, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v15, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v15, v14, v5

    invoke-virtual {v3, v14}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_3

    :cond_f
    const/4 v5, 0x0

    .line 1298
    new-array v14, v6, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v15, 0x32

    invoke-direct {v6, v15}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v14, v5

    invoke-virtual {v3, v14}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_3
    const/4 v5, 0x5

    .line 1300
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1302
    const-string v5, "Farmer Name"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1305
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1306
    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1307
    invoke-direct {v1, v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setEditableFalse(Landroid/widget/EditText;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 1309
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_4
    move-object v7, v3

    :goto_5
    const/4 v5, 0x0

    const/4 v6, 0x0

    goto/16 :goto_c

    .line 1314
    :cond_11
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1315
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1316
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1317
    const-string v7, "d"

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1318
    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v14, 0x7f100009

    invoke-virtual {v0, v14, v7}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    const v7, 0x7f080096

    .line 1319
    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v7, 0x11

    .line 1320
    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setGravity(I)V

    const/16 v7, 0x2002

    .line 1321
    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    if-lez v5, :cond_12

    .line 1324
    new-array v7, v3, [Landroid/text/InputFilter;

    new-instance v14, Lcom/conceptglobal/pmc/fragments/AddFarmer$DecimalDigitsInputFilter;

    invoke-direct {v14, v1, v5, v6}, Lcom/conceptglobal/pmc/fragments/AddFarmer$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;II)V

    const/4 v5, 0x0

    aput-object v14, v7, v5

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_6

    :cond_12
    const/4 v5, 0x0

    .line 1327
    new-array v7, v3, [Landroid/text/InputFilter;

    new-instance v3, Lcom/conceptglobal/pmc/fragments/AddFarmer$DecimalDigitsInputFilter;

    const/16 v14, 0x14

    invoke-direct {v3, v1, v14, v6}, Lcom/conceptglobal/pmc/fragments/AddFarmer$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;II)V

    aput-object v3, v7, v5

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_6
    move-object v5, v0

    goto/16 :goto_a

    .line 1331
    :cond_13
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v3, v18

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1332
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 1333
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1334
    const-string v5, "e"

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1335
    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f100009

    invoke-virtual {v0, v6, v5}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    const v5, 0x7f080096

    .line 1336
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 1337
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setGravity(I)V

    const/16 v5, 0x20

    .line 1338
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    move-object/from16 v21, v0

    move-object/from16 v18, v3

    :goto_7
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_e

    :cond_14
    move-object/from16 v3, v18

    .line 1340
    :cond_15
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    move-object/from16 v7, v17

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 1341
    new-instance v14, Landroid/widget/EditText;

    invoke-direct {v14, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x1

    .line 1342
    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1343
    const-string v15, "n"

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1344
    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const v6, 0x7f100009

    invoke-virtual {v14, v6, v15}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    const v6, 0x7f080096

    .line 1345
    invoke-virtual {v14, v6}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v6, 0x11

    .line 1346
    invoke-virtual {v14, v6}, Landroid/widget/EditText;->setGravity(I)V

    const/4 v6, 0x2

    .line 1347
    invoke-virtual {v14, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 1348
    const-string v6, "Mobile"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1349
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mobile:Ljava/lang/String;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    .line 1350
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mobile:Ljava/lang/String;

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1352
    :cond_16
    invoke-direct {v1, v14}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_17
    if-lez v5, :cond_18

    const/4 v6, 0x1

    .line 1357
    new-array v0, v6, [Landroid/text/InputFilter;

    new-instance v15, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v15, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v15, v0, v5

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_8

    :cond_18
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1359
    new-array v0, v6, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v15, 0x1e

    invoke-direct {v6, v15}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v0, v5

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_8
    const/4 v0, 0x5

    .line 1361
    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v18, v3

    move-object/from16 v17, v7

    move-object v7, v14

    goto/16 :goto_5

    :cond_19
    move-object/from16 v7, v17

    .line 1363
    :cond_1a
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 v5, p3

    if-eqz v0, :cond_1b

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1364
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    .line 1365
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1366
    const-string v6, "e"

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1367
    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v14, 0x7f100009

    invoke-virtual {v0, v14, v6}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    const v6, 0x7f080096

    .line 1368
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v6, 0x11

    .line 1369
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setGravity(I)V

    .line 1370
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    .line 1371
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1372
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    move-object/from16 v21, v0

    move-object/from16 v18, v3

    move-object/from16 p3, v5

    move-object/from16 v17, v7

    goto/16 :goto_7

    :cond_1b
    :goto_9
    move-object/from16 v18, v3

    move-object/from16 p3, v5

    move-object/from16 v17, v7

    const/4 v5, 0x0

    :goto_a
    const/4 v6, 0x0

    :goto_b
    const/4 v7, 0x0

    :goto_c
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_d
    const/16 v21, 0x0

    .line 1376
    :goto_e
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1377
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x3f19999a    # 0.6f

    move-object/from16 v19, v5

    const/4 v5, -0x1

    invoke-direct {v0, v5, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1378
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v5, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1379
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v5, v16

    .line 1380
    invoke-virtual {v5, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1381
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1382
    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "DropDown"

    if-eqz v0, :cond_1c

    .line 1383
    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_f
    move-object/from16 p7, v1

    move-object/from16 p1, v3

    move-object/from16 p4, v9

    move-object/from16 p5, v10

    move-object/from16 v10, v17

    move-object/from16 v9, v21

    move-object/from16 v3, p6

    :goto_10
    move-object/from16 v1, p14

    goto/16 :goto_12

    .line 1384
    :cond_1c
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1385
    invoke-virtual {v14, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f

    .line 1386
    :cond_1d
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1387
    invoke-virtual {v15, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f

    .line 1388
    :cond_1e
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1389
    invoke-virtual {v15, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f

    .line 1390
    :cond_1f
    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1391
    invoke-virtual {v15, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f

    .line 1392
    :cond_20
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_21

    .line 1393
    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f

    .line 1394
    :cond_21
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 p1, v3

    if-eqz v0, :cond_22

    move-object/from16 v3, p6

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 p4, v9

    move-object/from16 v9, v19

    if-eqz v0, :cond_23

    .line 1395
    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 p7, v1

    move-object/from16 p5, v10

    move-object/from16 v10, v17

    move-object/from16 v9, v21

    goto :goto_10

    :cond_22
    move-object/from16 p4, v9

    move-object/from16 v9, v19

    move-object/from16 v3, p6

    .line 1396
    :cond_23
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 v19, v9

    if-eqz v0, :cond_24

    move-object/from16 v9, v18

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 v9, v21

    if-eqz v0, :cond_25

    .line 1397
    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 p7, v1

    move-object/from16 p5, v10

    :goto_11
    move-object/from16 v10, v17

    goto :goto_10

    :cond_24
    move-object/from16 v9, v21

    .line 1398
    :cond_25
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 p5, v10

    move-object/from16 v10, p3

    if-eqz v0, :cond_26

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1399
    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 p7, v1

    move-object/from16 p3, v10

    goto :goto_11

    .line 1400
    :cond_26
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 p3, v10

    move-object/from16 v10, v17

    if-eqz v0, :cond_27

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1401
    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_27
    move-object/from16 p7, v1

    goto/16 :goto_10

    .line 1403
    :goto_12
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1404
    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1405
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_13
    move-object/from16 p14, v8

    :goto_14
    move-object/from16 v17, v10

    move-object/from16 v8, p3

    :goto_15
    move-object/from16 v10, p13

    goto/16 :goto_19

    .line 1406
    :cond_28
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1407
    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_13

    .line 1408
    :cond_29
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1409
    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_13

    .line 1410
    :cond_2a
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1411
    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_13

    :cond_2b
    move-object/from16 p14, v8

    move-object/from16 v8, p5

    .line 1412
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1413
    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_16
    move-object/from16 p5, v8

    goto :goto_14

    .line 1414
    :cond_2c
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2d

    .line 1415
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_16

    .line 1416
    :cond_2d
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 p5, v8

    if-eqz v0, :cond_2e

    move-object/from16 v8, p4

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 v8, v19

    if-eqz v0, :cond_2f

    .line 1417
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_14

    :cond_2e
    move-object/from16 v8, v19

    .line 1418
    :cond_2f
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 v19, v8

    move-object/from16 v8, v18

    if-eqz v0, :cond_30

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1419
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_17
    move-object/from16 v18, v8

    goto :goto_14

    .line 1420
    :cond_30
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1421
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_17

    .line 1422
    :cond_31
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 v18, v8

    move-object/from16 v8, p3

    if-eqz v0, :cond_32

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1423
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_18

    .line 1424
    :cond_32
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1425
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_33
    :goto_18
    move-object/from16 v17, v10

    goto/16 :goto_15

    .line 1427
    :goto_19
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v10, 0x1

    .line 1428
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_3a

    .line 1429
    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsReadOnly()I

    move-result v0

    if-ne v0, v10, :cond_34

    .line 1430
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    move-object/from16 v10, p0

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setEditableFalse(Landroid/widget/EditText;)V

    goto :goto_1a

    :cond_34
    move-object/from16 v10, p0

    .line 1431
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isSaarthieFarmer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isSaarthieFarmer:Ljava/lang/String;

    move-object/from16 p3, v8

    const-string v8, "Yes"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsSaarthieFarmerReadonly()I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_37

    .line 1432
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setEditableFalse(Landroid/widget/EditText;)V

    goto :goto_1b

    :cond_35
    :goto_1a
    move-object/from16 p3, v8

    :cond_36
    const/4 v8, 0x1

    .line 1434
    :cond_37
    :goto_1b
    iget-boolean v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isRoleReadonlyFarmer:Z

    if-eqz v0, :cond_38

    .line 1435
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setEditableFalse(Landroid/widget/EditText;)V

    .line 1437
    :cond_38
    :try_start_1
    iget-boolean v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isRoleReadonlyCropHero:Z

    if-eqz v0, :cond_3b

    .line 1438
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v16, v9

    :try_start_2
    const-string v9, "CropHeroAttributeIds"

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->getItemValuewithActiveCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 1439
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3c

    .line 1440
    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    .line 1441
    :goto_1c
    array-length v9, v0

    if-ge v8, v9, :cond_3c

    .line 1442
    aget-object v9, v0, v8

    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v20

    move-object/from16 p8, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v9, 0x1

    .line 1443
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setEditableFalse(Landroid/widget/EditText;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_39
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p8

    goto :goto_1c

    :catch_1
    move-exception v0

    goto :goto_1d

    :catch_2
    move-exception v0

    move-object/from16 v16, v9

    .line 1449
    :goto_1d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e

    :cond_3a
    move-object/from16 v10, p0

    move-object/from16 p3, v8

    :cond_3b
    move-object/from16 v16, v9

    .line 1452
    :cond_3c
    :goto_1e
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mattributesnamesArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1453
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArrIds:Ljava/util/ArrayList;

    move-object/from16 v5, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1454
    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1455
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    .line 1456
    :cond_3d
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1457
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    .line 1458
    :cond_3e
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1459
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    :cond_3f
    move-object/from16 v4, p14

    .line 1460
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1461
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    :cond_40
    move-object/from16 v4, p5

    .line 1462
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1463
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    .line 1464
    :cond_41
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_42

    .line 1465
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    .line 1466
    :cond_42
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    move-object/from16 v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1467
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    move-object/from16 v5, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 1468
    :cond_43
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    move-object/from16 v4, v18

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1469
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    move-object/from16 v5, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_44
    move-object/from16 v5, v16

    .line 1470
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1471
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 1472
    :cond_45
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    move-object/from16 v4, v17

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1473
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 1474
    :cond_46
    const-string v0, "Multiselect Dropdown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1475
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mMultiSelectEditText:Landroid/widget/EditText;

    move-object/from16 v2, p7

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1476
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mMultiSelectEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1477
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mMultiSelectEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1480
    :cond_47
    :goto_1f
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->ruleAttributeIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_48

    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->ruleAttributeIds:Ljava/util/ArrayList;

    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1482
    :try_start_3
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->ruleID:I

    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getVisibilityType(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 1483
    const-string v2, "Visibility"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/16 v0, 0x8

    .line 1484
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_20

    :catch_3
    move-exception v0

    .line 1487
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1491
    :cond_48
    :goto_20
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->ruleAttributeIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_49

    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->ruleAttributeIds:Ljava/util/ArrayList;

    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1493
    :try_start_4
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->ruleID:I

    invoke-virtual/range {p15 .. p15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getVisibilityType(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 1494
    const-string v1, "Visibility"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    move-object/from16 v1, p15

    .line 1495
    invoke-direct {v10, v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->makeParentChildVisibility(Lcom/conceptglobal/pmc/model/DynamicFields;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_21

    :catch_4
    move-exception v0

    .line 1498
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1501
    :cond_49
    :goto_21
    iget v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->layoutId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v10, Lcom/conceptglobal/pmc/fragments/AddFarmer;->layoutId:I

    return-void
.end method

.method public checkFarmerInTerritory(Ljava/lang/String;)V
    .locals 7

    .line 2940
    const-string v0, "No Farmer data found."

    const-string v1, "\n"

    .line 0
    const-string v2, "SELECT Mobile FROM PMCTerritoryFarmerMaster where  Mobile =\'"

    .line 2940
    :try_start_0
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/Encryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2941
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2942
    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 2943
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerID:Ljava/lang/String;

    iget v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->typeOfFarmer:I

    invoke-virtual {v4, v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->isMobileExistsForFarmer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 2944
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;)Z

    .line 2945
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryFarmerQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTerritoryFarmereDetails(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;

    move-result-object v1

    .line 2946
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;->getFarmerID()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2947
    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 2949
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryFarmerQryInFarmerMaster(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTerritoryFarmereDetails(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;

    move-result-object p1

    .line 2950
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;)V

    goto :goto_0

    .line 2952
    :cond_2
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showNoDataAvailableDialog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2955
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2956
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showNoDataAvailableDialog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 0

    .line 751
    invoke-super {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/BaseActivity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 637
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
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 4618
    invoke-super/range {p0 .. p3}, Lcom/conceptglobal/pmc/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v0, v5, :cond_5

    const/4 v6, 0x2

    if-eq v0, v6, :cond_1

    const/16 v3, 0x65

    if-eq v0, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    if-ne v2, v4, :cond_8

    .line 4623
    :try_start_0
    const-string v0, "Navigation"

    const-string v2, "Image Capture End"

    const-string v3, "AddFarmer"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4624
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->imagelist:Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4625
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setAdapter()V

    goto/16 :goto_3

    :cond_1
    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    .line 4644
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "isfrom"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 4645
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4646
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4647
    const-string v0, "FarmerId"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4648
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v13, 0x0

    if-eqz v4, :cond_2

    .line 4651
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4652
    aget-object v11, v4, v13

    .line 4653
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/conceptglobal/pmc/common/Queries;->getListOfAttributesUpdate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4654
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 4655
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 4657
    :try_start_2
    iget v9, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->segmentID:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v10, 0x0

    const/4 v0, 0x1

    move-object v6, v3

    move-object v7, v11

    move-object/from16 v17, v11

    move-wide v11, v14

    move v13, v0

    :try_start_3
    invoke-static/range {v6 .. v13}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertCustomerAttributeDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v17, v11

    .line 4659
    :goto_1
    :try_start_4
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tag:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    move-object/from16 v11, v17

    const/4 v13, 0x0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 4664
    :try_start_5
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tag:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    const/high16 v0, 0x20000

    .line 4667
    const-string v6, "ASSIGNMENTID"

    const-string v7, "TRANSID"

    const-string v8, "SEGMENTID"

    const-string v9, "ACTIVITYNAME"

    const-string v10, "ACTIVITYID"

    const/high16 v11, 0x4000000

    if-ne v2, v5, :cond_3

    .line 4668
    :try_start_6
    new-instance v2, Landroid/content/Intent;

    const-class v12, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-direct {v2, v1, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4669
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v12, 0x0

    .line 4670
    aget-object v3, v4, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4671
    aget-object v3, v4, v5

    invoke-virtual {v2, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4672
    iget v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->segmentID:I

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4674
    invoke-virtual {v2, v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4675
    invoke-virtual {v2, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4676
    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4677
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->startActivity(Landroid/content/Intent;)V

    .line 4678
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->finish()V

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    .line 4680
    new-instance v2, Landroid/content/Intent;

    const-class v13, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-direct {v2, v1, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4681
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4682
    aget-object v3, v4, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4683
    aget-object v3, v4, v5

    invoke-virtual {v2, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4684
    iget v3, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->segmentID:I

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4685
    const-string v3, "ISSELFASSIGN"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4686
    invoke-virtual {v2, v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4687
    invoke-virtual {v2, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4688
    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4689
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->startActivity(Landroid/content/Intent;)V

    .line 4690
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->finish()V

    goto :goto_3

    .line 4704
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->finish()V

    goto :goto_3

    :cond_5
    if-eq v2, v4, :cond_7

    if-eqz v2, :cond_6

    goto :goto_3

    .line 4636
    :cond_6
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string v2, "GPSNotTurnedOn"

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_3

    .line 4632
    :cond_7
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLatitude:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLongitude:Landroid/widget/TextView;

    invoke-direct {v1, v0, v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->fetchLocation(Landroid/widget/TextView;Landroid/widget/TextView;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 4715
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 2731
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900a0

    if-eq p1, v0, :cond_5

    const v0, 0x7f0900af

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const v0, 0x7f090242

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2815
    :cond_0
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isRoleReadonlyFarmer:Z

    if-eqz p1, :cond_1

    .line 2816
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showAccessDeniedDialog()V

    goto :goto_0

    .line 2819
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x4

    if-gt p1, v0, :cond_2

    const-wide/16 v0, 0x0

    .line 2820
    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->captureImage(J)V

    goto :goto_0

    .line 2822
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getApplication()Landroid/app/Application;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_maxImagesToast()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2789
    :cond_3
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isRoleReadonlyFarmer:Z

    if-eqz p1, :cond_4

    .line 2790
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showAccessDeniedDialog()V

    goto :goto_0

    .line 2793
    :cond_4
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->status:I

    .line 2795
    new-instance p1, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;Lcom/conceptglobal/pmc/fragments/AddFarmer$1;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 2733
    :cond_5
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isRoleReadonlyFarmer:Z

    if-eqz p1, :cond_6

    return-void

    .line 2743
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLatitude:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLongitude:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->fetchLocation(Landroid/widget/TextView;Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method

.method public onClose()V
    .locals 4

    .line 4584
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateFarmerOTPVerificationQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 4585
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateFarmerServerStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4587
    const-string v1, "AddFarmer"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4589
    :goto_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->navigateToDraftList()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 323
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c004e

    .line 327
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setContentView(I)V

    .line 328
    iput-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    .line 329
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 330
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 331
    new-instance p1, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 332
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 333
    const-string v0, "farmerType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    .line 334
    const-string v0, "isFraom"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isFraom:Ljava/lang/String;

    .line 336
    const-string v0, "farmerUpdate"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerUpdate:Ljava/lang/String;

    .line 340
    :cond_0
    const-string v0, "FromSelfAssignment"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isFromSelfAssignment:Z

    .line 343
    :cond_1
    const-string v0, "isFromTestimonal"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 344
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isFromTestimonal:Z

    .line 346
    :cond_2
    const-string v0, "isFromFeedBack"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 347
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isFromFeedBack:Z

    .line 349
    :cond_3
    const-string v0, "isFromSurvey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 350
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isFromSurvey:Z

    .line 352
    :cond_4
    sget-object p1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    const-string v0, "Farmer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "FarmerMaster"

    const/4 v1, 0x2

    const-string v2, "("

    const-string v3, ")"

    if-nez p1, :cond_d

    sget-object p1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    const-string v4, "UnVerifiedFarmer"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_2

    .line 368
    :cond_5
    sget-object p1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    const-string v4, "Planter"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 369
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    const-string v4, "Add Planter("

    if-eq p1, v1, :cond_7

    .line 370
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addPlanterHomeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    .line 371
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_0

    .line 373
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addPlanterHomeText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 375
    :cond_7
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addPlanterHomeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    .line 376
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 378
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addPlanterHomeText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 381
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "PlanterGeoDetails"

    invoke-virtual {v1, v0, v2}, Lcom/conceptglobal/pmc/common/Queries;->getGeoDetailsCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getGeoDetailsConditions(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsConditions:[[Ljava/lang/String;

    const/16 p1, 0x8

    .line 382
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->typeOfFarmer:I

    goto/16 :goto_4

    .line 383
    :cond_9
    sget-object p1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerType:Ljava/lang/String;

    const-string v4, "Village"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 384
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    const-string v4, "Add Village("

    if-eq p1, v1, :cond_b

    .line 385
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addPlanterHomeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    .line 386
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_1

    .line 388
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addVillageText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_1

    .line 390
    :cond_b
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addPlanterHomeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    .line 391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_1

    .line 393
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addVillageText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 396
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "VillageGeoDetails"

    invoke-virtual {v1, v0, v2}, Lcom/conceptglobal/pmc/common/Queries;->getGeoDetailsCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getGeoDetailsConditions(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsConditions:[[Ljava/lang/String;

    const/4 p1, 0x4

    .line 397
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->typeOfFarmer:I

    goto/16 :goto_4

    .line 353
    :cond_d
    :goto_2
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    const-string v4, "Add Farmer("

    if-eq p1, v1, :cond_f

    .line 354
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addFarmerDetailsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e

    .line 355
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_3

    .line 357
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addFarmerDetailsText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_3

    .line 359
    :cond_f
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addFarmerDetailsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_10

    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_3

    .line 362
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addFarmerDetailsText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    :goto_3
    const/4 p1, 0x1

    .line 365
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->typeOfFarmer:I

    .line 366
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "FarmerGeoDetails"

    invoke-virtual {v1, v0, v2}, Lcom/conceptglobal/pmc/common/Queries;->getGeoDetailsCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getGeoDetailsConditions(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsConditions:[[Ljava/lang/String;

    const/16 p1, 0x2711

    .line 367
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->ruleID:I

    .line 400
    :cond_11
    :goto_4
    const-string p1, "AddFarmer"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Navigation"

    const-string v2, "onCreate()"

    invoke-static {v1, v2, p1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->initialization()V

    .line 402
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setBottomViewPadding()V

    .line 403
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->settingTabs()V

    .line 404
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->gettingData()V

    .line 405
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->enableGeoDetailsLayout()V

    .line 406
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->gettingPdaid()V

    .line 407
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->generateResPondentNumber()Ljava/lang/String;

    .line 408
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->createOperationAttributes()V

    .line 409
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->bindOperations()V

    .line 410
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getRulesConfigs()V

    .line 411
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setDataForForm()V

    .line 416
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tabHost:Landroid/widget/TabHost;

    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddFarmer$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$1;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 440
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->gridView:Landroid/widget/GridView;

    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddFarmer$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$2;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f0901de

    .line 446
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    .line 447
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddFarmer$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$3;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->message:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "send"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 463
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->validateMobileNumber()V

    .line 466
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/Queries;->getStatusQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->statusFieldVal:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 468
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 2499
    :cond_0
    new-instance p1, Lcom/conceptglobal/pmc/fragments/AddFarmer$19;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mDateSetListener_Yearless:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mYear:I

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mMonth:I

    iget v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mDay:I

    move-object v0, p1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/conceptglobal/pmc/fragments/AddFarmer$19;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 2505
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectDayMonthDPTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2508
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "android"

    const-string v3, "year"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2510
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 2512
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-object p1

    .line 2472
    :cond_2
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mYear:I

    iget v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mMonth:I

    iget v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mDay:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 2474
    :try_start_0
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMinDate()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->defaultMinDate:J

    .line 2475
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMaxDate()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->defaultMaxDate:J

    .line 2476
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 2477
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mEntryArr:Ljava/util/ArrayList;

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->datePos:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v4, -0x1

    if-eqz v3, :cond_3

    const v5, 0x7f100006

    .line 2479
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2480
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 2481
    invoke-virtual {v6, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2482
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    neg-int v5, v5

    add-int/2addr v5, v1

    invoke-virtual {v6, v0, v5}, Ljava/util/Calendar;->add(II)V

    .line 2483
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 2484
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/widget/DatePicker;->setMinDate(J)V

    :cond_3
    if-eqz v3, :cond_4

    const v0, 0x7f100005

    .line 2487
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2488
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 2489
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2491
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v4, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 2492
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2493
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

    .line 2719
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09024c

    .line 2720
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2722
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2724
    :cond_0
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    .line 244
    invoke-super {p0, p1, p2}, Lcom/conceptglobal/pmc/BaseActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 4

    .line 4775
    const-string v0, "AddFarmer"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "onDestroy"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4776
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->message:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4777
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    .line 312
    invoke-super {p0, p1, p2}, Lcom/conceptglobal/pmc/BaseActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 2661
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_2

    const v1, 0x7f09024c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2671
    :cond_0
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isRoleReadonlyFarmer:Z

    if-eqz v0, :cond_1

    .line 2672
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showAccessDeniedDialog()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2675
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->status:I

    .line 2676
    new-instance v1, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;

    invoke-direct {v1, p0, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;Landroid/content/Context;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2679
    :goto_0
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 2663
    :cond_2
    iget p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isFromTransaction:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isRoleReadonlyFarmer:Z

    if-nez p1, :cond_3

    .line 2664
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showGoBackDialog()V

    goto :goto_1

    .line 2666
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->finish()V

    :goto_1
    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .line 484
    invoke-super {p0, p1, p2}, Lcom/conceptglobal/pmc/BaseActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onProvideAssistData(Landroid/os/Bundle;)V
    .locals 0

    .line 880
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onProvideAssistData(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 4596
    const-string p2, "onRequestPermissionResult"

    const-string v0, "AddFarmer"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 4598
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 4601
    const-string p1, "User interaction was cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4602
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 4604
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLatitude:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvLongitude:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->fetchLocation(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0

    .line 4607
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResendOTP()V
    .locals 3

    .line 4561
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mOTP:Ljava/lang/String;

    .line 4562
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4563
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    const-string v1, "OTP has been sent to your mobile number."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4564
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->callOTPAsync()V

    goto :goto_0

    .line 4566
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showOTPVerifyDialog()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 4766
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    .line 4767
    const-string v0, "AddFarmer"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "onResume()"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4768
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setAdapter()V

    .line 4769
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4770
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_0
    return-void
.end method

.method public onSubmitOTP(Ljava/lang/String;)V
    .locals 4

    .line 4542
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mOTP:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 4544
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateFarmerOTPVerificationQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 4545
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateFarmerServerStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 4546
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateFarmerStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4548
    const-string v1, "AddFarmer"

    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4550
    :goto_0
    const-string p1, "Verification is done successfully."

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 4551
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 4552
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->navigateToDraftList()V

    goto :goto_1

    .line 4554
    :cond_0
    const-string p1, "Invalid OTP. Please try again!"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 4555
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    .line 918
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 919
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->mListPopupOne:Lcom/conceptglobal/pmc/common/ListPopupOne;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->isShowing()Z

    move-result v0

    if-nez v0, :cond_c

    .line 922
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_c

    .line 923
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const v0, 0x7f1101b9

    const/4 v2, 0x3

    const-string v3, " "

    const/4 v4, 0x1

    if-eqz p2, :cond_a

    if-eq p2, v4, :cond_8

    const/4 v5, 0x2

    if-eq p2, v5, :cond_6

    if-eq p2, v2, :cond_4

    const p1, 0x7f090090

    if-eq p2, p1, :cond_2

    goto/16 :goto_4

    .line 997
    :cond_2
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isRoleReadonlyFarmer:Z

    if-eqz p1, :cond_3

    goto/16 :goto_4

    .line 1000
    :cond_3
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, p2, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V

    goto/16 :goto_4

    .line 978
    :cond_4
    const-string p2, "VillageMaster"

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tableName:Ljava/lang/String;

    .line 979
    const-string p2, "MandalID"

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->columnName:Ljava/lang/String;

    .line 982
    :try_start_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tableName:Ljava/lang/String;

    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->columnName:Ljava/lang/String;

    iget-object v9, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->gettingCountofMasters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 984
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tag:Ljava/lang/String;

    invoke-static {v6, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_0
    if-lez p2, :cond_5

    .line 987
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tvmandalid:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/conceptglobal/pmc/common/Queries;->gettinVillages(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 988
    new-instance p2, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_villageText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->gettinVillages(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/TextView;

    move-object v6, p2

    move-object v10, p1

    invoke-direct/range {v6 .. v11}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 989
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 990
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 991
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_4

    .line 993
    :cond_5
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_thereIsNoText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_villageText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 959
    :cond_6
    const-string p2, "MandalMaster"

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tableName:Ljava/lang/String;

    .line 960
    const-string p2, "Districtid"

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->columnName:Ljava/lang/String;

    .line 963
    :try_start_1
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tableName:Ljava/lang/String;

    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->columnName:Ljava/lang/String;

    iget-object v9, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->gettingCountofMasters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 965
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tag:Ljava/lang/String;

    invoke-static {v6, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_1
    if-lez p2, :cond_7

    .line 968
    new-instance p2, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_talukaFilterText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->gettingMandals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/TextView;

    move-object v6, p2

    move-object v10, p1

    invoke-direct/range {v6 .. v11}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 969
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 970
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 971
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_4

    .line 973
    :cond_7
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_thereIsNoText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_mandalsText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 941
    :cond_8
    const-string p2, "DistrictMaster"

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tableName:Ljava/lang/String;

    .line 942
    const-string p2, "StateId "

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->columnName:Ljava/lang/String;

    .line 944
    :try_start_2
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tableName:Ljava/lang/String;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->columnName:Ljava/lang/String;

    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->gettingCountofMasters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    .line 946
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tag:Ljava/lang/String;

    invoke-static {v5, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_2
    if-lez p2, :cond_9

    .line 949
    new-instance p2, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_districtText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/common/Queries;->gettingDistricts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/TextView;

    move-object v5, p2

    move-object v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 950
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 951
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 952
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_4

    .line 954
    :cond_9
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_thereIsNoText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_districtText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 926
    :cond_a
    :try_start_3
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/Queries;->gettingStateCount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->masterTablecount:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 928
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->tag:Ljava/lang/String;

    invoke-static {v5, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 930
    :goto_3
    iget p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->masterTablecount:I

    if-lez p2, :cond_b

    .line 931
    new-instance p2, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_stateText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->gettingStates()Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/TextView;

    move-object v5, p2

    move-object v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 932
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 933
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 934
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_4

    .line 936
    :cond_b
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_thereIsNoText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_stateText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_c
    :goto_4
    return v1
.end method

.method public onVerifyLater()V
    .locals 4

    .line 4573
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateFarmerOTPVerificationQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 4574
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateFarmerServerStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4576
    const-string v1, "AddFarmer"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4578
    :goto_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->navigateToDraftList()V

    return-void
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 632
    invoke-super {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/BaseActivity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    return-object p1
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0

    .line 317
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method
