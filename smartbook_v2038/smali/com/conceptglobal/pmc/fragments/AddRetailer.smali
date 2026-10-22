.class public Lcom/conceptglobal/pmc/fragments/AddRetailer;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "AddRetailer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/conceptglobal/pmc/interfaces/OnCropItemClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/OnVerifyOTPListener;
.implements Lcom/conceptglobal/pmc/interfaces/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fragments/AddRetailer$DecimalDigitsInputFilter;,
        Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;,
        Lcom/conceptglobal/pmc/fragments/AddRetailer$OTPAsync;,
        Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;
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

.field private static final INITIALCOMPANYID:I = -0x1

.field private static final INITIALCROPID:I = -0x1

.field private static final MY_CAMERA_REQUEST_CODE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AddRetailer"

.field private static dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

.field public static deletedCompanyIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static deletedCropIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static deletedPlotIds:Ljava/util/List;
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

.field public static mandalIds:Ljava/util/List;

.field public static villageIds:Ljava/util/List;


# instance fields
.field private GPSTImeStamp:Ljava/lang/String;

.field _clickId:I

.field private aadharRawData:Ljava/lang/String;

.field private adapterCompany:Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;

.field private adapterCrop:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;

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

.field private attributesArryForOthers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/DynamicFields;",
            ">;"
        }
    .end annotation
.end field

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

.field private btnRetailerSearch:Landroid/widget/Button;

.field private btnSave:Landroid/widget/Button;

.field private btnSaveLand:Landroid/widget/Button;

.field private btnScanAdhar:Landroid/widget/Button;

.field private btn_Draft:Landroid/view/MenuItem;

.field private columnName:Ljava/lang/String;

.field private companyOrCropTab:Ljava/lang/String;

.field private contactID:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private datePos:I

.field datesListener:Landroid/view/View$OnClickListener;

.field datesListenerYearless:Landroid/view/View$OnClickListener;

.field private dealerMaster:Lcom/conceptglobal/pmc/model/DealerMaster;

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

.field private dialog:Landroid/app/AlertDialog;

.field private dialogMsgTxtview:Landroid/widget/TextView;

.field private final districtChanged:Landroid/text/TextWatcher;

.field private draftStaticData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DealerMaster;",
            ">;"
        }
    .end annotation
.end field

.field dynamicColumnnames:Ljava/lang/StringBuilder;

.field private edtDistrict:Landroid/widget/EditText;

.field private edtMandal:Landroid/widget/EditText;

.field private edtState:Landroid/widget/EditText;

.field private edtVillage:Landroid/widget/EditText;

.field private etCompanyHybridSale1:Landroid/widget/EditText;

.field private etCompanyHybridSale1Value:Landroid/widget/EditText;

.field private etCompanyHybridSale2:Landroid/widget/EditText;

.field private etCompanyHybridSale2Value:Landroid/widget/EditText;

.field private etCompanyName:Landroid/widget/EditText;

.field private etCompanySale1:Landroid/widget/EditText;

.field private etCompanySale1Value:Landroid/widget/EditText;

.field private etCompanySales:Landroid/widget/EditText;

.field private etCompetitonCompany1:Landroid/widget/EditText;

.field private etCompetitonCompany2:Landroid/widget/EditText;

.field private etCompetitonHybridSale1:Landroid/widget/EditText;

.field private etCompetitonHybridSale1Value:Landroid/widget/EditText;

.field private etCompetitonHybridSale2:Landroid/widget/EditText;

.field private etCompetitonHybridSale2Value:Landroid/widget/EditText;

.field private etCropDos:Landroid/widget/EditText;

.field private etCropName:Landroid/widget/EditText;

.field private etCropSales:Landroid/widget/EditText;

.field private etOnOrOFfField:Landroid/widget/EditText;

.field private etPlotAcreages:Landroid/widget/EditText;

.field private etPlotAddress:Landroid/widget/EditText;

.field private etPlotName:Landroid/widget/EditText;

.field private etRemarks:Landroid/widget/EditText;

.field private ethybrid:Landroid/widget/EditText;

.field private farmerID:Ljava/lang/String;

.field private farmerUpdate:Ljava/lang/String;

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

.field private gstNumber:Ljava/lang/String;

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

.field private imgretailermain:Landroid/widget/ImageView;

.field public isFromFeedBack:Z

.field public isFromSelfAssignment:Z

.field private isFromSelfassgin:I

.field public isFromSurvey:Z

.field public isFromTestimonal:Z

.field private isFromTransaction:I

.field private isImageDeleted:Z

.field public isLocationUpdate:Z

.field isNotRequiredFAB:J

.field private isRetalerAFarmer:J

.field final isextrasales:I

.field private ivGetLandLatLog:Landroid/widget/ImageView;

.field private layoutId:I

.field private listDealerCompanies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DealerCompanyMapping;",
            ">;"
        }
    .end annotation
.end field

.field private listDealerCrops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DealerCropMapping;",
            ">;"
        }
    .end annotation
.end field

.field private listFarmerPlots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DealerLandDetails;",
            ">;"
        }
    .end annotation
.end field

.field private locationUpdateStatus:I

.field private lvCompanies:Landroid/widget/ListView;

.field private lvCrops:Landroid/widget/ListView;

.field private mAddDynamicLinear:Landroid/widget/LinearLayout;

.field private mAddDynamicLinearForOthers:Landroid/widget/LinearLayout;

.field private mAddGeoDetailsInOthers:Landroid/widget/LinearLayout;

.field private mAddGeoDetailsInPersonal:Landroid/widget/LinearLayout;

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

.field private mEntrySpinnerArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mFiledStr:Ljava/lang/String;

.field private mForDates:I

.field private mForOperations:I

.field private mIsMobileNumberChanged:Z

.field private mListPopupOne:Lcom/conceptglobal/pmc/common/ListPopupOne;

.field mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

.field private mMonth:I

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

.field private modifiedListOfFarmerPlots:Ljava/util/List;
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

.field pdaId:I

.field private plotLatlongs:Ljava/lang/String;

.field private plotsAdapter:Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;

.field private retailerCount:I

.field private retailerMobileNumberColumnID:J

.field private retailerMultiAttributeDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;",
            ">;"
        }
    .end annotation
.end field

.field private rvPlots:Landroidx/recyclerview/widget/RecyclerView;

.field private segmentID:I

.field private final stateChanged:Landroid/text/TextWatcher;

.field private status:I

.field private statusFieldVal:I

.field private tab1:Landroid/widget/LinearLayout;

.field private tab2:Landroid/widget/LinearLayout;

.field private tab3:Landroid/widget/RelativeLayout;

.field private tabHost:Landroid/widget/TabHost;

.field private tableName:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private tilCompanyHybridSale1:Lcom/google/android/material/textfield/TextInputLayout;

.field private tilCompanyHybridSale1Value:Lcom/google/android/material/textfield/TextInputLayout;

.field private tilCompanyHybridSale2:Lcom/google/android/material/textfield/TextInputLayout;

.field private tilCompanyHybridSale2Value:Lcom/google/android/material/textfield/TextInputLayout;

.field private tilCompanyName:Lcom/google/android/material/textfield/TextInputLayout;

.field private tilCompanySale1Value:Lcom/google/android/material/textfield/TextInputLayout;

.field private tilCompetitonCompany1:Lcom/google/android/material/textfield/TextInputLayout;

.field private tilCompetitonCompany2:Lcom/google/android/material/textfield/TextInputLayout;

.field private tilCompetitonHybridSale1:Lcom/google/android/material/textfield/TextInputLayout;

.field private tilCompetitonHybridSale1Value:Lcom/google/android/material/textfield/TextInputLayout;

.field private tilCompetitonHybridSale2:Lcom/google/android/material/textfield/TextInputLayout;

.field private tilCompetitonHybridSale2Value:Lcom/google/android/material/textfield/TextInputLayout;

.field private tilCropSales:Lcom/google/android/material/textfield/TextInputLayout;

.field private tvAddCompany:Landroid/widget/TextView;

.field private tvAddland:Landroid/widget/TextView;

.field private tvAllSalesvalues:Landroid/widget/TextView;

.field private tvCompanyHybridSale1:Landroid/widget/TextView;

.field private tvCompanyHybridSale2:Landroid/widget/TextView;

.field private tvCompanySale1:Landroid/widget/TextView;

.field private tvCompanyid:Landroid/widget/TextView;

.field private tvCompetitonCompany1:Landroid/widget/TextView;

.field private tvCompetitonCompany2:Landroid/widget/TextView;

.field private tvCompetitonHybridSale1:Landroid/widget/TextView;

.field private tvCompetitonHybridSale2:Landroid/widget/TextView;

.field private tvCropId:Landroid/widget/TextView;

.field private tvLatitude:Landroid/widget/TextView;

.field private tvLongitude:Landroid/widget/TextView;

.field private tvOnOrOffFieldID:Landroid/widget/TextView;

.field private tvPlotLatitude:Landroid/widget/TextView;

.field private tvPlotLongitude:Landroid/widget/TextView;

.field private tvdistrictid:Landroid/widget/TextView;

.field private tvmandalid:Landroid/widget/TextView;

.field private tvstateid:Landroid/widget/TextView;

.field private tvvillageid:Landroid/widget/TextView;

.field private typeOfCustomer:I

.field private updateDOS:Ljava/lang/String;

.field private validationFailedMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 183
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mandalIds:Ljava/util/List;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->villageIds:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 170
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 172
    const-string v0, "AddRetailer"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->hAttributes:Ljava/util/HashMap;

    .line 211
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    .line 212
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArryForOthers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 224
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->datePos:I

    const-wide/16 v2, -0x1

    .line 231
    iput-wide v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->defaultMinDate:J

    .line 232
    iput-wide v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->defaultMaxDate:J

    .line 233
    const-string v2, ""

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mFiledStr:Ljava/lang/String;

    const/4 v3, -0x1

    .line 234
    iput v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mForOperations:I

    iput v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mForDates:I

    .line 236
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->layoutId:I

    .line 237
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dialodIdsMap:Ljava/util/HashMap;

    .line 239
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->_clickId:I

    .line 240
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->brandsList:Ljava/util/List;

    .line 242
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    .line 260
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mIsMobileNumberChanged:Z

    .line 263
    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->plotLatlongs:Ljava/lang/String;

    .line 266
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_stateText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    filled-new-array {v0, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attribName:[Ljava/lang/String;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    .line 301
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isFromSelfassgin:I

    .line 317
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    const-string v1, "isExtraSalesinDCM"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLondMandatory(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isextrasales:I

    const-wide/16 v0, 0x0

    .line 318
    iput-wide v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isNotRequiredFAB:J

    .line 320
    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->aadharRawData:Ljava/lang/String;

    .line 321
    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->GPSTImeStamp:Ljava/lang/String;

    .line 322
    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->validationFailedMsg:Ljava/lang/String;

    .line 334
    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerUpdate:Ljava/lang/String;

    .line 591
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddRetailer$4;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$4;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->stateChanged:Landroid/text/TextWatcher;

    .line 614
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddRetailer$5;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$5;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->districtChanged:Landroid/text/TextWatcher;

    .line 634
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddRetailer$6;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$6;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mandalChanged:Landroid/text/TextWatcher;

    .line 1397
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddRetailer$7;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$7;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    .line 1573
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddRetailer$8;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$8;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->operationListener:Landroid/view/View$OnClickListener;

    .line 2867
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddRetailer$15;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$15;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->datesListener:Landroid/view/View$OnClickListener;

    .line 2880
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddRetailer$16;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$16;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->datesListenerYearless:Landroid/view/View$OnClickListener;

    .line 2995
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddRetailer$18;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$18;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 3016
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddRetailer$19;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$19;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mDateSetListener_Yearless:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 5438
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddRetailer$26;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$26;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->message:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/content/Context;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/TabHost;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/TextView;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvvillageid:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/EditText;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->edtVillage:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/util/ArrayList;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/util/ArrayList;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArrIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/TextView;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvOnOrOffFieldID:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/TextView;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvPlotLatitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/TextView;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvPlotLongitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fragments/AddRetailer;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->fetchLocation(Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/EditText;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etPlotName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setPlotsAdapter()V

    return-void
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/util/List;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->listFarmerPlots:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fragments/AddRetailer;Ljava/lang/String;Ljava/util/List;I)Z
    .locals 0

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->checkUniquPlotName(Ljava/lang/String;Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->plotLatlongs:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/conceptglobal/pmc/fragments/AddRetailer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->plotLatlongs:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/util/List;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->modifiedListOfFarmerPlots:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/TextView;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvCropId:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/EditText;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etCropSales:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/EditText;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etCropDos:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/EditText;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etCropName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/util/List;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->listDealerCrops:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/util/List;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->images:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setListviewForSales()V

    return-void
.end method

.method static synthetic access$3102(Lcom/conceptglobal/pmc/fragments/AddRetailer;I)I
    .locals 0

    .line 170
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->datePos:I

    return p1
.end method

.method static synthetic access$3200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/util/HashMap;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dialodIdsMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3302(Lcom/conceptglobal/pmc/fragments/AddRetailer;I)I
    .locals 0

    .line 170
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mYear:I

    return p1
.end method

.method static synthetic access$3402(Lcom/conceptglobal/pmc/fragments/AddRetailer;I)I
    .locals 0

    .line 170
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mMonth:I

    return p1
.end method

.method static synthetic access$3502(Lcom/conceptglobal/pmc/fragments/AddRetailer;I)I
    .locals 0

    .line 170
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mDay:I

    return p1
.end method

.method static synthetic access$3600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->updateDisplay()V

    return-void
.end method

.method static synthetic access$3700(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->updateDisplay_yearless()V

    return-void
.end method

.method static synthetic access$3800(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dataInsertion()V

    return-void
.end method

.method static synthetic access$3900(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dataInsertMultiAttributeValues()V

    return-void
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fragments/AddRetailer;J)V
    .locals 0

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->captureImage(J)V

    return-void
.end method

.method static synthetic access$4000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)I
    .locals 0

    .line 170
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isFromTransaction:I

    return p0
.end method

.method static synthetic access$4100()Ljava/lang/String;
    .locals 1

    .line 170
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Z
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->validateRetailerWithOTP()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mNewMobile:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mOldMobile:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)I
    .locals 0

    .line 170
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->status:I

    return p0
.end method

.method static synthetic access$4600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->startService()V

    return-void
.end method

.method static synthetic access$4700(Lcom/conceptglobal/pmc/fragments/AddRetailer;)I
    .locals 0

    .line 170
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->segmentID:I

    return p0
.end method

.method static synthetic access$4800(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerUpdate:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->callOTPAsync()V

    return-void
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/conceptglobal/pmc/fragments/AddRetailer;Lcom/conceptglobal/pmc/model/DealerMaster;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->showOTPDialog(Lcom/conceptglobal/pmc/model/DealerMaster;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->navigateToDraftList()V

    return-void
.end method

.method static synthetic access$5200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)I
    .locals 0

    .line 170
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->statusFieldVal:I

    return p0
.end method

.method static synthetic access$5300(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->showOTPVerifyDialog()V

    return-void
.end method

.method static synthetic access$5500(Lcom/conceptglobal/pmc/fragments/AddRetailer;Ljava/lang/String;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->createProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/app/AlertDialog;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Z
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->validation()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5800(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/TextView;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dialogMsgTxtview:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/util/ArrayList;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->imagelist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/TextView;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvdistrictid:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$6002(Lcom/conceptglobal/pmc/fragments/AddRetailer;Z)Z
    .locals 0

    .line 170
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isImageDeleted:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/conceptglobal/pmc/fragments/AddRetailer;Ljava/lang/String;)Z
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isValidMobileNumber(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6200(Lcom/conceptglobal/pmc/fragments/AddRetailer;Landroid/location/Location;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->bindAddress(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$6302(Lcom/conceptglobal/pmc/fragments/AddRetailer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->GPSTImeStamp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6400(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/TextView;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvLatitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Lcom/conceptglobal/pmc/model/DealerMaster;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dealerMaster:Lcom/conceptglobal/pmc/model/DealerMaster;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getOTPDetails()V

    return-void
.end method

.method static synthetic access$6700(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getLocation()V

    return-void
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/EditText;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->edtDistrict:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/TextView;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvmandalid:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/EditText;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->edtMandal:Landroid/widget/EditText;

    return-object p0
.end method

.method private addDisclaimerView(Landroid/widget/LinearLayout;)V
    .locals 5

    .line 1085
    :try_start_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1086
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 1087
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 1088
    invoke-virtual {v2, v3, v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1089
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1090
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 1091
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1093
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1095
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x13

    .line 1096
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1097
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    const v4, 0x7f11015b

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1098
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1099
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06010f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 1100
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1101
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_RetailerDisclamer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1102
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1104
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1106
    const-string v0, "AddRetailer"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private addTab(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    .line 1621
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 1622
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0c0135

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090459

    .line 1623
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1624
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090230

    .line 1625
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 1626
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1627
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 1628
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10023c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const p2, 0x7f090422

    if-eqz p1, :cond_0

    .line 1629
    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 1630
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10023d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f090423

    .line 1631
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 1632
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f100240

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f090424

    .line 1633
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 1634
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f100243

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f090419

    .line 1635
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 1637
    :cond_3
    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 1639
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method private bindAddress(Landroid/location/Location;)V
    .locals 6

    .line 3333
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getAddressWithLatLong(Landroid/content/Context;DD)Ljava/lang/String;

    move-result-object v0

    .line 3336
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dealerMaster:Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getLongToDate(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setGPSTimeStamp(Ljava/lang/String;)V

    .line 3337
    sget-object p1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    const-string v1, "Retailer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_0

    .line 3338
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    const-string v4, "retailerGoogleAddress"

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_1

    .line 3339
    :cond_0
    sget-object p1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    const-string v3, "Distributor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    const-string v3, "Dealer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v3, v1

    goto :goto_1

    .line 3340
    :cond_2
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    const-string v4, "distributorGoogleAddress"

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v3

    :goto_1
    cmp-long p1, v3, v1

    if-eqz p1, :cond_4

    .line 3342
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 3343
    :goto_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    .line 3344
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    .line 3345
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v1

    int-to-long v1, v1

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    .line 3346
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3354
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception p1

    .line 3352
    const-string v0, "AddRetailer"

    const-string v1, "Impossible to connect to Geocoder"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_3
    return-void
.end method

.method private bindOperations()V
    .locals 11

    .line 704
    const-string v0, "AddRetailer"

    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->bindQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerOrRetailerBindDataDynamic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mentryValues:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 706
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 709
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mentryValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x0

    .line 710
    :goto_1
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 711
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Dropdown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 712
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mentryValues:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 713
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DealerMaster"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 715
    :try_start_1
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "RetailerShopName"

    const-string v9, "ContactId"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mentryValues:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v8, v5, v9, v10}, Lcom/conceptglobal/pmc/common/Queries;->getColumnValueWhereConditionBased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/conceptglobal/pmc/utils/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v4

    .line 717
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 718
    invoke-static {v0, v4}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 720
    :cond_0
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FarmerMaster"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 722
    :try_start_2
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "FarmerName"

    const-string v9, "RespondentNo"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mentryValues:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v8, v5, v9, v10}, Lcom/conceptglobal/pmc/common/Queries;->getColumnValueWhereConditionBased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/conceptglobal/pmc/utils/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v4

    .line 724
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 725
    invoke-static {v0, v4}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 727
    :cond_1
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TerritoryMaster"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 729
    :try_start_3
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "territoryName"

    const-string v9, "territoryId"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mentryValues:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v8, v5, v9, v10}, Lcom/conceptglobal/pmc/common/Queries;->getColumnValueWhereConditionBased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v4

    .line 731
    invoke-static {v0, v4}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 734
    :cond_2
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mentryValues:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 736
    :cond_3
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Multiselect Dropdown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 737
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getDealerMultiSelectDataQry(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getMultiSelectData(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/MultiSelectData;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 739
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/MultiSelectData;->getIds()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 740
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/MultiSelectData;->getNames()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 742
    :cond_4
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 743
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 746
    :cond_5
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mentryValues:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 749
    :cond_6
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    const-string v1, "Retailer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 750
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->validateMobileNumber()V

    .line 754
    :cond_7
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/common/Queries;->gettingRetailerAtaticData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRetailerBindDataStatic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->draftStaticData:Ljava/util/List;

    .line 755
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v4, 0x1

    if-lez v0, :cond_8

    .line 756
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->draftStaticData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DealerMaster;->getStateId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->draftStaticData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DealerMaster;->getStateName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 758
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->draftStaticData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DealerMaster;->getDistrictId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->draftStaticData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DealerMaster;->getDistrictName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 760
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->draftStaticData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DealerMaster;->getMandalId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->draftStaticData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DealerMaster;->getMandalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 762
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->draftStaticData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DealerMaster;->getVillageId()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->draftStaticData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DealerMaster;->getVillageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 764
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvLatitude:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->draftStaticData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DealerMaster;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvLongitude:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->draftStaticData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DealerMaster;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    :cond_8
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->draftStaticData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->draftStaticData:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->getStateId()I

    move-result v0

    if-nez v0, :cond_a

    .line 769
    :cond_9
    :try_start_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingStateCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_a

    .line 771
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingStates()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSampleModel(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/SampleModel;

    move-result-object v0

    .line 772
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/SampleModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/SampleModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 776
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 779
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->draftStaticData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->draftStaticData:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->getDistrictId()I

    move-result v0

    if-nez v0, :cond_c

    .line 781
    :cond_b
    :try_start_5
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v5, "DistrictMaster"

    const-string v6, "StateId"

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->gettingCountofMasters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_c

    .line 783
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/common/Queries;->gettingDistricts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSampleModel(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/SampleModel;

    move-result-object v0

    .line 784
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/SampleModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/SampleModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    :catch_5
    move-exception v0

    .line 788
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 791
    :cond_c
    :goto_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->draftStaticData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->draftStaticData:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->getMandalId()I

    move-result v0

    if-nez v0, :cond_e

    .line 793
    :cond_d
    :try_start_6
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v5, "MandalMaster"

    const-string v6, "Districtid"

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->gettingCountofMasters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_e

    .line 795
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/common/Queries;->gettingMandals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSampleModel(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/SampleModel;

    move-result-object v0

    .line 796
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/SampleModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/SampleModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_5

    :catch_6
    move-exception v0

    .line 800
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 803
    :cond_e
    :goto_5
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    const-string v1, "Distributor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    const-string v1, "Dealer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 804
    :cond_f
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setEditableFalse(Landroid/widget/EditText;)V

    .line 805
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_10
    return-void
.end method

.method private bindPlotAddress(DD)V
    .locals 2

    .line 3296
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getAddressWithLatLong(Landroid/content/Context;DD)Ljava/lang/String;

    move-result-object p1

    .line 3298
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p3

    const-string p4, "farmerGoogleAddress"

    invoke-virtual {p3, p4}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-eqz p4, :cond_0

    .line 3299
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 3300
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etPlotAddress:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3305
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 3303
    const-string p2, "AddRetailer"

    const-string p3, "Impossible to connect to Geocoder"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private callOTPAsync()V
    .locals 3

    .line 4097
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4100
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddRetailer$OTPAsync;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer$OTPAsync;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;Lcom/conceptglobal/pmc/fragments/AddRetailer$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/fragments/AddRetailer$OTPAsync;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private captureImage(J)V
    .locals 7

    .line 3367
    const-string v0, "Retailer"

    const-string v1, "AddRetailer"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Navigation"

    const-string v4, "Image Capture Start"

    invoke-static {v3, v4, v1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3368
    new-instance v1, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    invoke-virtual {v1, p0}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    .line 3369
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->setPictureReportingContext(Landroid/content/Context;)V

    .line 3370
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3371
    const-string v2, "activityId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3372
    const-string v2, "assignmentId"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3374
    :try_start_0
    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "setReferenceType"

    if-eqz v2, :cond_0

    .line 3375
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/conceptglobal/pmc/common/Queries;->getItemValueForImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 3376
    :cond_0
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    const-string v2, "Distributor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    const-string v2, "Dealer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3377
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v5, "Distributors"

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/common/Queries;->getItemValueForImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3380
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3381
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3383
    :cond_2
    :goto_0
    const-string v0, "setReferenceID"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3384
    const-string v0, "attributeId"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3385
    const-string v0, "farmerId"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3386
    const-string v0, "imageId"

    invoke-virtual {v1, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3387
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private checkUniquPlotName(Ljava/lang/String;Ljava/util/List;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DealerLandDetails;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1853
    :goto_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-eq p3, v1, :cond_0

    .line 1854
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DealerLandDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DealerLandDetails;->getLandname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private contactIdIncrement()V
    .locals 5

    .line 840
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->gettingPdaid()V

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dealerMaster:Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->getPDAId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    return-void
.end method

.method private createOperationAttributes()V
    .locals 32

    move-object/from16 v15, p0

    .line 1022
    const-string v0, "Retailer"

    const v1, 0x7f090335

    :try_start_0
    invoke-virtual {v15, v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    const v1, 0x7f09033c

    .line 1023
    invoke-virtual {v15, v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mAddDynamicLinearForOthers:Landroid/widget/LinearLayout;

    .line 1024
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->hAttributes:Ljava/util/HashMap;

    .line 1025
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mattributesnamesArr:Ljava/util/ArrayList;

    .line 1026
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mOprDatesArr:Ljava/util/ArrayList;

    .line 1027
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    .line 1028
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntrySpinnerArr:Ljava/util/ArrayList;

    .line 1029
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArrIds:Ljava/util/ArrayList;

    .line 1031
    sget-object v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v2, "Personal"

    const-string v14, "Dealer"

    const-string v13, "Distributor"

    if-eqz v1, :cond_0

    .line 1032
    :try_start_1
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v2, v14}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    goto :goto_0

    .line 1033
    :cond_0
    sget-object v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1034
    :cond_1
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v2, v13}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    .line 1036
    :cond_2
    :goto_0
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1038
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->hAttributes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1040
    const-string v11, ","

    const/16 v18, 0x0

    if-lez v12, :cond_3

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v12, :cond_3

    .line 1042
    :try_start_2
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsMandatory()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v8

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxLength()I

    move-result v9

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v16

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v17

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v19

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v20

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    move-object/from16 v21, v1

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsTransactionEditable()I

    move-result v22

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Lcom/conceptglobal/pmc/model/DynamicFields;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v1, p0

    move/from16 v24, v10

    move/from16 v10, v16

    move-object/from16 v25, v0

    move-object v0, v11

    move/from16 v11, v17

    move/from16 v26, v12

    move/from16 v12, v19

    move-object/from16 v27, v13

    move/from16 v13, v20

    move-object/from16 v28, v14

    move-object/from16 v14, v21

    move/from16 v15, v22

    move/from16 v16, v24

    move-object/from16 v17, v23

    :try_start_3
    invoke-virtual/range {v1 .. v17}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILandroid/widget/LinearLayout;IILcom/conceptglobal/pmc/model/DynamicFields;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v15, p0

    .line 1043
    :try_start_4
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dynamicColumnnames:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    move/from16 v4, v24

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v4, 0x1

    move-object v11, v0

    move-object/from16 v0, v25

    move/from16 v12, v26

    move-object/from16 v13, v27

    move-object/from16 v14, v28

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v15, p0

    goto/16 :goto_5

    :cond_3
    move-object/from16 v25, v0

    move-object v0, v11

    move/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    .line 1047
    sget-object v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    move-object/from16 v14, v25

    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const-string v2, "Others"

    if-eqz v1, :cond_4

    .line 1048
    :try_start_5
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    move-object/from16 v13, v28

    invoke-virtual {v3, v2, v13}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArryForOthers:Ljava/util/ArrayList;

    move-object/from16 v12, v27

    goto :goto_2

    :cond_4
    move-object/from16 v13, v28

    .line 1049
    sget-object v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    move-object/from16 v12, v27

    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1050
    :cond_5
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v2, v12}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArryForOthers:Ljava/util/ArrayList;

    .line 1053
    :cond_6
    :goto_2
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 1054
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    iget-object v2, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v11, 0x0

    .line 1055
    :goto_3
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_7

    .line 1056
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsMandatory()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v8

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxLength()I

    move-result v9

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v10

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v16

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v17

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v18

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mAddDynamicLinearForOthers:Landroid/widget/LinearLayout;

    move-object/from16 v19, v1

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsTransactionEditable()I

    move-result v20

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/conceptglobal/pmc/model/DynamicFields;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v1, p0

    move/from16 v22, v11

    move/from16 v11, v16

    move-object/from16 v29, v12

    move/from16 v12, v17

    move-object/from16 v30, v13

    move/from16 v13, v18

    move-object/from16 v31, v14

    move-object/from16 v14, v19

    move/from16 v15, v20

    move/from16 v16, v22

    move-object/from16 v17, v21

    :try_start_6
    invoke-virtual/range {v1 .. v17}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILandroid/widget/LinearLayout;IILcom/conceptglobal/pmc/model/DynamicFields;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1057
    :try_start_7
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dynamicColumnnames:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArryForOthers:Ljava/util/ArrayList;

    move/from16 v5, v22

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v5, 0x1

    move-object v15, v1

    move-object/from16 v12, v29

    move-object/from16 v13, v30

    move-object/from16 v14, v31

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_6

    :cond_7
    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    move-object v1, v15

    .line 1059
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mAddDynamicLinearForOthers:Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->addDisclaimerView(Landroid/widget/LinearLayout;)V

    goto :goto_4

    :cond_8
    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    move-object v1, v15

    :goto_4
    if-gtz v26, :cond_9

    .line 1062
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_7

    .line 1064
    :cond_9
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1065
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1067
    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    move-object/from16 v3, v31

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1068
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->bindQueryInAddRetailer(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->bindQuery:Ljava/lang/String;

    goto :goto_7

    .line 1069
    :cond_a
    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    move-object/from16 v3, v29

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    move-object/from16 v3, v30

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1070
    :cond_b
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v2, v0, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->bindQueryInAddRetailer(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->bindQuery:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    :goto_5
    move-object v1, v15

    .line 1074
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_7
    return-void
.end method

.method private createProgressDialog(Ljava/lang/String;)V
    .locals 4

    .line 5294
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5295
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0114

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090305

    .line 5296
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dialogMsgTxtview:Landroid/widget/TextView;

    .line 5297
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5298
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5299
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    .line 5300
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    return-void
.end method

.method private dataInsertMultiAttributeValues()V
    .locals 21

    move-object/from16 v1, p0

    .line 3572
    const-string v0, ""

    const-string v2, ","

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 3573
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->retailerMultiAttributeDetails:Ljava/util/ArrayList;

    .line 3574
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Multiselect Dropdown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3577
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 3578
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3579
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArrIds:Ljava/util/ArrayList;

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

    .line 3580
    array-length v7, v6

    if-lez v7, :cond_0

    .line 3581
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->deleteRetailerMultiAttributeData(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 3582
    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v8, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z

    const/4 v7, 0x0

    .line 3584
    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_0

    .line 3585
    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->retailerMultiAttributeDetails:Ljava/util/ArrayList;

    new-instance v15, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;

    const-string v10, ""

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    .line 3586
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aget-object v13, v6, v7

    aget-object v14, v5, v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dealerMaster:Lcom/conceptglobal/pmc/model/DealerMaster;

    .line 3589
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DealerMaster;->getPDAId()I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    const-string v19, ""

    move-object v9, v15

    move-object/from16 v20, v0

    move-object v0, v15

    move-object v15, v3

    invoke-direct/range {v9 .. v19}, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3585
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v20

    goto :goto_1

    :cond_0
    move-object/from16 v20, v0

    .line 3597
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->retailerMultiAttributeDetails:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 3598
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->retailerMultiAttributeDetails:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertDealerMultiAttributeDetails(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_1
    move-object/from16 v20, v0

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v20

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 3602
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3603
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method private dataInsertion()V
    .locals 9

    .line 3609
    new-instance v6, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-direct {v6}, Lcom/conceptglobal/pmc/model/DealerMaster;-><init>()V

    .line 3610
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->GPSTImeStamp:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->setGPSTimeStamp(Ljava/lang/String;)V

    .line 3611
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DealerMaster;->getPDAId()I

    move-result v0

    if-nez v0, :cond_0

    .line 3612
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->gettingPdaid()V

    .line 3629
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->setContactId(Ljava/lang/String;)V

    .line 3630
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3631
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->setStateId(I)V

    goto :goto_0

    .line 3633
    :cond_1
    invoke-virtual {v6, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setStateId(I)V

    .line 3635
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 3636
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->setDistrictId(I)V

    goto :goto_1

    .line 3638
    :cond_2
    invoke-virtual {v6, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setDistrictId(I)V

    .line 3640
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 3641
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->setMandalId(I)V

    goto :goto_2

    .line 3643
    :cond_3
    invoke-virtual {v6, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setMandalId(I)V

    .line 3645
    :goto_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 3646
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->setVillageId(I)V

    goto :goto_3

    .line 3648
    :cond_4
    invoke-virtual {v6, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setVillageId(I)V

    .line 3650
    :goto_3
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->status:I

    const-string v8, "1"

    if-ne v0, v7, :cond_5

    .line 3651
    invoke-virtual {v6, v8}, Lcom/conceptglobal/pmc/model/DealerMaster;->setColumn3(Ljava/lang/String;)V

    .line 3652
    :cond_5
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->pdaId:I

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->setPDAId(I)V

    .line 3653
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->setStateName(Ljava/lang/String;)V

    .line 3654
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->setDistrictName(Ljava/lang/String;)V

    .line 3655
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->setMandalName(Ljava/lang/String;)V

    .line 3656
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->setVillageName(Ljava/lang/String;)V

    .line 3657
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->setLatitude(Ljava/lang/String;)V

    .line 3658
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->setLongitude(Ljava/lang/String;)V

    .line 3659
    invoke-virtual {v6, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setServerUpdatedStatus(Z)V

    .line 3660
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->status:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->setStatusReason(Ljava/lang/String;)V

    .line 3661
    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/model/DealerMaster;->setIsNew(Z)V

    .line 3662
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    const-string v4, "Retailer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3663
    invoke-virtual {v6, v2}, Lcom/conceptglobal/pmc/model/DealerMaster;->setCustomerTypeID(I)V

    goto :goto_4

    .line 3664
    :cond_6
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    const-string v2, "Distributor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    const-string v2, "Dealer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3665
    :cond_7
    invoke-virtual {v6, v3}, Lcom/conceptglobal/pmc/model/DealerMaster;->setCustomerTypeID(I)V

    .line 3667
    :cond_8
    :goto_4
    const-string v0, "True"

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->setIsActive(Ljava/lang/String;)V

    .line 3668
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->aadharRawData:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->setAadharRawData(Ljava/lang/String;)V

    .line 3669
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->status:I

    if-ne v0, v7, :cond_9

    .line 3670
    invoke-virtual {v6, v8}, Lcom/conceptglobal/pmc/model/DealerMaster;->setHasProfilePicture(Ljava/lang/String;)V

    .line 3671
    invoke-virtual {v6, v8}, Lcom/conceptglobal/pmc/model/DealerMaster;->setColumn3(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    if-nez v0, :cond_c

    .line 3675
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getIsRetailerProfilePicCapturd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 3676
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3677
    invoke-virtual {v6, v8}, Lcom/conceptglobal/pmc/model/DealerMaster;->setHasProfilePicture(Ljava/lang/String;)V

    goto :goto_6

    .line 3679
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 3680
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->images:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/ImageDetails;

    .line 3681
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ImageDetails;->getEventTypeId()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_b

    .line 3682
    invoke-virtual {v6, v8}, Lcom/conceptglobal/pmc/model/DealerMaster;->setHasProfilePicture(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    .line 3686
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3693
    :cond_c
    :goto_6
    :try_start_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingRetailerCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->retailerCount:I

    if-lez v0, :cond_d

    .line 3695
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArrIds:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->updateRetailerDetails(Lcom/conceptglobal/pmc/model/DealerMaster;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/ArrayList;)V

    goto :goto_7

    .line 3697
    :cond_d
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-static {v6, v0, v1, v2}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertRetailerDetails(Lcom/conceptglobal/pmc/model/DealerMaster;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3698
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateRetailerOTPVerificationQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 3703
    :goto_7
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->locationUpdateStatus:I

    if-ne v0, v7, :cond_e

    .line 3704
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    invoke-virtual {v1, v2, v8}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateRetailerLocationUpdateStatusQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    .line 3707
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3708
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3713
    :cond_e
    :goto_8
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->listDealerCrops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DealerCropMapping;

    .line 3716
    :try_start_2
    invoke-static {v1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertCropSelectionDetails(Lcom/conceptglobal/pmc/model/DealerCropMapping;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception v1

    .line 3718
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tag:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 3724
    :cond_f
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->listFarmerPlots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "AddRetailer"

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DealerLandDetails;

    .line 3725
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DealerLandDetails;->getMappingId()I

    move-result v3

    if-nez v3, :cond_10

    .line 3727
    :try_start_3
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->generateResPondentNumberNew()Ljava/lang/String;

    move-result-object v3

    .line 3728
    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/model/DealerLandDetails;->setAddress(Ljava/lang/String;)V

    .line 3729
    invoke-static {v1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertPlotDetails(Lcom/conceptglobal/pmc/model/DealerLandDetails;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_a

    :catch_3
    move-exception v1

    .line 3732
    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 3736
    :cond_10
    :try_start_4
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DealerLandDetails;->getGPSTimeStamp()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DealerLandDetails;->getGPSTimeStamp()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_b

    .line 3739
    :cond_11
    invoke-static {v1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->updateDealerPlotDetailsWithGstTimeStamp(Lcom/conceptglobal/pmc/model/DealerLandDetails;)V

    goto :goto_a

    .line 3737
    :cond_12
    :goto_b
    invoke-static {v1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->updateDealerPlotDetails(Lcom/conceptglobal/pmc/model/DealerLandDetails;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_a

    :catch_4
    move-exception v1

    .line 3743
    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 3749
    :cond_13
    :try_start_5
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3750
    sget-object v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->deletedCropIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3751
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    invoke-virtual {v5, v7, v3}, Lcom/conceptglobal/pmc/common/Queries;->deleteDealerCropDataByMappingId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :catch_5
    move-exception v0

    .line 3754
    :try_start_6
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3756
    :cond_14
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 3759
    :try_start_7
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3760
    sget-object v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->deletedPlotIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3761
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    invoke-virtual {v5, v7, v3}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerLandDataBymappingID(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_d

    :catchall_1
    move-exception v0

    goto :goto_f

    :catch_6
    move-exception v0

    .line 3764
    :try_start_8
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3766
    :cond_15
    sget-object v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 3770
    :try_start_9
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update DealerLandDetails set serverupdatedstatus= \'false\',pdaid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DealerMaster;->getPDAId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",CreatedBy = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " where Contactid=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_e

    :catch_7
    move-exception v0

    .line 3772
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e
    return-void

    .line 3766
    :goto_f
    sget-object v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 3767
    throw v0

    .line 3756
    :goto_10
    sget-object v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 3757
    throw v0
.end method

.method private enableGeoDetailsLayout()V
    .locals 9

    .line 957
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "Dealer"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getInWhichTab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInWhichTabGeoDetailsAvailable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090380

    .line 958
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mAddGeoDetailsInPersonal:Landroid/widget/LinearLayout;

    const v1, 0x7f09037f

    .line 959
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mAddGeoDetailsInOthers:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 961
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attribName:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 962
    const-string v2, "Personal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 963
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 964
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attribName:[Ljava/lang/String;

    aget-object v4, v2, v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/EditText;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mAddGeoDetailsInPersonal:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsConditions:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aget-object v8, v2, v3

    move-object v2, p0

    move v3, v1

    invoke-virtual/range {v2 .. v8}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->addIndividualGeoDetails(ILjava/lang/String;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto :goto_1

    .line 965
    :cond_0
    const-string v2, "Others"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 966
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 967
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attribName:[Ljava/lang/String;

    aget-object v4, v2, v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/EditText;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mAddGeoDetailsInOthers:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsConditions:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aget-object v8, v2, v3

    move-object v2, p0

    move v3, v1

    invoke-virtual/range {v2 .. v8}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->addIndividualGeoDetails(ILjava/lang/String;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 971
    const-string v1, "AddRetailer"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private fetchLocation(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    .line 5747
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5748
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p1, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 5751
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/AddRetailer$31;

    invoke-direct {v1, p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/AddRetailer$31;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-string p1, "AddRetailer"

    const/4 p2, 0x1

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5775
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private generateResPondentNumberNew()Ljava/lang/String;
    .locals 3

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dealerMaster:Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->getPDAId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLocation()V
    .locals 2

    const/4 v0, 0x1

    .line 5799
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->locationUpdateStatus:I

    .line 5800
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvLatitude:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvLongitude:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->fetchLocation(Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method private getLocationTime(DD)Ljava/lang/String;
    .locals 2

    .line 3359
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 3360
    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 3361
    invoke-virtual {v0, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 3362
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getLongToDate(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getOTPDetails()V
    .locals 10

    .line 5840
    const-string v0, ""

    const-string v1, "getOTPDetails"

    const-string v2, "AddRetailer"

    .line 0
    const-string v3, "mOTP ::::::::::::: "

    const-string v4, "OTP Request jsonObj ::::::::::::: "

    const-string v5, "name :::::::"

    const/4 v6, 0x0

    .line 5842
    :try_start_0
    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5843
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    iget-object v9, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    .line 5844
    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->getRetailerNameMobileQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5843
    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRetailerNameMobileData(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/DealerMaster;

    move-result-object v7

    .line 5845
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DealerMaster;->getRetailerShopName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mobile ::::::::::: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DealerMaster;->getMobileNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5846
    new-instance v5, Lcom/conceptglobal/pmc/model/otp/GetOTP;

    invoke-direct {v5}, Lcom/conceptglobal/pmc/model/otp/GetOTP;-><init>()V

    .line 5847
    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/conceptglobal/pmc/model/otp/GetOTP;->setRespondentNo(Ljava/lang/String;)V

    .line 5848
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DealerMaster;->getMobileNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/conceptglobal/pmc/model/otp/GetOTP;->setMobileNo(Ljava/lang/String;)V

    .line 5849
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DealerMaster;->getRetailerShopName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/model/otp/GetOTP;->setFarmerName(Ljava/lang/String;)V

    .line 5850
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dealerMaster:Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/DealerMaster;->getPDAId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/model/otp/GetOTP;->setPdaid(Ljava/lang/String;)V

    .line 5851
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    .line 5852
    invoke-virtual {v7, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 5853
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5854
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodSendFarmerOTP()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5855
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v8

    invoke-virtual {v8, v5, v4}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 5856
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 5857
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5858
    const-class v0, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;

    invoke-virtual {v7, v6, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;

    .line 5859
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Success"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5860
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;->getData()Lcom/conceptglobal/pmc/model/otp/Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/otp/Data;->getOTP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mOTP:Ljava/lang/String;

    .line 5861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mOTP:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5863
    :cond_0
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5867
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1, v6}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private gettingData()V
    .locals 5

    .line 655
    const-string v0, "AddRetailer"

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 656
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 658
    const-string v3, "farmerId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 659
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 660
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    goto :goto_0

    .line 662
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactIdIncrement()V

    if-eqz v2, :cond_1

    .line 663
    const-string v3, "MobileNumber"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 664
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mobile:Ljava/lang/String;

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 668
    const-string v3, "GstNo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 669
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->gstNumber:Ljava/lang/String;

    .line 671
    :cond_2
    const-string v2, "SegmentId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    .line 672
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->segmentID:I

    .line 674
    :cond_3
    const-string v2, "fromTransaction"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 675
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isFromTransaction:I

    .line 677
    :cond_4
    const-string v2, "fromSelfassgin"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 678
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isFromSelfassgin:I

    .line 681
    :cond_5
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->companyOrCropTab:Ljava/lang/String;

    const-string v2, "Crops"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 682
    iget v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isextrasales:I

    if-ne v1, v4, :cond_6

    .line 683
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getDealerHybrids(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDealerCropSalesDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->listDealerCrops:Ljava/util/List;

    goto :goto_1

    .line 685
    :cond_6
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getDealerCrops(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDealerCropSalesDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->listDealerCrops:Ljava/util/List;

    goto :goto_1

    .line 689
    :cond_7
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getCompaniesAndSales(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getCompanySelectionData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->listDealerCompanies:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 692
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 695
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getDealerPlotDetails(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDealetrPlotDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->listFarmerPlots:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 697
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private gettingPdaid()V
    .locals 3

    .line 852
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dealerMaster:Lcom/conceptglobal/pmc/model/DealerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->geetingPdaid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setPDAId(I)V

    .line 853
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->geetingPdaid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->pdaId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 855
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 856
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initialization()V
    .locals 4

    const/4 v0, 0x0

    .line 478
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->updateDOS:Ljava/lang/String;

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dynamicColumnnames:Ljava/lang/StringBuilder;

    .line 480
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mentryValues:Ljava/util/List;

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getDealerDetailsSecondTab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->companyOrCropTab:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 484
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 485
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const v0, 0x7f09041e

    .line 487
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tabHost:Landroid/widget/TabHost;

    .line 488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->listDealerCompanies:Ljava/util/List;

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->listDealerCrops:Ljava/util/List;

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->deletedCompanyIds:Ljava/util/List;

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->deletedCropIds:Ljava/util/List;

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->listFarmerPlots:Ljava/util/List;

    .line 494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->modifiedListOfFarmerPlots:Ljava/util/List;

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->deletedPlotIds:Ljava/util/List;

    .line 497
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090091

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvAddland:Landroid/widget/TextView;

    .line 498
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addLandText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addLandText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09039e

    .line 499
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->rvPlots:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 501
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 502
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 503
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->rvPlots:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 504
    new-instance v2, Landroidx/recyclerview/widget/DividerItemDecoration;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->rvPlots:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 505
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 506
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->rvPlots:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 508
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvstateid:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvdistrictid:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvmandalid:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvvillageid:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->edtState:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->edtDistrict:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->edtMandal:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->edtVillage:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->edtState:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->stateChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 519
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->edtDistrict:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->districtChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 520
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->edtMandal:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mandalChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f09033b

    .line 522
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tab1:Landroid/widget/LinearLayout;

    const v0, 0x7f090339

    .line 523
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tab2:Landroid/widget/LinearLayout;

    const v0, 0x7f09033a

    .line 524
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tab3:Landroid/widget/RelativeLayout;

    .line 526
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f09008f

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvAddCompany:Landroid/widget/TextView;

    .line 527
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->companyOrCropTab:Ljava/lang/String;

    const-string v2, "Crops"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvAddCompany:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addCropText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvAddCompany:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addCompanyText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    :goto_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f09009c

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->btnDraft:Landroid/widget/Button;

    .line 534
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draftTabText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f0900af

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->btnSave:Landroid/widget/Button;

    .line 537
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_saveText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f0902d7

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->lvCompanies:Landroid/widget/ListView;

    .line 540
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->lvCrops:Landroid/widget/ListView;

    .line 541
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f09054c

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvLatitude:Landroid/widget/TextView;

    .line 542
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_latitudeText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f090555

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvLongitude:Landroid/widget/TextView;

    .line 545
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_longitudeText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f0904fc

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvAllSalesvalues:Landroid/widget/TextView;

    .line 548
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_salesValueText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f0900a4

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->btnLatLng:Landroid/widget/ImageView;

    const v0, 0x7f090245

    .line 550
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->imgretailermain:Landroid/widget/ImageView;

    const v0, 0x7f09021a

    .line 551
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->gridView:Landroid/widget/GridView;

    .line 552
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->imgretailermain:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f09056d

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->btnRemarks:Landroid/widget/Button;

    .line 554
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_remarksText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f0901c3

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etRemarks:Landroid/widget/EditText;

    .line 557
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterRemarksText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f090080

    .line 559
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->btnScanAdhar:Landroid/widget/Button;

    .line 560
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etRemarks:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->btnSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->btnDraft:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvAddCompany:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 567
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->btnLatLng:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvAddland:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 571
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mYear:I

    const/4 v1, 0x2

    .line 572
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mMonth:I

    const/4 v1, 0x5

    .line 573
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mDay:I

    .line 575
    new-instance v0, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/DealerMaster;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dealerMaster:Lcom/conceptglobal/pmc/model/DealerMaster;

    .line 576
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->imagelist:Ljava/util/ArrayList;

    return-void
.end method

.method public static isDecimal(Ljava/lang/String;)Z
    .locals 2

    .line 4145
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

    .line 4147
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1

    .line 4135
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 4137
    const-string v0, "AddRetailer"

    invoke-static {v0, p0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private isValidMobileNumber(Ljava/lang/String;)Z
    .locals 1

    .line 5720
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

    .line 5872
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    const v1, 0x1020013

    .line 5875
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TabWidget;

    if-eqz p0, :cond_0

    .line 5878
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getPaddingLeft()I

    move-result v1

    .line 5879
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getPaddingTop()I

    move-result v2

    .line 5880
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getPaddingRight()I

    move-result v3

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 5877
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/TabWidget;->setPadding(IIII)V

    :cond_0
    return-object p1
.end method

.method private navigateToDraftList()V
    .locals 5

    .line 4110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4111
    sget-object v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    const-string v2, "Retailer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "farmerType"

    if-eqz v1, :cond_0

    .line 4112
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 4113
    :cond_0
    sget-object v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    const-string v2, "Distributor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    const-string v4, "Dealer"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4114
    :cond_1
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :goto_0
    const/high16 v1, 0x14000000

    .line 4116
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4117
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->startActivity(Landroid/content/Intent;)V

    .line 4118
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->finish()V

    .line 4119
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->startService()V

    return-void
.end method

.method private setAdapter()V
    .locals 3

    .line 5484
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailsQry_Assignment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->images:Ljava/util/List;

    .line 5485
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5486
    new-instance v0, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->images:Ljava/util/List;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->imagelist:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    .line 5487
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->gridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5488
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5489
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->gridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 5491
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->gridView:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setBottomViewPadding()V
    .locals 2

    .line 5871
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tabHost:Landroid/widget/TabHost;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/AddRetailer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private setDate(I)V
    .locals 2

    .line 3071
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 3072
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3074
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3076
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3078
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3079
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setDate_yearless(I)V
    .locals 2

    .line 3046
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 3047
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3049
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3051
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3053
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3054
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 5459
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 5460
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 5461
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 5462
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setError(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 5412
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddRetailer$24;

    invoke-direct {v0, p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/AddRetailer$24;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setListviewForSales()V
    .locals 3

    .line 1649
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->companyOrCropTab:Ljava/lang/String;

    const-string v1, "Crops"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1650
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->listDealerCrops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1651
    new-instance v0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->listDealerCrops:Ljava/util/List;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Lcom/conceptglobal/pmc/interfaces/OnCropItemClickListener;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->adapterCrop:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;

    .line 1652
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->lvCrops:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1653
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->lvCrops:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/ListviewFillToParent;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    goto :goto_0

    .line 1656
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->listDealerCompanies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1657
    new-instance v0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->listDealerCompanies:Ljava/util/List;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->adapterCompany:Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;

    .line 1658
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->lvCompanies:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1659
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->lvCompanies:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/ListviewFillToParent;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setPlotsAdapter()V
    .locals 3

    .line 1666
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->plotsAdapter:Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;

    if-nez v0, :cond_0

    .line 1667
    new-instance v0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->listFarmerPlots:Ljava/util/List;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Lcom/conceptglobal/pmc/interfaces/OnItemClickListener;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->plotsAdapter:Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;

    .line 1668
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->rvPlots:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 1670
    :cond_0
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method private setText(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 1

    .line 5403
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddRetailer$23;

    invoke-direct {v0, p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/AddRetailer$23;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private settingTabs()V
    .locals 6

    .line 817
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 818
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_personalTabText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10023c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08010b

    invoke-direct {p0, v0, v2, v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 820
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "IsNotRequireCropOrComapnyTab"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isNotRequiredFAB:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 822
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 824
    :goto_0
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isNotRequiredFAB:J

    const-wide/16 v2, 0x1

    const v4, 0x7f080101

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    .line 825
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->companyOrCropTab:Ljava/lang/String;

    const-string v1, "Crops"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f10023d

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cropFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v4, v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_companyTabText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v4, v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const v0, 0x7f090423

    .line 831
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 832
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 834
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_LandTabText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100243

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v4, v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 835
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_profileTabText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100240

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080166

    invoke-direct {p0, v0, v2, v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private showAddCropSalesDialog(Ljava/lang/String;FI)V
    .locals 11

    .line 2105
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 2107
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v2, 0x7f0c0055

    .line 2108
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x7f09018e

    .line 2109
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etCropSales:Landroid/widget/EditText;

    .line 2110
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addSales()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v2, 0x7f0900b1

    .line 2111
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2112
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_saveText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0900a9

    .line 2113
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f09018d

    .line 2115
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etCropName:Landroid/widget/EditText;

    .line 2116
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addCropText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v4, 0x7f0905a4

    .line 2119
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvCropId:Landroid/widget/TextView;

    .line 2120
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etCropSales:Landroid/widget/EditText;

    const/16 v5, 0x2002

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    const v4, 0x7f090194

    .line 2122
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etCropDos:Landroid/widget/EditText;

    .line 2124
    iget v6, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isextrasales:I

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-ne v6, v1, :cond_0

    .line 2125
    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2126
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etCropDos:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addSales1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2127
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etCropName:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addCropText1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2128
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etCropDos:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 2130
    :cond_0
    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2134
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    const-string v6, "CropSalesLength"

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 2136
    const-string v5, "AddRetailer"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb

    .line 2139
    :goto_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etCropSales:Landroid/widget/EditText;

    new-array v6, v1, [Landroid/text/InputFilter;

    new-instance v9, Lcom/conceptglobal/pmc/fragments/AddRetailer$DecimalDigitsInputFilter;

    const/4 v10, 0x2

    invoke-direct {v9, p0, v4, v10}, Lcom/conceptglobal/pmc/fragments/AddRetailer$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;II)V

    aput-object v9, v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2140
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etCropDos:Landroid/widget/EditText;

    new-array v6, v1, [Landroid/text/InputFilter;

    new-instance v9, Lcom/conceptglobal/pmc/fragments/AddRetailer$DecimalDigitsInputFilter;

    invoke-direct {v9, p0, v4, v10}, Lcom/conceptglobal/pmc/fragments/AddRetailer$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;II)V

    aput-object v9, v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v4, -0x777778

    .line 2141
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    if-nez p3, :cond_1

    .line 2144
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etCropSales:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2145
    iget v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isextrasales:I

    if-ne v3, v1, :cond_2

    .line 2146
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etCropDos:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2

    .line 2148
    :cond_1
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etCropSales:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2149
    iget v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isextrasales:I

    if-ne v3, v1, :cond_2

    .line 2150
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etCropDos:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2152
    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 2153
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etCropName:Landroid/widget/EditText;

    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2154
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvCropId:Landroid/widget/TextView;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2155
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etCropSales:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2156
    iget p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isextrasales:I

    if-ne p2, v1, :cond_4

    .line 2157
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etCropDos:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2159
    :try_start_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etCropName:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/conceptglobal/pmc/common/Queries;->getCropNameQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 2161
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 2165
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etCropName:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2166
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etCropSales:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2167
    iget p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isextrasales:I

    if-ne p1, v1, :cond_4

    .line 2168
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etCropDos:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2172
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etCropName:Landroid/widget/EditText;

    new-instance p2, Lcom/conceptglobal/pmc/fragments/AddRetailer$12;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$12;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2195
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvCropId:Landroid/widget/TextView;

    new-instance p2, Lcom/conceptglobal/pmc/fragments/AddRetailer$13;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$13;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2239
    new-instance p1, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;Landroid/app/Dialog;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2287
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2288
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2289
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2290
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2291
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showAddLandDialog(Lcom/conceptglobal/pmc/model/DealerLandDetails;Ljava/lang/String;I)V
    .locals 11

    .line 1676
    new-instance v6, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    .line 1677
    invoke-virtual {v6, v7}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0c005c

    .line 1678
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f09016f

    .line 1679
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etPlotName:Landroid/widget/EditText;

    .line 1680
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plot_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f09015f

    .line 1681
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etPlotAcreages:Landroid/widget/EditText;

    .line 1682
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plot_acerage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1683
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etPlotAcreages:Landroid/widget/EditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1684
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etPlotAcreages:Landroid/widget/EditText;

    new-array v1, v7, [Landroid/text/InputFilter;

    new-instance v2, Lcom/conceptglobal/pmc/fragments/AddRetailer$DecimalDigitsInputFilter;

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-direct {v2, p0, v3, v4}, Lcom/conceptglobal/pmc/fragments/AddRetailer$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;II)V

    const/4 v8, 0x0

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v0, 0x7f090161

    .line 1685
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etPlotAddress:Landroid/widget/EditText;

    .line 1686
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plot_address()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f090176

    .line 1687
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etOnOrOFfField:Landroid/widget/EditText;

    const v1, 0x7f0800d7

    .line 1688
    invoke-virtual {v0, v8, v8, v1, v8}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1689
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etOnOrOFfField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plot_onFieldorOffField()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1690
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etOnOrOFfField:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1691
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etPlotAcreages:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    const v0, 0x7f09054b

    .line 1694
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvPlotLatitude:Landroid/widget/TextView;

    const v0, 0x7f090554

    .line 1695
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvPlotLongitude:Landroid/widget/TextView;

    const v0, 0x7f09009f

    .line 1696
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->ivGetLandLatLog:Landroid/widget/ImageView;

    const v0, 0x7f0905ab

    .line 1697
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvOnOrOffFieldID:Landroid/widget/TextView;

    const v0, 0x7f0900b7

    .line 1698
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/Button;

    .line 1700
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DealerLandDetails;->getMappingId()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "update"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1701
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etPlotName:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DealerLandDetails;->getLandname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1703
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etPlotAddress:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DealerLandDetails;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1704
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvPlotLatitude:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DealerLandDetails;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1705
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvPlotLongitude:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DealerLandDetails;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1709
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->etOnOrOFfField:Landroid/widget/EditText;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/AddRetailer$9;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$9;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1725
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->ivGetLandLatLog:Landroid/widget/ImageView;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/AddRetailer$10;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$10;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1786
    new-instance v10, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;

    move-object v0, v10

    move-object v1, p0

    move v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;ILcom/conceptglobal/pmc/model/DealerLandDetails;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1843
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1844
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, -0x1

    const/4 p3, -0x2

    invoke-virtual {p1, p2, p3}, Landroid/view/Window;->setLayout(II)V

    .line 1845
    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1846
    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1847
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 1848
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 3

    .line 5804
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5805
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

    new-instance v2, Lcom/conceptglobal/pmc/fragments/AddRetailer$32;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$32;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5812
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 5813
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5814
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;)V
    .locals 6

    .line 5693
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 5694
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0c0057

    .line 5695
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f0904a4

    .line 5696
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090241

    .line 5697
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v2, 0x7f0900aa

    .line 5698
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 5699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10021a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;->getRetailerShopName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5700
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100218

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;->getMobileNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\nMarket Name    : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5701
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;->getTerritory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\nVillage Name     : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5702
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;->getVillage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5699
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5704
    new-instance p1, Lcom/conceptglobal/pmc/fragments/AddRetailer$30;

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$30;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;Landroid/app/Dialog;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5711
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5712
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-virtual {p1, v1, v3}, Landroid/view/Window;->setLayout(II)V

    .line 5713
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 5714
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5715
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 5716
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showGeoEditAlert(Ljava/lang/String;)V
    .locals 3

    .line 5819
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5820
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

    new-instance v2, Lcom/conceptglobal/pmc/fragments/AddRetailer$34;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$34;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 5827
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fragments/AddRetailer$33;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$33;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5834
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 5835
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5836
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showGoBackDialog()V
    .locals 4

    .line 3105
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3107
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

    new-instance v3, Lcom/conceptglobal/pmc/fragments/AddRetailer$20;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$20;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3122
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fragments/AddRetailer$21;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$21;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3129
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3130
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3131
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showMobileSearchDialog()V
    .locals 6

    .line 5612
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 5613
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0c005d

    .line 5614
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f090173

    .line 5615
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f090095

    .line 5618
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0900b8

    .line 5619
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const/4 v4, 0x0

    .line 5620
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5622
    new-instance v5, Lcom/conceptglobal/pmc/fragments/AddRetailer$27;

    invoke-direct {v5, p0, v1, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$27;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5638
    new-instance v1, Lcom/conceptglobal/pmc/fragments/AddRetailer$28;

    invoke-direct {v1, p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$28;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;Landroid/app/Dialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5645
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5646
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 5647
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 5648
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5649
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 5650
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showNoDataAvailableDialog(Ljava/lang/String;)V
    .locals 3

    .line 5675
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5676
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/fragments/AddRetailer$29;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$29;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    const v2, 0x7f100101

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5682
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 5683
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5684
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showOTPDialog(Lcom/conceptglobal/pmc/model/DealerMaster;)V
    .locals 7

    .line 3310
    new-instance v6, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

    .line 3311
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DealerMaster;->getMobileNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DealerMaster;->getRetailerShopName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Retailer"

    move-object v0, v6

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/interfaces/OnVerifyOTPListener;Ljava/lang/String;)V

    .line 3312
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->showDialog()V

    return-void
.end method

.method private showOTPVerifyDialog()V
    .locals 4

    .line 4083
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 4084
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4085
    const-string v1, "As you don\'t have internet connection now. Please verify the farmer later."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4086
    new-instance v1, Lcom/conceptglobal/pmc/fragments/AddRetailer$22;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$22;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    const/4 v2, -0x1

    const-string v3, "Ok"

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4092
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1

    .line 5427
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddRetailer$25;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer$25;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startService()V
    .locals 3

    .line 4123
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4124
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4125
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Service initiated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 4126
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 4127
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    :cond_0
    return-void
.end method

.method private updateDisplay()V
    .locals 3

    .line 3059
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mFiledStr:Ljava/lang/String;

    .line 3060
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3062
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3064
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3066
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setDate(I)V

    return-void
.end method

.method private updateDisplay_yearless()V
    .locals 2

    .line 3034
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mFiledStr:Ljava/lang/String;

    .line 3035
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3037
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3039
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3041
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setDate_yearless(I)V

    return-void
.end method

.method private validateMobileNumber()V
    .locals 3

    .line 3316
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 3317
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3318
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3319
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MobileNumber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3320
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

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

    .line 3321
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mOldMobile:Ljava/lang/String;

    goto :goto_1

    .line 3323
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mOldMobile:Ljava/lang/String;

    .line 3325
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mOldMobile Number ::::::::::: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

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

    const-string v2, "AddRetailer"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private validateRetailerWithOTP()Z
    .locals 5

    const/4 v0, 0x0

    .line 3278
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v3, "RetailerOTPRoleId"

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getItemValuewithActiveCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3279
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getRoleIdFromuserRoleMapping()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 3280
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 3281
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 3282
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 3283
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

    .line 3290
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return v0
.end method

.method private validation()Z
    .locals 29

    move-object/from16 v1, p0

    .line 4548
    const-string v2, "Please take  shop photo"

    const-string v3, "Please add atleast one field information"

    const-string v4, "1"

    const-string v5, " "

    .line 4566
    const-string v8, ""

    move-object v11, v8

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    const/4 v9, 0x0

    const/4 v10, 0x1

    :goto_0
    :try_start_0
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v9, v7, :cond_4a

    .line 4568
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d

    const/16 v6, 0x67

    if-ne v7, v6, :cond_0

    .line 4569
    :try_start_1
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v11, v6

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1e

    .line 4571
    :cond_0
    :goto_1
    :try_start_2
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_1

    .line 4572
    :try_start_3
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v23, v6

    .line 4574
    :cond_1
    :try_start_4
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c

    const/16 v7, 0x68

    if-ne v6, v7, :cond_2

    .line 4575
    :try_start_5
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v12, v6

    .line 4577
    :cond_2
    :try_start_6
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    const/16 v7, 0x6f

    if-ne v6, v7, :cond_3

    .line 4578
    :try_start_7
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-object v13, v6

    .line 4580
    :cond_3
    :try_start_8
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    const/16 v7, 0x70

    if-ne v6, v7, :cond_4

    .line 4581
    :try_start_9
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-object v14, v6

    .line 4585
    :cond_4
    :try_start_a
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v6
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    const/16 v7, 0x6a

    if-ne v6, v7, :cond_5

    .line 4586
    :try_start_b
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    move-object v15, v6

    .line 4588
    :cond_5
    :try_start_c
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v6
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    const/16 v7, 0x6b

    if-ne v6, v7, :cond_6

    .line 4589
    :try_start_d
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    move-object/from16 v16, v6

    .line 4591
    :cond_6
    :try_start_e
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v6
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    const/16 v7, 0x6c

    if-ne v6, v7, :cond_7

    .line 4592
    :try_start_f
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    move-object/from16 v17, v6

    .line 4594
    :cond_7
    :try_start_10
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v6
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    const/16 v7, 0xe5

    if-ne v6, v7, :cond_8

    .line 4595
    :try_start_11
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    move-object/from16 v18, v6

    .line 4597
    :cond_8
    :try_start_12
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v6
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    const/16 v7, 0xe6

    if-ne v6, v7, :cond_9

    .line 4598
    :try_start_13
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    move-object/from16 v19, v6

    .line 4600
    :cond_9
    :try_start_14
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v6
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    const/16 v7, 0xe7

    if-ne v6, v7, :cond_a

    .line 4601
    :try_start_15
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    move-object/from16 v20, v6

    .line 4603
    :cond_a
    :try_start_16
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v6
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_9

    const/16 v7, 0xdc

    if-ne v6, v7, :cond_b

    .line 4604
    :try_start_17
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    move-object/from16 v21, v6

    .line 4606
    :cond_b
    :try_start_18
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v6
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_9

    const/16 v7, 0xf6

    if-ne v6, v7, :cond_c

    .line 4607
    :try_start_19
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0

    move-object/from16 v22, v6

    .line 4609
    :cond_c
    :try_start_1a
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v6
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_9

    const/16 v7, 0x5e

    if-ne v6, v7, :cond_d

    .line 4610
    :try_start_1b
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0

    .line 4612
    :cond_d
    :try_start_1c
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v6
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_9

    const/16 v7, 0xd8

    if-ne v6, v7, :cond_e

    .line 4613
    :try_start_1d
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_0

    .line 4616
    :cond_e
    :try_start_1e
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsMandatory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9

    const-string v7, "Decimal"

    move/from16 v24, v10

    const-string v10, "Email"

    move-object/from16 v25, v11

    const-string v11, "VATNo"

    move-object/from16 v26, v12

    const-string v12, "Datepicker"

    if-eqz v6, :cond_2e

    .line 4617
    :try_start_1f
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_5

    if-nez v6, :cond_f

    .line 4619
    :try_start_20
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_emptyEditText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    :goto_2
    const/4 v10, 0x0

    goto/16 :goto_1c

    :catch_1
    move-exception v0

    goto/16 :goto_10

    .line 4622
    :cond_f
    :try_start_21
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v6

    if-eqz v6, :cond_16

    .line 4623
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v6
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_5

    move-object/from16 v27, v13

    :try_start_22
    const-string v13, "MobileNumber"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 4624
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-lez v6, :cond_17

    .line 4625
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mNewMobile:Ljava/lang/String;

    .line 4626
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v11

    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_2

    move-object/from16 v28, v14

    :try_start_23
    iget v14, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->typeOfCustomer:I

    invoke-virtual {v11, v13, v14}, Lcom/conceptglobal/pmc/common/Queries;->isMobileExistsForRetailerPAN(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->gstNumber:Ljava/lang/String;

    invoke-virtual {v6, v11, v13, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumPANExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 4630
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v11

    if-eqz v6, :cond_10

    .line 4636
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_mobileExistsToast()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4639
    :cond_10
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-ge v6, v11, :cond_11

    .line 4641
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4646
    :cond_11
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_12
    move-object/from16 v28, v14

    .line 4649
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 4650
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-lez v6, :cond_18

    .line 4653
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v6

    .line 4659
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v6, :cond_13

    .line 4661
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v11, v6}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_3

    .line 4667
    :cond_13
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4672
    :cond_14
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v6

    .line 4673
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v6, :cond_15

    .line 4675
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v11, v6}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_3
    const/4 v6, 0x0

    const/16 v24, 0x0

    goto :goto_5

    .line 4681
    :cond_15
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v28, v14

    move-object v6, v0

    move/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v12, v26

    move-object/from16 v13, v27

    goto/16 :goto_1f

    :cond_16
    move-object/from16 v27, v13

    :cond_17
    move-object/from16 v28, v14

    :cond_18
    :goto_4
    const/4 v6, 0x1

    .line 4686
    :goto_5
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v11

    const-string v13, "Dropdown"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 4688
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_19

    .line 4690
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v24, 0x0

    goto :goto_6

    :cond_19
    if-eqz v6, :cond_1a

    .line 4696
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-direct {v1, v11, v13}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 4699
    :cond_1a
    :goto_6
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_1b

    .line 4701
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v24, 0x0

    goto :goto_7

    :cond_1b
    if-eqz v6, :cond_1c

    .line 4707
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-direct {v1, v11, v13}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 4711
    :cond_1c
    :goto_7
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v11

    const-string v13, "Multiselect Dropdown"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 4714
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_1d

    .line 4715
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4717
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_8

    .line 4720
    :try_start_24
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_3

    const/4 v6, 0x0

    const/16 v24, 0x0

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v6, v0

    move-object/from16 v11, v25

    move-object/from16 v12, v26

    move-object/from16 v13, v27

    move-object/from16 v14, v28

    const/4 v10, 0x0

    goto/16 :goto_1f

    :cond_1d
    if-eqz v6, :cond_1e

    .line 4724
    :try_start_25
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-direct {v1, v11, v13}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 4728
    :cond_1e
    :goto_8
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_22

    .line 4729
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 4730
    sget-object v10, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-nez v10, :cond_1f

    .line 4733
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v6, v10}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_9
    const/4 v6, 0x0

    const/4 v10, 0x0

    goto/16 :goto_b

    :cond_1f
    if-eqz v6, :cond_22

    .line 4739
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-direct {v1, v10, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 4743
    :cond_20
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 4744
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 4745
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v13, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4746
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 4747
    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 4748
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_21

    .line 4750
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v6, v10}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_21
    if-eqz v6, :cond_22

    .line 4756
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-direct {v1, v10, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_8

    :cond_22
    :goto_a
    move/from16 v10, v24

    .line 4761
    :goto_b
    :try_start_26
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_23

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_23

    goto/16 :goto_1c

    .line 4763
    :cond_23
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v11

    if-lez v11, :cond_26

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v11

    if-lez v11, :cond_26

    .line 4764
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isNumeric(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_46

    .line 4765
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 4766
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v12

    .line 4767
    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    if-le v11, v12, :cond_25

    add-int/2addr v13, v14

    if-lt v11, v13, :cond_24

    goto :goto_c

    :cond_24
    if-eqz v6, :cond_2c

    .line 4776
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 4770
    :cond_25
    :goto_c
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 4782
    :cond_26
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v11

    if-lez v11, :cond_28

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v11

    if-gtz v11, :cond_28

    .line 4783
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isNumeric(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_46

    .line 4784
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 4785
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v12

    if-ge v11, v12, :cond_27

    .line 4789
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_27
    if-eqz v6, :cond_2c

    .line 4795
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 4801
    :cond_28
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v11

    if-lez v11, :cond_2c

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v11

    if-gtz v11, :cond_2c

    .line 4802
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isNumeric(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2a

    .line 4803
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 4804
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v12

    if-le v11, v12, :cond_29

    .line 4808
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v10, 0x0

    goto :goto_d

    :cond_29
    if-eqz v6, :cond_2a

    .line 4814
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-direct {v1, v11, v12}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 4818
    :cond_2a
    :goto_d
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isDecimal(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2c

    .line 4819
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    .line 4820
    iget-object v14, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v14

    .line 4822
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-double v13, v14

    cmpl-double v24, v11, v13

    if-lez v24, :cond_2b

    .line 4824
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_e
    const/4 v10, 0x0

    goto :goto_f

    :cond_2b
    if-eqz v6, :cond_2c

    .line 4830
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 4837
    :cond_2c
    :goto_f
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v6

    if-lez v6, :cond_2d

    .line 4838
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isDecimal(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 4839
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 4840
    invoke-static {}, Ljava/text/DecimalFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v11

    .line 4841
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 4842
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    const/4 v12, 0x0

    .line 4843
    invoke-virtual {v11, v12}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 4844
    invoke-virtual {v11, v6}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 4845
    new-instance v11, Ljava/math/BigDecimal;

    invoke-direct {v11, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 4846
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fragments/AddFarmer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4851
    :cond_2d
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_7

    if-eqz v6, :cond_49

    .line 4853
    :try_start_27
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_4

    goto/16 :goto_1c

    .line 4856
    :catch_4
    :try_start_28
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_3

    goto/16 :goto_2

    :catch_5
    move-exception v0

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    :goto_10
    move-object v6, v0

    move/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v12, v26

    goto/16 :goto_1f

    :cond_2e
    move-object/from16 v27, v13

    move-object/from16 v28, v14

    .line 4861
    :try_start_29
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-lez v6, :cond_48

    .line 4862
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2f

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    goto/16 :goto_1b

    .line 4864
    :cond_2f
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v6

    if-eqz v6, :cond_36

    .line 4865
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v6

    const-string v12, "Mobile"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 4866
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-lez v6, :cond_36

    .line 4867
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v11

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    iget v13, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->typeOfCustomer:I

    invoke-virtual {v11, v12, v13}, Lcom/conceptglobal/pmc/common/Queries;->isMobileExistsForRetailer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 4869
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v11

    if-eqz v6, :cond_30

    .line 4872
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_mobileExistsToast()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 4875
    :cond_30
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-ge v6, v11, :cond_31

    .line 4877
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 4883
    :cond_31
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 4887
    :cond_32
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 4888
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-lez v6, :cond_36

    .line 4891
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v6

    .line 4897
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v6, :cond_33

    .line 4899
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v11, v6}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_11

    .line 4905
    :cond_33
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_12

    .line 4910
    :cond_34
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v6

    .line 4911
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v6, :cond_35

    .line 4913
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v11, v6}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_11
    const/4 v6, 0x0

    const/16 v24, 0x0

    goto :goto_13

    .line 4919
    :cond_35
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_36
    :goto_12
    const/4 v6, 0x1

    .line 4924
    :goto_13
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3a

    .line 4925
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_38

    .line 4926
    sget-object v10, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-nez v10, :cond_37

    .line 4928
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v6, v10}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_14
    const/4 v6, 0x0

    const/4 v10, 0x0

    goto/16 :goto_16

    :cond_37
    if-eqz v6, :cond_3a

    .line 4934
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-direct {v1, v10, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 4938
    :cond_38
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 4939
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 4940
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4941
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 4942
    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 4943
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_39

    .line 4945
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v6, v10}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_39
    if-eqz v6, :cond_3a

    .line 4951
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-direct {v1, v10, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_8

    :cond_3a
    :goto_15
    move/from16 v10, v24

    .line 4956
    :goto_16
    :try_start_2a
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v11

    if-lez v11, :cond_3d

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v11

    if-lez v11, :cond_3d

    .line 4957
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isNumeric(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_45

    .line 4958
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 4959
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v12

    .line 4960
    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    if-le v11, v12, :cond_3c

    add-int/2addr v13, v14

    if-lt v11, v13, :cond_3b

    goto :goto_17

    :cond_3b
    if-eqz v6, :cond_45

    .line 4969
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_19

    .line 4963
    :cond_3c
    :goto_17
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 4975
    :cond_3d
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v11

    if-lez v11, :cond_41

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v11

    if-gtz v11, :cond_41

    .line 4976
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isDecimal(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3f

    .line 4977
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 4978
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v12

    if-ge v11, v12, :cond_3e

    .line 4982
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_3e
    if-eqz v6, :cond_45

    .line 4988
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_19

    .line 4991
    :cond_3f
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isDecimal(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_46

    .line 4992
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    .line 4993
    iget-object v14, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v14

    .line 4995
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-double v13, v14

    cmpg-double v24, v11, v13

    if-gez v24, :cond_40

    .line 4997
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_40
    if-eqz v6, :cond_45

    .line 5003
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_19

    .line 5010
    :cond_41
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v11

    if-lez v11, :cond_45

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v11

    if-gtz v11, :cond_45

    .line 5011
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isNumeric(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_43

    .line 5012
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 5013
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v12

    if-le v11, v12, :cond_42

    .line 5017
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_42
    if-eqz v6, :cond_45

    .line 5023
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_19

    .line 5026
    :cond_43
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isDecimal(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_46

    .line 5027
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    .line 5028
    iget-object v14, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v14

    .line 5030
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-double v13, v14

    cmpl-double v24, v11, v13

    if-lez v24, :cond_44

    .line 5032
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_18
    const/4 v10, 0x0

    goto :goto_19

    :cond_44
    if-eqz v6, :cond_45

    .line 5038
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-direct {v1, v6, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 5045
    :cond_45
    :goto_19
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v6

    if-lez v6, :cond_47

    .line 5046
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isDecimal(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 5047
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 5048
    invoke-static {}, Ljava/text/DecimalFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v11

    .line 5049
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 5050
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    const/4 v12, 0x0

    .line 5051
    invoke-virtual {v11, v12}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 5052
    invoke-virtual {v11, v6}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 5053
    new-instance v11, Ljava/math/BigDecimal;

    invoke-direct {v11, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 5054
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fragments/AddFarmer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a

    :cond_46
    move-object/from16 v11, v25

    move-object/from16 v12, v26

    move-object/from16 v13, v27

    move-object/from16 v14, v28

    goto/16 :goto_20

    .line 5059
    :cond_47
    :goto_1a
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_7

    if-eqz v6, :cond_49

    .line 5061
    :try_start_2b
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_6

    goto :goto_1c

    .line 5064
    :catch_6
    :try_start_2c
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_3

    goto/16 :goto_2

    :catch_7
    move-exception v0

    move-object v6, v0

    goto :goto_1d

    :cond_48
    :goto_1b
    move/from16 v10, v24

    :cond_49
    :goto_1c
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v11, v25

    move-object/from16 v12, v26

    move-object/from16 v13, v27

    move-object/from16 v14, v28

    goto/16 :goto_0

    :catch_8
    move-exception v0

    move-object v6, v0

    move/from16 v10, v24

    :goto_1d
    move-object/from16 v11, v25

    move-object/from16 v12, v26

    move-object/from16 v13, v27

    move-object/from16 v14, v28

    goto :goto_1f

    :catch_9
    move-exception v0

    move/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    goto :goto_1e

    :catch_a
    move-exception v0

    move/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    goto :goto_1e

    :catch_b
    move-exception v0

    move/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    goto :goto_1e

    :catch_c
    move-exception v0

    move/from16 v24, v10

    move-object/from16 v25, v11

    goto :goto_1e

    :cond_4a
    move/from16 v24, v10

    goto :goto_20

    :catch_d
    move-exception v0

    move/from16 v24, v10

    :goto_1e
    move-object v6, v0

    .line 5071
    :goto_1f
    :try_start_2d
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 5074
    :goto_20
    sget-object v6, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    const-string v7, "Retailer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 5075
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    const-string v7, "isRetailerLatLongRequired"

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLondMandatory(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4c

    .line 5076
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4b

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_4c

    .line 5080
    :cond_4b
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvLatitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 5081
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvLongitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 5088
    :cond_4c
    sget-object v6, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    const-string v7, "Distributor"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4d

    sget-object v6, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    const-string v7, "Dealer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 5089
    :cond_4d
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    const-string v7, "isDistributorLatLongRequired"

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLondMandatory(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4f

    .line 5090
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4e

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_4f

    .line 5094
    :cond_4e
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvLatitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 5095
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvLongitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_4f
    if-eqz v11, :cond_50

    .line 5102
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_50

    if-eqz v12, :cond_50

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_50

    .line 5103
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_13

    if-eqz v6, :cond_50

    .line 5106
    :try_start_2e
    const-string v6, "Preferred Distributor1 and Preferred Distributor2 can\'t be same"

    invoke-direct {v1, v6}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->showToast(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_e

    const/4 v10, 0x0

    goto :goto_21

    :catch_e
    move-exception v0

    move-object v2, v0

    const/4 v10, 0x0

    goto/16 :goto_2b

    :cond_50
    :goto_21
    if-eqz v13, :cond_51

    .line 5109
    :try_start_2f
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_51

    if-eqz v14, :cond_51

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_51

    .line 5110
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_13

    if-eqz v6, :cond_51

    .line 5113
    :try_start_30
    const-string v6, "Main Village1 and Main Village2 can\'t be same"

    invoke-direct {v1, v6}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->showToast(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_e

    const/4 v10, 0x0

    :cond_51
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 5116
    const-string v9, "SeedsTOValue and PesticideTOValue and FertilizerTOValue sum  should not exceed 100%"

    if-eqz v15, :cond_52

    :try_start_31
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_52

    if-eqz v16, :cond_52

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_52

    if-eqz v17, :cond_52

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_52

    .line 5118
    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    add-double/2addr v11, v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_13

    add-double/2addr v11, v13

    cmpl-double v13, v11, v6

    if-lez v13, :cond_52

    .line 5120
    :try_start_32
    iput-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->validationFailedMsg:Ljava/lang/String;

    .line 5122
    invoke-direct {v1, v9}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->showToast(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_e

    const/4 v10, 0x0

    :cond_52
    if-eqz v21, :cond_53

    .line 5125
    :try_start_33
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_53

    if-eqz v22, :cond_53

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_53

    .line 5126
    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-static/range {v22 .. v22}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_13

    cmpg-double v15, v11, v13

    if-gtz v15, :cond_53

    .line 5128
    :try_start_34
    const-string v10, "Limagrain Turn Over should be less than Turn Over"

    iput-object v10, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->validationFailedMsg:Ljava/lang/String;

    .line 5130
    const-string v10, "Limagrain Turn Over should be less than Total Turn Over"

    invoke-direct {v1, v10}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->showToast(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_e

    const/4 v10, 0x0

    :cond_53
    if-eqz v18, :cond_54

    .line 5133
    :try_start_35
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_54

    if-eqz v19, :cond_54

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_54

    if-eqz v20, :cond_54

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_54

    .line 5135
    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    add-double/2addr v11, v13

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_13

    add-double/2addr v11, v13

    cmpl-double v13, v11, v6

    if-lez v13, :cond_54

    .line 5137
    :try_start_36
    iput-object v9, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->validationFailedMsg:Ljava/lang/String;

    .line 5139
    invoke-direct {v1, v9}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->showToast(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_e

    const/4 v10, 0x0

    :cond_54
    if-eqz v23, :cond_55

    .line 5147
    :try_start_37
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_55

    .line 5148
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->listFarmerPlots:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_13

    if-eq v6, v7, :cond_55

    .line 5150
    :try_start_38
    const-string v6, "Number of fields count do not match with fields added "

    iput-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->validationFailedMsg:Ljava/lang/String;

    .line 5152
    const-string v6, "Number of fields count do not match with fields added"

    invoke-direct {v1, v6}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->showToast(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_e

    const/4 v10, 0x0

    .line 5156
    :cond_55
    :try_start_39
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->listFarmerPlots:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_56

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->modifiedListOfFarmerPlots:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_10

    if-nez v6, :cond_56

    .line 5158
    :try_start_3a
    iput-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->validationFailedMsg:Ljava/lang/String;

    .line 5160
    invoke-direct {v1, v3}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->showToast(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_f

    const/4 v10, 0x0

    goto :goto_23

    :catch_f
    move-exception v0

    move-object v3, v0

    const/4 v10, 0x0

    goto :goto_22

    :catch_10
    move-exception v0

    move-object v3, v0

    .line 5163
    :goto_22
    :try_start_3b
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_13

    .line 5166
    :cond_56
    :goto_23
    :try_start_3c
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    const-string v7, "isImagereqforAddRetailer"

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getIsImageReq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5b

    .line 5167
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 5168
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getIsRetailerProfilePicCapturd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    .line 5189
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getIsRetailerProfilePicCapturd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_57

    .line 5190
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 5193
    :cond_57
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->images:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_58

    const/4 v6, 0x0

    const/4 v10, 0x0

    goto :goto_25

    :cond_58
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 5196
    :goto_24
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->images:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_5a

    .line 5197
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->images:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/ImageDetails;

    .line 5198
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/ImageDetails;->getEventTypeId()I

    move-result v7
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_12

    const/16 v9, 0x36

    if-ne v7, v9, :cond_59

    const/4 v6, 0x1

    :cond_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_5a
    :goto_25
    if-nez v6, :cond_5b

    .line 5204
    :try_start_3d
    iput-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->validationFailedMsg:Ljava/lang/String;

    .line 5205
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v3, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_11

    const/4 v10, 0x0

    goto :goto_27

    :catch_11
    move-exception v0

    move-object v2, v0

    const/4 v10, 0x0

    goto :goto_26

    :catch_12
    move-exception v0

    move-object v2, v0

    .line 5211
    :goto_26
    :try_start_3e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 5215
    :cond_5b
    :goto_27
    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    const-string v3, "Village"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_13

    const-string v3, "Planter"

    const-string v6, "Farmer"

    if-nez v2, :cond_5c

    :try_start_3f
    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5c

    sget-object v2, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 5217
    :cond_5c
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    sget-object v7, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    const-string v3, "FarmerTotalCultivatedId"

    goto :goto_28

    :cond_5d
    sget-object v6, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    const-string v3, "PlanterTotalCultivatedId"

    goto :goto_28

    :cond_5e
    const-string v3, "VillageTotalCultivatedId"

    :goto_28
    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLondMandatory(Ljava/lang/String;)I

    move-result v2

    .line 5219
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->listFarmerPlots:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x0

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DealerLandDetails;

    .line 5220
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DealerLandDetails;->getAcreages()F

    move-result v7

    add-float/2addr v6, v7

    goto :goto_29

    .line 5224
    :cond_5f
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->hAttributes:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5225
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 5226
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->hAttributes:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5227
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    goto :goto_2a

    :cond_60
    const-string v2, "0"

    :goto_2a
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 5229
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_13

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_61

    .line 5231
    :try_start_40
    const-string v2, "Field acreages should be equal to  total crop acreages(acre)"

    iput-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->validationFailedMsg:Ljava/lang/String;

    .line 5233
    const-string v2, "Field acreages should be equal to total crop acreages(acre)"

    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->showToast(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_e

    const/4 v10, 0x0

    goto :goto_2c

    :catch_13
    move-exception v0

    move-object v2, v0

    .line 5245
    :goto_2b
    const-string v3, "AddRetailer"

    invoke-static {v3, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_61
    :goto_2c
    move v12, v10

    .line 5249
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsConditions:[[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v6, 0x1

    aget-object v2, v2, v6

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 5250
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-lez v2, :cond_63

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_62

    goto :goto_2d

    .line 5256
    :cond_62
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-direct {v1, v2, v6}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2e

    .line 5251
    :cond_63
    :goto_2d
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_stateText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 5252
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_stateText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 5259
    :cond_64
    :goto_2e
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsConditions:[[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v2, v2, v6

    aget-object v2, v2, v6

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 5260
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-lez v2, :cond_66

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_65

    goto :goto_2f

    .line 5266
    :cond_65
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-direct {v1, v2, v7}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_30

    .line 5262
    :cond_66
    :goto_2f
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_districtText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 5269
    :cond_67
    :goto_30
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsConditions:[[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v2, v2, v6

    const/4 v7, 0x1

    aget-object v2, v2, v7

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 5270
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-lez v2, :cond_69

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_68

    goto :goto_31

    .line 5276
    :cond_68
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-direct {v1, v2, v6}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_32

    .line 5271
    :cond_69
    :goto_31
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_mandalsText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 5272
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_mandalsText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 5279
    :cond_6a
    :goto_32
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsConditions:[[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v2, v2, v6

    const/4 v7, 0x1

    aget-object v2, v2, v7

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 5280
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-lez v2, :cond_6c

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_6b

    goto :goto_33

    .line 5286
    :cond_6b
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_34

    .line 5282
    :cond_6c
    :goto_33
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_villageText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_35

    :cond_6d
    :goto_34
    move v6, v12

    :goto_35
    return v6
.end method


# virtual methods
.method public addIndividualGeoDetails(ILjava/lang/String;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 7

    .line 977
    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 978
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 979
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v0, 0x4

    const/4 v2, 0x0

    .line 980
    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 981
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 982
    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    .line 983
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 985
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 986
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v3, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 987
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 989
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x13

    .line 990
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 991
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    const v6, 0x7f11015b

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 992
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 994
    const-string v0, "1"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_0

    .line 995
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

    .line 997
    :cond_0
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    :goto_0
    const-string p2, "operation"

    invoke-virtual {p4, p2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1000
    invoke-virtual {p4, p1}, Landroid/widget/EditText;->setId(I)V

    .line 1001
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const p1, 0x7f080096

    .line 1002
    invoke-virtual {p4, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const p1, 0x7f0800d7

    .line 1003
    invoke-virtual {p4, v2, v2, p1, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1004
    invoke-virtual {p4, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1005
    invoke-virtual {p4, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 p1, 0x11

    .line 1006
    invoke-virtual {p4, p1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1007
    invoke-virtual {p4, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1009
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1010
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1012
    invoke-virtual {p3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1013
    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1015
    invoke-virtual {p5, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILandroid/widget/LinearLayout;IILcom/conceptglobal/pmc/model/DynamicFields;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p8

    const-string v6, "select Column3 from DealerMaster where ContactID = \'"

    .line 1113
    iget v7, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mForOperations:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mForOperations:I

    .line 1114
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1115
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 1116
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x1

    .line 1201
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1116
    invoke-direct {v10, v12, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v9, 0x0

    const/4 v11, 0x4

    .line 1193
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 1117
    invoke-virtual {v10, v9, v11, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1118
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1119
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v10, 0x10

    .line 1120
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1122
    iget v10, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->layoutId:I

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1124
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v15, 0x13

    .line 1125
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 1126
    iget-object v15, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    const v12, 0x7f11015b

    invoke-virtual {v10, v15, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1127
    const-string v12, "1"

    if-eqz v3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_1

    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "true"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1128
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

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1130
    :cond_1
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1132
    :goto_0
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1133
    iget v3, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mForDates:I

    add-int/2addr v3, v8

    iput v3, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mForDates:I

    .line 1144
    const-string v3, "Dropdown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v11, "Multiselect Dropdown"

    const-string v8, "Number"

    const-string v9, "Email"

    const-string v15, "Decimal"

    move-object/from16 p12, v7

    const-string v7, "Datepicker_MMDD"

    move-object/from16 p14, v10

    const-string v10, "Numeric Field"

    move-object/from16 p15, v8

    const-string v8, "Datepicker"

    const/16 v16, 0x0

    move-object/from16 v17, v9

    const-string v9, "textbox"

    if-eqz v3, :cond_2

    .line 1145
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1146
    const-string v3, "operation"

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1147
    invoke-virtual/range {p16 .. p16}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v5, 0x7f100009

    invoke-virtual {v0, v5, v3}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1149
    iget v3, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mForOperations:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setId(I)V

    .line 1150
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v3, 0x7f080096

    .line 1151
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const v3, 0x7f0800d7

    const/4 v5, 0x0

    .line 1152
    invoke-virtual {v0, v5, v5, v3, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1153
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->operationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1154
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v3, 0x11

    .line 1155
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 1156
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setLongClickable(Z)V

    move-object v5, v0

    move-object/from16 v19, v11

    move-object/from16 v0, v16

    move-object v11, v0

    :goto_1
    move-object v12, v11

    :goto_2
    move-object v13, v12

    :goto_3
    move-object v14, v13

    :goto_4
    move-object/from16 v20, v14

    :goto_5
    move-object/from16 v3, v17

    goto/16 :goto_d

    .line 1161
    :cond_2
    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1162
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1163
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1164
    iget v3, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mForOperations:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1165
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f080096

    .line 1168
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/4 v3, 0x0

    .line 1169
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v5, 0x11

    .line 1170
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setGravity(I)V

    const v5, 0x7f0800d7

    .line 1171
    invoke-virtual {v0, v3, v3, v5, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1172
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v20, v0

    move-object/from16 v19, v11

    move-object/from16 v0, v16

    move-object v5, v0

    move-object v11, v5

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    goto :goto_5

    .line 1173
    :cond_3
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v19, v11

    const/4 v11, 0x2

    if-eqz v3, :cond_a

    .line 1174
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1175
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1176
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1177
    iget v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mForDates:I

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setId(I)V

    const v0, 0x7f0800c8

    const/4 v5, 0x0

    .line 1178
    invoke-virtual {v3, v5, v5, v0, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const/16 v0, 0x11

    .line 1179
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setGravity(I)V

    const v0, 0x7f080096

    .line 1180
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1181
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->datesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1182
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1183
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 1184
    invoke-virtual/range {p16 .. p16}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v5, 0x7f100009

    invoke-virtual {v3, v5, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1185
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dialodIdsMap:Ljava/util/HashMap;

    invoke-virtual/range {p16 .. p16}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1186
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dialodIdsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 1187
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dialodIdsMap:Ljava/util/HashMap;

    invoke-virtual/range {p16 .. p16}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1188
    :cond_4
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dialodIdsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_5

    .line 1189
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dialodIdsMap:Ljava/util/HashMap;

    invoke-virtual/range {p16 .. p16}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1190
    :cond_5
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dialodIdsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ne v0, v11, :cond_6

    .line 1191
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dialodIdsMap:Ljava/util/HashMap;

    invoke-virtual/range {p16 .. p16}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1192
    :cond_6
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dialodIdsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_7

    .line 1193
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dialodIdsMap:Ljava/util/HashMap;

    invoke-virtual/range {p16 .. p16}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1194
    :cond_7
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dialodIdsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_8

    .line 1195
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->dialodIdsMap:Ljava/util/HashMap;

    invoke-virtual/range {p16 .. p16}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_6
    const v0, 0x7f100006

    .line 1201
    invoke-virtual {v3, v0, v13}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f100005

    .line 1202
    invoke-virtual {v3, v0, v13}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    if-lez p11, :cond_9

    const v0, 0x7f100006

    .line 1204
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    :cond_9
    if-lez p10, :cond_b

    const v0, 0x7f100005

    .line 1206
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    goto :goto_7

    .line 1207
    :cond_a
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1208
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1209
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1210
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1211
    iget v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mForDates:I

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setId(I)V

    const/16 v0, 0x11

    .line 1212
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setGravity(I)V

    const v0, 0x7f0800c8

    const/4 v5, 0x0

    .line 1213
    invoke-virtual {v3, v5, v5, v0, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v0, 0x7f080096

    .line 1214
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1215
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->datesListenerYearless:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1216
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1217
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setLongClickable(Z)V

    :cond_b
    :goto_7
    move-object v11, v3

    move-object/from16 v0, v16

    move-object v5, v0

    move-object v12, v5

    goto/16 :goto_2

    .line 1221
    :cond_c
    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v13, 0x5

    const-string v14, "b"

    if-eqz v3, :cond_d

    .line 1222
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1223
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1224
    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 1225
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 1226
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 1227
    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 1228
    new-array v5, v3, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v6, 0x6

    invoke-direct {v3, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1229
    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v5, v16

    move-object v11, v5

    goto/16 :goto_1

    .line 1233
    :cond_d
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_11

    .line 1234
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    .line 1235
    invoke-virtual {v3, v11}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1236
    invoke-virtual {v3, v14}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v14, 0x7f080096

    .line 1237
    invoke-virtual {v3, v14}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v14, 0x11

    .line 1238
    invoke-virtual {v3, v14}, Landroid/widget/EditText;->setGravity(I)V

    if-lez v5, :cond_e

    .line 1241
    new-array v14, v11, [Landroid/text/InputFilter;

    new-instance v13, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v13, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v13, v14, v5

    invoke-virtual {v3, v14}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_8

    :cond_e
    const/4 v5, 0x0

    .line 1243
    new-array v13, v11, [Landroid/text/InputFilter;

    new-instance v11, Landroid/text/InputFilter$LengthFilter;

    const/16 v14, 0x64

    invoke-direct {v11, v14}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v11, v13, v5

    invoke-virtual {v3, v13}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_8
    const/4 v5, 0x5

    .line 1245
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1246
    const-string v5, "Retailer Shop Name"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1249
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1250
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1251
    invoke-direct {v1, v3}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setEditableFalse(Landroid/widget/EditText;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 1253
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1266
    :cond_f
    :goto_9
    invoke-virtual/range {p16 .. p16}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "PANNo"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1267
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->gstNumber:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 1268
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->gstNumber:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    move-object v12, v3

    move-object/from16 v0, v16

    move-object v5, v0

    move-object v11, v5

    move-object v13, v11

    goto/16 :goto_3

    .line 1274
    :cond_11
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1275
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1276
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1277
    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v6, 0x7f080096

    .line 1278
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v6, 0x11

    .line 1279
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setGravity(I)V

    const/16 v6, 0x2002

    .line 1280
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setInputType(I)V

    if-lez v5, :cond_12

    .line 1282
    new-array v6, v3, [Landroid/text/InputFilter;

    new-instance v12, Lcom/conceptglobal/pmc/fragments/AddRetailer$DecimalDigitsInputFilter;

    invoke-direct {v12, v1, v5, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;II)V

    const/4 v5, 0x0

    aput-object v12, v6, v5

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_a

    :cond_12
    const/4 v5, 0x0

    .line 1285
    new-array v6, v3, [Landroid/text/InputFilter;

    new-instance v3, Lcom/conceptglobal/pmc/fragments/AddRetailer$DecimalDigitsInputFilter;

    const/16 v12, 0x14

    invoke-direct {v3, v1, v12, v11}, Lcom/conceptglobal/pmc/fragments/AddRetailer$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;II)V

    aput-object v3, v6, v5

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_a
    move-object v13, v0

    move-object/from16 v0, v16

    move-object v5, v0

    move-object v11, v5

    move-object v12, v11

    move-object v14, v12

    goto/16 :goto_4

    .line 1291
    :cond_13
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 v3, v17

    if-eqz v0, :cond_14

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1292
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 1293
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1294
    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 1295
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 1296
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setGravity(I)V

    const/16 v5, 0x20

    .line 1297
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    move-object v14, v0

    move-object/from16 v0, v16

    move-object v5, v0

    move-object v11, v5

    move-object v12, v11

    move-object v13, v12

    move-object/from16 v20, v13

    goto/16 :goto_d

    .line 1301
    :cond_14
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 v6, p15

    if-eqz v0, :cond_17

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1302
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x1

    .line 1303
    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1304
    const-string v12, "n"

    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v12, 0x7f080096

    .line 1305
    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v12, 0x11

    .line 1306
    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setGravity(I)V

    .line 1307
    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 1308
    invoke-virtual/range {p16 .. p16}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "MobileNumber"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 1309
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mobile:Ljava/lang/String;

    if-eqz v11, :cond_15

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_15

    .line 1310
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    if-lez v5, :cond_16

    const/4 v11, 0x1

    .line 1314
    new-array v12, v11, [Landroid/text/InputFilter;

    new-instance v13, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v13, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v13, v12, v5

    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_b

    :cond_16
    const/4 v5, 0x0

    const/4 v11, 0x1

    .line 1316
    new-array v12, v11, [Landroid/text/InputFilter;

    new-instance v11, Landroid/text/InputFilter$LengthFilter;

    const/16 v13, 0x1e

    invoke-direct {v11, v13}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v11, v12, v5

    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_b
    const/4 v5, 0x5

    .line 1318
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object v12, v0

    move-object/from16 p15, v6

    move-object/from16 v0, v16

    move-object v5, v0

    move-object v11, v5

    move-object v13, v11

    goto :goto_c

    :cond_17
    move-object/from16 p15, v6

    move-object/from16 v0, v16

    move-object v5, v0

    move-object v11, v5

    move-object v12, v11

    move-object v13, v12

    :goto_c
    move-object v14, v13

    move-object/from16 v20, v14

    .line 1323
    :goto_d
    new-instance v6, Landroid/widget/EditText;

    invoke-direct {v6, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1324
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v16, v14

    const v14, 0x3f19999a    # 0.6f

    move-object/from16 v17, v3

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1325
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v18, v13

    const v13, 0x3ecccccd    # 0.4f

    invoke-direct {v14, v3, v3, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1326
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, 0x0

    invoke-direct {v3, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v13, p14

    .line 1327
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1328
    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1329
    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "DropDown"

    if-eqz v1, :cond_18

    .line 1330
    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_e
    move-object/from16 p1, v6

    move-object/from16 p3, v14

    move-object/from16 v1, v18

    :goto_f
    move-object/from16 v14, p12

    move-object/from16 v6, p15

    goto/16 :goto_12

    .line 1331
    :cond_18
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1332
    invoke-virtual {v5, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    .line 1333
    :cond_19
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1334
    invoke-virtual {v11, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    .line 1335
    :cond_1a
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1336
    invoke-virtual {v11, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    .line 1337
    :cond_1b
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1c

    .line 1338
    invoke-virtual {v12, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    .line 1339
    :cond_1c
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    move-object/from16 v1, v18

    .line 1340
    invoke-virtual {v1, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 p1, v6

    :goto_10
    move-object/from16 p3, v14

    goto :goto_f

    :cond_1d
    move-object/from16 v1, v18

    .line 1341
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    move-object/from16 p1, v6

    if-eqz v18, :cond_1f

    move-object/from16 v6, v17

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1e

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    .line 1342
    invoke-virtual {v6, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_10

    :cond_1e
    move-object/from16 v17, v6

    :cond_1f
    move-object/from16 v6, v16

    .line 1343
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_20

    move-object/from16 v16, v6

    move-object/from16 v6, p15

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_21

    .line 1344
    invoke-virtual {v12, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_11

    :cond_20
    move-object/from16 v16, v6

    move-object/from16 v6, p15

    :cond_21
    :goto_11
    move-object/from16 p3, v14

    move-object/from16 v14, p12

    .line 1346
    :goto_12
    invoke-virtual {v14, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1347
    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_22

    .line 1348
    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_13
    move-object/from16 v18, v1

    move-object/from16 p15, v6

    move-object/from16 v1, v16

    :goto_14
    move-object/from16 v6, p13

    goto/16 :goto_17

    .line 1349
    :cond_22
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_23

    .line 1350
    invoke-virtual {v14, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_13

    .line 1351
    :cond_23
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_24

    .line 1352
    invoke-virtual {v14, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_13

    .line 1353
    :cond_24
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_25

    .line 1354
    invoke-virtual {v14, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_13

    .line 1355
    :cond_25
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_26

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_26

    .line 1356
    invoke-virtual {v14, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_13

    .line 1357
    :cond_26
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_27

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_27

    .line 1358
    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_13

    .line 1359
    :cond_27
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_29

    move-object/from16 v18, v1

    move-object/from16 v1, v17

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_28

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    .line 1360
    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_16

    :cond_28
    move-object/from16 v17, v1

    goto :goto_15

    :cond_29
    move-object/from16 v18, v1

    :goto_15
    move-object/from16 v1, v16

    .line 1361
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2a

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2a

    .line 1362
    invoke-virtual {v14, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2a
    :goto_16
    move-object/from16 p15, v6

    goto :goto_14

    .line 1364
    :goto_17
    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v6, 0x1

    .line 1365
    invoke-virtual {v14, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_2c

    move-object/from16 v16, v1

    invoke-virtual {v14, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/EditText;

    if-eqz v1, :cond_2b

    .line 1366
    invoke-virtual/range {p16 .. p16}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsReadOnly()I

    move-result v1

    if-ne v1, v6, :cond_2b

    .line 1367
    invoke-virtual {v14, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object/from16 v6, p0

    invoke-direct {v6, v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setEditableFalse(Landroid/widget/EditText;)V

    goto :goto_18

    :cond_2b
    move-object/from16 v6, p0

    goto :goto_18

    :cond_2c
    move-object/from16 v6, p0

    move-object/from16 v16, v1

    .line 1371
    :goto_18
    iget-object v1, v6, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mattributesnamesArr:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1372
    iget-object v1, v6, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArrIds:Ljava/util/ArrayList;

    move-object/from16 v13, p1

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1374
    iget-object v1, v6, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    .line 1375
    :cond_2d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1376
    iget-object v0, v6, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    .line 1377
    :cond_2e
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1378
    iget-object v0, v6, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    .line 1379
    :cond_2f
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1380
    iget-object v0, v6, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    .line 1381
    :cond_30
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_31

    .line 1382
    iget-object v0, v6, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 1383
    :cond_31
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1384
    iget-object v0, v6, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 1385
    :cond_32
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    move-object/from16 v1, v17

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1386
    iget-object v0, v6, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 1387
    :cond_33
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    move-object/from16 v1, p15

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1388
    iget-object v0, v6, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_34
    move-object/from16 v1, v19

    .line 1389
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    .line 1390
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1391
    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1392
    iget-object v0, v6, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1394
    :cond_35
    :goto_19
    iget v0, v6, Lcom/conceptglobal/pmc/fragments/AddRetailer;->layoutId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v6, Lcom/conceptglobal/pmc/fragments/AddRetailer;->layoutId:I

    return-void
.end method

.method public checkFarmerInTerritory(Ljava/lang/String;)V
    .locals 6

    .line 5655
    const-string v0, "No Retailer data found."

    :try_start_0
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/Encryption;->encryptRemovenewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5658
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->typeOfCustomer:I

    invoke-virtual {v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->isMobileExistsForRetailer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 5659
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryRetailerQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTerritoryDealerDetails(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;

    move-result-object v2

    .line 5660
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;->getContactId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5661
    invoke-direct {p0, v2}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->showDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 5663
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryRetailerQry1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTerritoryDealerDetails(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;

    move-result-object p1

    .line 5664
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->showDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;)V

    goto :goto_0

    .line 5666
    :cond_1
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->showNoDataAvailableDialog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5668
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5669
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->showNoDataAvailableDialog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 472
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

.method public filterfromlistCrops(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 5500
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->listDealerCrops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DealerCropMapping;

    .line 5501
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DealerCropMapping;->getCropId()I

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DealerCropMapping;->getContactId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5502
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DealerCropMapping;->getCropSales()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const v4, 0xc0de

    const/4 v5, 0x0

    if-ne v0, v4, :cond_2

    .line 3448
    :try_start_0
    invoke-static/range {p1 .. p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3452
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object v2

    .line 3453
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->getFormatName()Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3456
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3457
    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->processScannedData(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 3459
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Scan Cancelled"

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3460
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 3464
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "No scan data received!"

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3465
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    .line 3469
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3470
    const-string v0, " Please enter manually"

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 3473
    :cond_2
    invoke-super/range {p0 .. p3}, Lcom/conceptglobal/pmc/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v4, -0x1

    const/4 v6, 0x1

    if-eq v0, v6, :cond_8

    const/4 v7, 0x2

    if-eq v0, v7, :cond_4

    const/16 v3, 0x65

    if-eq v0, v3, :cond_3

    goto/16 :goto_6

    :cond_3
    if-ne v2, v4, :cond_b

    .line 3481
    const-string v0, "AddRetailer"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Navigation"

    const-string v4, "Image Capture End"

    invoke-static {v3, v4, v0, v2}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3482
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->imagelist:Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3483
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setAdapter()V

    goto/16 :goto_6

    :cond_4
    if-eqz v2, :cond_b

    if-eqz v3, :cond_b

    .line 3504
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "isfrom"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 3505
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3506
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 3508
    :try_start_1
    aget-object v0, v4, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 3509
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    .line 3513
    :cond_5
    :goto_0
    const-string v0, "FarmerId"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3514
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    if-eqz v4, :cond_6

    .line 3517
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3518
    aget-object v12, v4, v5

    .line 3519
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/conceptglobal/pmc/common/Queries;->getListOfAttributesUpdate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3520
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 3521
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 3523
    :try_start_3
    iget v10, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->segmentID:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v11, 0x0

    const/4 v0, 0x1

    move-object v7, v3

    move-object v8, v12

    move-object/from16 v17, v12

    move-wide v12, v14

    move-wide/from16 v18, v14

    move v14, v0

    :try_start_4
    invoke-static/range {v7 .. v14}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertCustomerAttributeDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJI)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v17, v12

    move-wide/from16 v18, v14

    .line 3525
    :goto_2
    :try_start_5
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tag:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_3
    move-object/from16 v12, v17

    move-wide/from16 v14, v18

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    move-wide/from16 v18, v14

    .line 3530
    :goto_4
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tag:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_6
    move-wide/from16 v18, v14

    :goto_5
    const/high16 v0, 0x20000

    .line 3533
    const-string v7, "ASSIGNMENTID"

    const-string v8, "TRANSID"

    const-string v9, "SEGMENTID"

    const-string v10, "ACTIVITYNAME"

    const-string v11, "ACTIVITYID"

    const/high16 v12, 0x4000000

    if-ne v2, v6, :cond_7

    .line 3534
    new-instance v2, Landroid/content/Intent;

    const-class v13, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-direct {v2, v1, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3535
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3536
    aget-object v3, v4, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3537
    aget-object v3, v4, v6

    invoke-virtual {v2, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3538
    iget v3, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->segmentID:I

    invoke-virtual {v2, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-wide/from16 v13, v18

    .line 3540
    invoke-virtual {v2, v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3541
    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3542
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3543
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->startActivity(Landroid/content/Intent;)V

    .line 3544
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->finish()V

    goto :goto_6

    :cond_7
    move-wide/from16 v13, v18

    .line 3546
    new-instance v2, Landroid/content/Intent;

    const-class v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-direct {v2, v1, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3547
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v15

    invoke-virtual {v15}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3548
    aget-object v3, v4, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3549
    aget-object v3, v4, v6

    invoke-virtual {v2, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3550
    iget v3, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->segmentID:I

    invoke-virtual {v2, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3551
    const-string v3, "ISSELFASSIGN"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3552
    invoke-virtual {v2, v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3553
    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3554
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3555
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->startActivity(Landroid/content/Intent;)V

    .line 3556
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->finish()V

    goto :goto_6

    :cond_8
    if-eq v2, v4, :cond_a

    if-eqz v2, :cond_9

    goto :goto_6

    .line 3494
    :cond_9
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string v2, "GPSNotTurnedOn"

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_6

    .line 3489
    :cond_a
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvLatitude:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvLongitude:Landroid/widget/TextView;

    invoke-direct {v1, v0, v2}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->fetchLocation(Landroid/widget/TextView;Landroid/widget/TextView;)V

    :cond_b
    :goto_6
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 3151
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, ""

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_3

    .line 3246
    :sswitch_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    const-wide/16 v0, 0x65

    .line 3247
    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->captureImage(J)V

    goto/16 :goto_3

    .line 3249
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getApplication()Landroid/app/Application;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_maxImagesToast()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 3224
    :sswitch_1
    iput v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->status:I

    .line 3226
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->validation()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 3228
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3229
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->images:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3232
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tag:Ljava/lang/String;

    invoke-static {v0, p1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 3234
    :cond_1
    new-instance p1, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;

    invoke-direct {p1, p0, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;Landroid/content/Context;)V

    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_3

    .line 3236
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->validationFailedMsg:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 3237
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->validationFailedMsg:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 3238
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->validationFailedMsg:Ljava/lang/String;

    goto/16 :goto_3

    .line 3240
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_validationToast()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 3156
    :sswitch_2
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v4, "GeoEditStatus"

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    .line 3157
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/common/Queries;->getGeoEditStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v2

    const/4 p1, 0x2

    if-ne v2, p1, :cond_4

    .line 3159
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_geo_desable_Text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->showAlert(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 3163
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3166
    :cond_4
    sget-object p1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    const-string v1, "Retailer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v4, "Distributor"

    if-eqz p1, :cond_5

    .line 3167
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_geo_desable_conformation_Text_Retailer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3168
    :cond_5
    sget-object p1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3169
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_geo_desable_conformation_Text_Distributor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_1
    if-ne v2, v3, :cond_8

    .line 3171
    sget-object p1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 3172
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_geo_desable_conformation_Text_Retailer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 3173
    :cond_7
    sget-object p1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 3174
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_geo_desable_conformation_Text_Distributor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3176
    :cond_8
    :goto_2
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->showGeoEditAlert(Ljava/lang/String;)V

    goto :goto_3

    .line 3221
    :sswitch_3
    new-instance p1, Lcom/conceptglobal/pmc/model/DealerLandDetails;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/model/DealerLandDetails;-><init>()V

    const-string v0, "new"

    invoke-direct {p0, p1, v0, v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->showAddLandDialog(Lcom/conceptglobal/pmc/model/DealerLandDetails;Ljava/lang/String;I)V

    goto :goto_3

    .line 3255
    :sswitch_4
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.CAMERA"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_9

    .line 3257
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x64

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 3261
    :cond_9
    new-instance p1, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-direct {p1, p0}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    .line 3262
    const-string v0, "QR_CODE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->setDesiredBarcodeFormats([Ljava/lang/String;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 3263
    const-string v0, "Scan a Aadharcard QR Code"

    invoke-virtual {p1, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->setPrompt(Ljava/lang/String;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 3264
    invoke-virtual {p1, v2}, Lcom/google/zxing/integration/android/IntentIntegrator;->setCameraId(I)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 3265
    invoke-virtual {p1, v3}, Lcom/google/zxing/integration/android/IntentIntegrator;->setBeepEnabled(Z)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 3266
    invoke-virtual {p1, v3}, Lcom/google/zxing/integration/android/IntentIntegrator;->setBarcodeImageEnabled(Z)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 3267
    invoke-virtual {p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090080 -> :sswitch_4
        0x7f090091 -> :sswitch_3
        0x7f0900a4 -> :sswitch_2
        0x7f0900af -> :sswitch_1
        0x7f090245 -> :sswitch_0
    .end sparse-switch
.end method

.method public onClose()V
    .locals 4

    .line 3434
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateRetailerOTPVerificationQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3437
    const-string v1, "AddRetailer"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3439
    :goto_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->navigateToDraftList()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 339
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 344
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 345
    const-string v0, "farmerType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    .line 346
    const-string v0, "isFraom"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isFraom:Ljava/lang/String;

    const v0, 0x7f0c0051

    .line 347
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setContentView(I)V

    .line 348
    iput-object p0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    .line 349
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 350
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 351
    new-instance v0, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 352
    const-string v0, "AddRetailer"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "onCreate()"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v0, "farmerUpdate"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerUpdate:Ljava/lang/String;

    .line 358
    :cond_0
    const-string v0, "FromSelfAssignment"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isFromSelfAssignment:Z

    .line 361
    :cond_1
    const-string v0, "isFromTestimonal"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isFromTestimonal:Z

    .line 364
    :cond_2
    const-string v0, "isFromFeedBack"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 365
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isFromFeedBack:Z

    .line 367
    :cond_3
    const-string v0, "isFromSurvey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 368
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isFromSurvey:Z

    .line 370
    :cond_4
    const-string v0, "isLocationUpdate"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 371
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isLocationUpdate:Z

    .line 373
    :cond_5
    sget-object p1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    const-string v0, "Retailer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "RetailerGeoDetails"

    const-string v2, "DealerMaster"

    const/4 v3, 0x2

    const-string v4, "("

    const-string v5, ")"

    if-eqz p1, :cond_9

    .line 374
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    const-string v6, "Add Retailer("

    if-eq p1, v3, :cond_7

    .line 375
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_retailerDetailsText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    .line 376
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_0

    .line 378
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_retailerDetailsText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 380
    :cond_7
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_retailerDetailsText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    .line 381
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 383
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_retailerDetailsText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 386
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Lcom/conceptglobal/pmc/common/Queries;->getGeoDetailsCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getGeoDetailsConditions(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsConditions:[[Ljava/lang/String;

    .line 387
    iput v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->typeOfCustomer:I

    goto/16 :goto_2

    .line 389
    :cond_9
    sget-object p1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    const-string v6, "Distributor"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    sget-object p1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    const-string v6, "Dealer"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 390
    :cond_a
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    const-string v6, "Add Distributor("

    if-eq p1, v3, :cond_c

    .line 391
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addDistributorText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    .line 392
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_1

    .line 394
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addDistributorText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_1

    .line 396
    :cond_c
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addDistributorText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_d

    .line 397
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_1

    .line 399
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addDistributorText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 402
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/conceptglobal/pmc/common/Queries;->getGeoDetailsCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getGeoDetailsConditions(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsConditions:[[Ljava/lang/String;

    const/4 p1, 0x3

    .line 403
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->typeOfCustomer:I

    .line 406
    :cond_e
    :goto_2
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->initialization()V

    .line 407
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setBottomViewPadding()V

    .line 408
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->settingTabs()V

    .line 409
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->gettingData()V

    .line 410
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->enableGeoDetailsLayout()V

    .line 411
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->createOperationAttributes()V

    .line 412
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->bindOperations()V

    .line 414
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tabHost:Landroid/widget/TabHost;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/AddRetailer$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$1;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 438
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->gridView:Landroid/widget/GridView;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/AddRetailer$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$2;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f0901de

    .line 444
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    .line 445
    new-instance v1, Lcom/conceptglobal/pmc/fragments/AddRetailer$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$3;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    invoke-virtual {p1, v1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->message:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "send"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 458
    sget-object p1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->farmerType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 459
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->validateMobileNumber()V

    .line 462
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/Queries;->getRetailerStatusQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->statusFieldVal:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 464
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_3
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

    .line 2925
    :cond_0
    new-instance p1, Lcom/conceptglobal/pmc/fragments/AddRetailer$17;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mDateSetListener_Yearless:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mYear:I

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mMonth:I

    iget v6, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mDay:I

    move-object v0, p1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/conceptglobal/pmc/fragments/AddRetailer$17;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 2931
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectDayMonthDPTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2933
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "android"

    const-string v3, "year"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2935
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 2937
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-object p1

    .line 2897
    :cond_2
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mYear:I

    iget v6, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mMonth:I

    iget v7, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mDay:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 2899
    :try_start_0
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMinDate()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->defaultMinDate:J

    .line 2900
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMaxDate()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->defaultMaxDate:J

    .line 2901
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 2902
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->datePos:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v4, -0x1

    if-eqz v3, :cond_3

    const v5, 0x7f100006

    .line 2904
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

    .line 2905
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 2906
    invoke-virtual {v6, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2907
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    neg-int v5, v5

    add-int/2addr v5, v1

    invoke-virtual {v6, v0, v5}, Ljava/util/Calendar;->add(II)V

    .line 2908
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 2909
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/widget/DatePicker;->setMinDate(J)V

    :cond_3
    if-eqz v3, :cond_4

    const v0, 0x7f100005

    .line 2912
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

    .line 2913
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 2914
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2916
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v4, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 2917
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2918
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

    .line 3138
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09024c

    .line 3139
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->btn_Draft:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3141
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3144
    :cond_0
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCropListItemClick(I)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 5477
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->message:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5478
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onDestroy()V

    .line 5479
    const-string v0, "AddRetailer"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "onDestroy"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLandListItemClick(I)V
    .locals 2

    .line 1865
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->listFarmerPlots:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1866
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->listFarmerPlots:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DealerLandDetails;

    const-string v1, "update"

    invoke-direct {p0, v0, v1, p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->showAddLandDialog(Lcom/conceptglobal/pmc/model/DealerLandDetails;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 3085
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f09024c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3095
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->status:I

    .line 3096
    new-instance v1, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;

    invoke-direct {v1, p0, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;Landroid/content/Context;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3099
    :goto_0
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 3087
    :cond_1
    iget p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isFromTransaction:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 3088
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->showGoBackDialog()V

    goto :goto_1

    .line 3090
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->finish()V

    :goto_1
    return v0
.end method

.method public onProvideAssistData(Landroid/os/Bundle;)V
    .locals 0

    .line 583
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onProvideAssistData(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 5728
    const-string p2, "onRequestPermissionResult"

    const-string v0, "AddRetailer"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 5730
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 5733
    const-string p1, "User interaction was cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5735
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 5737
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvLatitude:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tvLongitude:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->fetchLocation(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0

    .line 5740
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResendOTP()V
    .locals 3

    .line 3411
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mOTP:Ljava/lang/String;

    .line 3412
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3413
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    const-string v1, "Verification code has been sent to your mobile number."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3414
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->callOTPAsync()V

    goto :goto_0

    .line 3416
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->showOTPVerifyDialog()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 5468
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    .line 5469
    const-string v0, "AddRetailer"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "onResume()"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5470
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setAdapter()V

    .line 5471
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5472
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_0
    return-void
.end method

.method public onSubmitOTP(Ljava/lang/String;)V
    .locals 4

    .line 3392
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mOTP:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3394
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateRetailerOTPVerificationQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3398
    const-string v1, "AddRetailer"

    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3400
    :goto_0
    const-string p1, "Verification is done successfully."

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 3401
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 3402
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->navigateToDraftList()V

    goto :goto_1

    .line 3404
    :cond_0
    const-string p1, "Invalid Verification Code. Please try again!"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 3405
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    .line 862
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 863
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mListPopupOne:Lcom/conceptglobal/pmc/common/ListPopupOne;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b

    .line 866
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_b

    .line 867
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const v0, 0x7f1101b9

    const/4 v2, 0x3

    const-string v3, " "

    if-eqz p2, :cond_9

    const/4 v4, 0x1

    if-eq p2, v4, :cond_7

    const/4 v5, 0x2

    if-eq p2, v5, :cond_5

    if-eq p2, v2, :cond_3

    const p1, 0x7f09008f

    if-eq p2, p1, :cond_2

    goto/16 :goto_4

    .line 942
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->companyOrCropTab:Ljava/lang/String;

    const-string p2, "Crops"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 943
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->showAddCropSalesDialog(Ljava/lang/String;FI)V

    goto/16 :goto_4

    .line 924
    :cond_3
    const-string p2, "VillageMaster"

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tableName:Ljava/lang/String;

    .line 925
    const-string p2, "mandalId"

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->columnName:Ljava/lang/String;

    .line 927
    :try_start_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tableName:Ljava/lang/String;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->columnName:Ljava/lang/String;

    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->gettingCountofMasters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 929
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tag:Ljava/lang/String;

    invoke-static {v4, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_0
    if-lez p2, :cond_4

    .line 932
    new-instance p2, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    .line 933
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 932
    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->gettinVillages(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    .line 933
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/TextView;

    move-object v6, p2

    move-object v10, p1

    invoke-direct/range {v6 .. v11}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 934
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 935
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 936
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_4

    .line 938
    :cond_4
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_thereIsNoText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_villageText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 905
    :cond_5
    const-string p2, "MandalMaster"

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tableName:Ljava/lang/String;

    .line 906
    const-string p2, "Districtid"

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->columnName:Ljava/lang/String;

    .line 908
    :try_start_1
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tableName:Ljava/lang/String;

    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->columnName:Ljava/lang/String;

    iget-object v9, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

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

    .line 910
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tag:Ljava/lang/String;

    invoke-static {v6, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_1
    if-lez p2, :cond_6

    .line 913
    new-instance p2, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    .line 914
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 913
    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->gettingMandals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    .line 914
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/TextView;

    move-object v6, p2

    move-object v10, p1

    invoke-direct/range {v6 .. v11}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 915
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 916
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 917
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_4

    .line 919
    :cond_6
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_thereIsNoText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_mandalsText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 886
    :cond_7
    const-string p2, "DistrictMaster"

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tableName:Ljava/lang/String;

    .line 887
    const-string p2, "StateId "

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->columnName:Ljava/lang/String;

    .line 889
    :try_start_2
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tableName:Ljava/lang/String;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->columnName:Ljava/lang/String;

    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

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

    .line 891
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tag:Ljava/lang/String;

    invoke-static {v5, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_2
    if-lez p2, :cond_8

    .line 894
    new-instance p2, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    .line 895
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 894
    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/common/Queries;->gettingDistricts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    .line 895
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/TextView;

    move-object v5, p2

    move-object v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 896
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 897
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 898
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_4

    .line 900
    :cond_8
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_thereIsNoText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_districtText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 870
    :cond_9
    :try_start_3
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->gettingStateCount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->masterTablecount:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 872
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->tag:Ljava/lang/String;

    invoke-static {v4, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 874
    :goto_3
    iget p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->masterTablecount:I

    if-lez p2, :cond_a

    .line 875
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 876
    new-instance p2, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_stateText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->gettingStates()Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/TextView;

    move-object v4, p2

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 877
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 878
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 879
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_4

    .line 881
    :cond_a
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_thereIsNoText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_stateText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_b
    :goto_4
    return v1
.end method

.method public onVerifyLater()V
    .locals 4

    .line 3423
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->contactID:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateRetailerOTPVerificationQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3426
    const-string v1, "AddRetailer"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3428
    :goto_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->navigateToDraftList()V

    return-void
.end method

.method protected processScannedData(Ljava/lang/String;)V
    .locals 9

    .line 5518
    const-string v0, "S/O"

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 5519
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->aadharRawData:Ljava/lang/String;

    goto :goto_0

    .line 5521
    :cond_0
    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->aadharRawData:Ljava/lang/String;

    .line 5524
    :goto_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 5526
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 5528
    const-string v3, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 5529
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 5532
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    :goto_1
    const/4 v3, 0x1

    if-eq p1, v3, :cond_9

    if-nez p1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_8

    .line 5535
    const-string p1, "PrintLetterBarcodeData"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 5538
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    .line 5539
    :goto_2
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 5540
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    .line 5541
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5544
    :cond_2
    const-string v3, "uid"

    const/4 v5, 0x0

    invoke-interface {v1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5545
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "RetailerAdharNumber"

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getItemValueFromConfigurableLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 5546
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 5547
    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5549
    :cond_3
    const-string v3, "name"

    invoke-interface {v1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5550
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "RetailerAdharName"

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getItemValueFromConfigurableLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 5551
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 5552
    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5556
    :cond_4
    const-string v3, "dob"

    invoke-interface {v1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5557
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "RetailerAdharDOB"

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getItemValueFromConfigurableLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 5558
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 5559
    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5561
    :cond_5
    const-string v3, "co"

    invoke-interface {v1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 5562
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5563
    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5565
    :cond_6
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "RetailerAdharFather"

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getItemValueFromConfigurableLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 5566
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 5567
    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5587
    :cond_7
    const-string v3, "pc"

    invoke-interface {v1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5588
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    const-string v7, "RetailerAdharPincode"

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getItemValueFromConfigurableLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 5589
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 5590
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->mEntryArr:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5596
    :cond_8
    :goto_3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 5603
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception p1

    .line 5601
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception p1

    .line 5599
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_9
    :goto_4
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 588
    invoke-super/range {p0 .. p6}, Lcom/conceptglobal/pmc/BaseActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0

    .line 1080
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method
