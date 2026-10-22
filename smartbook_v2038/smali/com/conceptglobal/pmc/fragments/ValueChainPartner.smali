.class public Lcom/conceptglobal/pmc/fragments/ValueChainPartner;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "ValueChainPartner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/conceptglobal/pmc/interfaces/OnCropItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DecimalDigitsInputFilter;,
        Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;,
        Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;
    }
.end annotation


# static fields
.field private static final DATEDIALOGID:I = 0x0

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

.field private etRemarks:Landroid/widget/EditText;

.field private ethybrid:Landroid/widget/EditText;

.field private farmerID:Ljava/lang/String;

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

.field public isFromSurvey:Z

.field public isFromTestimonal:Z

.field private isFromTransaction:I

.field private isImageDeleted:Z

.field isNotRequiredFAB:J

.field private isRetalerAFarmer:J

.field final isextrasales:I

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

.field private mListPopupOne:Lcom/conceptglobal/pmc/common/ListPopupOne;

.field mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

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

.field operationListener:Landroid/view/View$OnClickListener;

.field operationListenerMultiSelect:Landroid/view/View$OnClickListener;

.field pdaId:I

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

.field private segmentID:I

.field private final stateChanged:Landroid/text/TextWatcher;

.field private status:I

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

    .line 152
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mandalIds:Ljava/util/List;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->villageIds:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 139
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 141
    const-string v0, "AddRetailer"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->hAttributes:Ljava/util/HashMap;

    .line 169
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    .line 170
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArryForOthers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 182
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->datePos:I

    const-wide/16 v2, -0x1

    .line 184
    iput-wide v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->defaultMinDate:J

    .line 185
    iput-wide v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->defaultMaxDate:J

    .line 186
    const-string v2, ""

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mFiledStr:Ljava/lang/String;

    const/4 v3, -0x1

    .line 187
    iput v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mForOperations:I

    iput v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mForDates:I

    .line 189
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->layoutId:I

    .line 191
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->_clickId:I

    .line 192
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->brandsList:Ljava/util/List;

    .line 194
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    .line 212
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_stateText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_districtText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_mandalsText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_villageText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attribName:[Ljava/lang/String;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    .line 262
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    const-string v1, "isExtraSalesinDCM"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLondMandatory(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isextrasales:I

    const-wide/16 v0, 0x0

    .line 263
    iput-wide v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isNotRequiredFAB:J

    .line 265
    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->aadharRawData:Ljava/lang/String;

    .line 266
    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->GPSTImeStamp:Ljava/lang/String;

    .line 267
    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->validationFailedMsg:Ljava/lang/String;

    .line 493
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$4;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$4;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->stateChanged:Landroid/text/TextWatcher;

    .line 516
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$5;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$5;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->districtChanged:Landroid/text/TextWatcher;

    .line 536
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$6;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$6;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mandalChanged:Landroid/text/TextWatcher;

    .line 1245
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$7;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$7;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    .line 1421
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$8;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$8;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->operationListener:Landroid/view/View$OnClickListener;

    .line 2507
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$12;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$12;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->datesListener:Landroid/view/View$OnClickListener;

    .line 2515
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$13;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$13;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->datesListenerYearless:Landroid/view/View$OnClickListener;

    .line 2626
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$15;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$15;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 2647
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$16;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$16;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mDateSetListener_Yearless:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 4610
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$22;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$22;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->message:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/content/Context;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/TabHost;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/TextView;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvvillageid:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/EditText;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->edtVillage:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/util/ArrayList;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/util/ArrayList;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArrIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/TextView;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvCropId:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/lang/String;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/EditText;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etCropSales:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/lang/String;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/EditText;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etCropDos:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/EditText;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etCropName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setListviewForSales()V

    return-void
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/util/List;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->listDealerCrops:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;I)I
    .locals 0

    .line 139
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->datePos:I

    return p1
.end method

.method static synthetic access$2202(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;I)I
    .locals 0

    .line 139
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mYear:I

    return p1
.end method

.method static synthetic access$2302(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;I)I
    .locals 0

    .line 139
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mMonth:I

    return p1
.end method

.method static synthetic access$2402(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;I)I
    .locals 0

    .line 139
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mDay:I

    return p1
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->updateDisplay()V

    return-void
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->updateDisplay_yearless()V

    return-void
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->dataInsertion()V

    return-void
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->dataInsertMultiAttributeValues()V

    return-void
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)I
    .locals 0

    .line 139
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->segmentID:I

    return p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/util/List;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->images:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)I
    .locals 0

    .line 139
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isFromTransaction:I

    return p0
.end method

.method static synthetic access$3100()Ljava/lang/String;
    .locals 1

    .line 139
    sget-object v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;Ljava/lang/String;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->createProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/app/AlertDialog;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->dialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Z
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->validation()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/TextView;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->dialogMsgTxtview:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/util/ArrayList;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->imagelist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3702(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;Z)Z
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isImageDeleted:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;Ljava/lang/String;)Z
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isValidMobileNumber(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3900(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/TextView;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvLatitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;J)V
    .locals 0

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->captureImage(J)V

    return-void
.end method

.method static synthetic access$4000(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/TextView;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvLongitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;Landroid/location/Location;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->bindAddress(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$4202(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->GPSTImeStamp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Lcom/conceptglobal/pmc/database/GetDataFromDB;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/TextView;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvdistrictid:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/EditText;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->edtDistrict:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/TextView;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvmandalid:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/EditText;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->edtMandal:Landroid/widget/EditText;

    return-object p0
.end method

.method private addDisclaimerView(Landroid/widget/LinearLayout;)V
    .locals 5

    .line 962
    :try_start_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 963
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 964
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 965
    invoke-virtual {v2, v3, v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 966
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 967
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 968
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 970
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 972
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x13

    .line 973
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 974
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->context:Landroid/content/Context;

    const v4, 0x7f11015b

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 975
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 976
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06010f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 977
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 978
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_RetailerDisclamer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 979
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 980
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 981
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 983
    const-string v0, "AddRetailer"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private addTab(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    .line 1469
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 1470
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0c0135

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090459

    .line 1471
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1472
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090230

    .line 1473
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 1474
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1475
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 1476
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10023c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const p2, 0x7f090422

    if-eqz p1, :cond_0

    .line 1477
    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 1478
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10023d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f090423

    .line 1479
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 1480
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f100240

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f090424

    .line 1481
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 1483
    :cond_2
    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 1485
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method private bindAddress(Landroid/location/Location;)V
    .locals 6

    .line 2879
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getAddressWithLatLong(Landroid/content/Context;DD)Ljava/lang/String;

    move-result-object v0

    .line 2882
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->dealerMaster:Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getLongToDate(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setGPSTimeStamp(Ljava/lang/String;)V

    .line 2883
    sget-object p1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    const-string v1, "Retailer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_0

    .line 2884
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

    .line 2885
    :cond_0
    sget-object p1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    const-string v3, "Distributor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    const-string v3, "Dealer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v3, v1

    goto :goto_1

    .line 2886
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

    .line 2888
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 2889
    :goto_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    .line 2890
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    .line 2891
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v1

    int-to-long v1, v1

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    .line 2892
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

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

    .line 2900
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception p1

    .line 2898
    const-string v0, "AddRetailer"

    const-string v1, "Impossible to connect to Geocoder"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_3
    return-void
.end method

.method private bindOperations()V
    .locals 11

    .line 595
    const-string v0, "AddRetailer"

    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->bindQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerOrRetailerBindDataDynamic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mentryValues:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 597
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 600
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mentryValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    const/4 v1, 0x0

    .line 601
    :goto_1
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 602
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Dropdown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 603
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mentryValues:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DealerMaster"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 606
    :try_start_1
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "RetailerShopName"

    const-string v9, "ContactId"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mentryValues:Ljava/util/List;

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

    .line 608
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 609
    invoke-static {v0, v4}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 611
    :cond_0
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FarmerMaster"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 613
    :try_start_2
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "FarmerName"

    const-string v9, "RespondentNo"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mentryValues:Ljava/util/List;

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

    .line 615
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 616
    invoke-static {v0, v4}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 618
    :cond_1
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TerritoryMaster"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 620
    :try_start_3
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "territoryName"

    const-string v9, "territoryId"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mentryValues:Ljava/util/List;

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

    .line 622
    invoke-static {v0, v4}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 625
    :cond_2
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mentryValues:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 627
    :cond_3
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Multiselect Dropdown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 628
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

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

    .line 630
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/MultiSelectData;->getIds()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/MultiSelectData;->getNames()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 633
    :cond_4
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 637
    :cond_5
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mentryValues:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 642
    :cond_6
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/common/Queries;->gettingRetailerAtaticData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRetailerBindDataStatic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->draftStaticData:Ljava/util/List;

    .line 643
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v4, 0x1

    if-lez v0, :cond_7

    .line 644
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->draftStaticData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DealerMaster;->getStateId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->draftStaticData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DealerMaster;->getStateName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->draftStaticData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DealerMaster;->getDistrictId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->draftStaticData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DealerMaster;->getDistrictName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->draftStaticData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DealerMaster;->getMandalId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->draftStaticData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DealerMaster;->getMandalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 650
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->draftStaticData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DealerMaster;->getVillageId()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->draftStaticData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DealerMaster;->getVillageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 652
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvLatitude:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->draftStaticData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DealerMaster;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvLongitude:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->draftStaticData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DealerMaster;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    :cond_7
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->draftStaticData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->draftStaticData:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->getStateId()I

    move-result v0

    if-nez v0, :cond_9

    .line 657
    :cond_8
    :try_start_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingStateCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 659
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingStates()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSampleModel(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/SampleModel;

    move-result-object v0

    .line 660
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/SampleModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

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

    .line 664
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 667
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->draftStaticData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->draftStaticData:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->getDistrictId()I

    move-result v0

    if-nez v0, :cond_b

    .line 669
    :cond_a
    :try_start_5
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v5, "DistrictMaster"

    const-string v6, "StateId"

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

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

    if-ne v0, v4, :cond_b

    .line 671
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

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

    .line 672
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/SampleModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

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

    .line 676
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 679
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->draftStaticData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->draftStaticData:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->getMandalId()I

    move-result v0

    if-nez v0, :cond_d

    .line 681
    :cond_c
    :try_start_6
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v3, "MandalMaster"

    const-string v5, "Districtid"

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->gettingCountofMasters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_d

    .line 683
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->gettingMandals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSampleModel(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/SampleModel;

    move-result-object v0

    .line 684
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/SampleModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

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

    .line 688
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_5
    return-void
.end method

.method private captureImage(J)V
    .locals 7

    .line 2913
    const-string v0, "Retailer"

    const-string v1, "AddRetailer"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Navigation"

    const-string v4, "Image Capture Start"

    invoke-static {v3, v4, v1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2914
    new-instance v1, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    invoke-virtual {v1, p0}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    .line 2915
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->setPictureReportingContext(Landroid/content/Context;)V

    .line 2916
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->context:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2917
    const-string v2, "activityId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2918
    const-string v2, "assignmentId"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2920
    :try_start_0
    sget-object v2, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "setReferenceType"

    if-eqz v2, :cond_0

    .line 2921
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

    .line 2922
    :cond_0
    sget-object v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    const-string v2, "Distributor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    const-string v2, "Dealer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2923
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

    .line 2926
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2927
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2929
    :cond_2
    :goto_0
    const-string v0, "setReferenceID"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2930
    const-string v0, "attributeId"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2931
    const-string v0, "farmerId"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2932
    const-string v0, "imageId"

    invoke-virtual {v1, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2933
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private contactIdIncrement()V
    .locals 5

    .line 722
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->gettingPdaid()V

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->dealerMaster:Lcom/conceptglobal/pmc/model/DealerMaster;

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

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    return-void
.end method

.method private createOperationAttributes()V
    .locals 32

    move-object/from16 v15, p0

    .line 899
    const-string v0, "Retailer"

    const v1, 0x7f090335

    :try_start_0
    invoke-virtual {v15, v1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    const v1, 0x7f09033c

    .line 900
    invoke-virtual {v15, v1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mAddDynamicLinearForOthers:Landroid/widget/LinearLayout;

    .line 901
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->hAttributes:Ljava/util/HashMap;

    .line 902
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mattributesnamesArr:Ljava/util/ArrayList;

    .line 903
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mOprDatesArr:Ljava/util/ArrayList;

    .line 904
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    .line 905
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntrySpinnerArr:Ljava/util/ArrayList;

    .line 906
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArrIds:Ljava/util/ArrayList;

    .line 908
    sget-object v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v2, "Personal"

    const-string v14, "Dealer"

    const-string v13, "Distributor"

    if-eqz v1, :cond_0

    .line 909
    :try_start_1
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v2, v14}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    goto :goto_0

    .line 910
    :cond_0
    sget-object v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 911
    :cond_1
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v2, v13}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    .line 913
    :cond_2
    :goto_0
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 915
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->hAttributes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 917
    const-string v11, ","

    const/16 v18, 0x0

    if-lez v12, :cond_3

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v12, :cond_3

    .line 919
    :try_start_2
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsMandatory()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v8

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxLength()I

    move-result v9

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v16

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v17

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v19

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v20

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    move-object/from16 v21, v1

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsTransactionEditable()I

    move-result v22

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

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
    invoke-virtual/range {v1 .. v17}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILandroid/widget/LinearLayout;IILcom/conceptglobal/pmc/model/DynamicFields;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v15, p0

    .line 920
    :try_start_4
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->dynamicColumnnames:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

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

    .line 924
    sget-object v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    move-object/from16 v14, v25

    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const-string v2, "Others"

    if-eqz v1, :cond_4

    .line 925
    :try_start_5
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    move-object/from16 v13, v28

    invoke-virtual {v3, v2, v13}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArryForOthers:Ljava/util/ArrayList;

    move-object/from16 v12, v27

    goto :goto_2

    :cond_4
    move-object/from16 v13, v28

    .line 926
    sget-object v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    move-object/from16 v12, v27

    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 927
    :cond_5
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v2, v12}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArryForOthers:Ljava/util/ArrayList;

    .line 930
    :cond_6
    :goto_2
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 931
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    iget-object v2, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v11, 0x0

    .line 932
    :goto_3
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_7

    .line 933
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsMandatory()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v8

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxLength()I

    move-result v9

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v10

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v16

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v17

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v18

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mAddDynamicLinearForOthers:Landroid/widget/LinearLayout;

    move-object/from16 v19, v1

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsTransactionEditable()I

    move-result v20

    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArryForOthers:Ljava/util/ArrayList;

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
    invoke-virtual/range {v1 .. v17}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILandroid/widget/LinearLayout;IILcom/conceptglobal/pmc/model/DynamicFields;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 934
    :try_start_7
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->dynamicColumnnames:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArryForOthers:Ljava/util/ArrayList;

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

    .line 936
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mAddDynamicLinearForOthers:Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->addDisclaimerView(Landroid/widget/LinearLayout;)V

    goto :goto_4

    :cond_8
    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    move-object v1, v15

    :goto_4
    if-gtz v26, :cond_9

    .line 939
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArryForOthers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_7

    .line 941
    :cond_9
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 942
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 944
    sget-object v2, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    move-object/from16 v3, v31

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 945
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->bindQueryInAddRetailer(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->bindQuery:Ljava/lang/String;

    goto :goto_7

    .line 946
    :cond_a
    sget-object v2, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    move-object/from16 v3, v29

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    move-object/from16 v3, v30

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 947
    :cond_b
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v2, v0, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->bindQueryInAddRetailer(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->bindQuery:Ljava/lang/String;
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

    .line 951
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_7
    return-void
.end method

.method private createProgressDialog(Ljava/lang/String;)V
    .locals 4

    .line 4466
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4467
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0114

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090305

    .line 4468
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->dialogMsgTxtview:Landroid/widget/TextView;

    .line 4469
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4470
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 4471
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->dialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    .line 4472
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    return-void
.end method

.method private dataInsertMultiAttributeValues()V
    .locals 21

    move-object/from16 v1, p0

    .line 3067
    const-string v0, ""

    const-string v2, ","

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 3068
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->retailerMultiAttributeDetails:Ljava/util/ArrayList;

    .line 3069
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Multiselect Dropdown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3072
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 3073
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3074
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArrIds:Ljava/util/ArrayList;

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

    .line 3075
    array-length v7, v6

    if-lez v7, :cond_0

    .line 3076
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->deleteRetailerMultiAttributeData(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 3077
    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v8, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z

    const/4 v7, 0x0

    .line 3079
    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_0

    .line 3080
    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->retailerMultiAttributeDetails:Ljava/util/ArrayList;

    new-instance v15, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;

    const-string v10, ""

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    .line 3081
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

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->dealerMaster:Lcom/conceptglobal/pmc/model/DealerMaster;

    .line 3084
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

    .line 3080
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v20

    goto :goto_1

    :cond_0
    move-object/from16 v20, v0

    .line 3092
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->retailerMultiAttributeDetails:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 3093
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->retailerMultiAttributeDetails:Ljava/util/ArrayList;

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

    .line 3097
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3098
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method private dataInsertion()V
    .locals 7

    .line 3104
    new-instance v0, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/DealerMaster;-><init>()V

    .line 3105
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->GPSTImeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setGPSTimeStamp(Ljava/lang/String;)V

    .line 3106
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->getPDAId()I

    move-result v1

    if-nez v1, :cond_0

    .line 3107
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->gettingPdaid()V

    .line 3124
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setContactId(Ljava/lang/String;)V

    .line 3125
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 3126
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setStateId(I)V

    goto :goto_0

    .line 3128
    :cond_1
    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/DealerMaster;->setStateId(I)V

    .line 3130
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 3131
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setDistrictId(I)V

    goto :goto_1

    .line 3133
    :cond_2
    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/DealerMaster;->setDistrictId(I)V

    .line 3135
    :goto_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 3136
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setMandalId(I)V

    goto :goto_2

    .line 3138
    :cond_3
    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/DealerMaster;->setMandalId(I)V

    .line 3140
    :goto_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 3141
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setVillageId(I)V

    goto :goto_3

    .line 3143
    :cond_4
    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/DealerMaster;->setVillageId(I)V

    .line 3145
    :goto_3
    iget v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->status:I

    const-string v6, "1"

    if-ne v1, v3, :cond_5

    .line 3146
    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/model/DealerMaster;->setColumn3(Ljava/lang/String;)V

    .line 3147
    :cond_5
    iget v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->pdaId:I

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setPDAId(I)V

    .line 3148
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setStateName(Ljava/lang/String;)V

    .line 3149
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setDistrictName(Ljava/lang/String;)V

    .line 3150
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setMandalName(Ljava/lang/String;)V

    .line 3151
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setVillageName(Ljava/lang/String;)V

    .line 3152
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setLatitude(Ljava/lang/String;)V

    .line 3153
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setLongitude(Ljava/lang/String;)V

    .line 3154
    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/DealerMaster;->setServerUpdatedStatus(Z)V

    .line 3155
    iget v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setStatusReason(Ljava/lang/String;)V

    .line 3156
    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/model/DealerMaster;->setIsNew(Z)V

    .line 3157
    sget-object v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    const-string v4, "ValueChain"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    .line 3158
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setCustomerTypeID(I)V

    goto :goto_4

    .line 3159
    :cond_6
    sget-object v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    const-string v4, "CropExpert"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x6

    .line 3160
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setCustomerTypeID(I)V

    .line 3162
    :cond_7
    :goto_4
    const-string v1, "True"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setIsActive(Ljava/lang/String;)V

    .line 3163
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->aadharRawData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setAadharRawData(Ljava/lang/String;)V

    .line 3164
    iget v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->status:I

    if-ne v1, v3, :cond_8

    .line 3165
    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/model/DealerMaster;->setHasProfilePicture(Ljava/lang/String;)V

    .line 3166
    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/model/DealerMaster;->setColumn3(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    if-nez v1, :cond_b

    .line 3170
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getIsRetailerProfilePicCapturd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    .line 3171
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3172
    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/model/DealerMaster;->setHasProfilePicture(Ljava/lang/String;)V

    goto :goto_6

    .line 3174
    :cond_9
    :goto_5
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_b

    .line 3175
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->images:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/ImageDetails;

    .line 3176
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getEventTypeId()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_a

    .line 3177
    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/model/DealerMaster;->setHasProfilePicture(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catch_0
    move-exception v1

    .line 3181
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3188
    :cond_b
    :goto_6
    :try_start_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->gettingRetailerCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->retailerCount:I

    if-lez v1, :cond_c

    .line 3190
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArrIds:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->updateRetailerDetails(Lcom/conceptglobal/pmc/model/DealerMaster;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/ArrayList;)V

    goto :goto_7

    .line 3192
    :cond_c
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertRetailerDetails(Lcom/conceptglobal/pmc/model/DealerMaster;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 3198
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3199
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3204
    :goto_7
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->listDealerCrops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DealerCropMapping;

    .line 3207
    :try_start_2
    invoke-static {v1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertCropSelectionDetails(Lcom/conceptglobal/pmc/model/DealerCropMapping;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v1

    .line 3209
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tag:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 3215
    :cond_d
    :try_start_3
    sget-object v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3216
    sget-object v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->deletedCropIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3217
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lcom/conceptglobal/pmc/common/Queries;->deleteDealerCropDataByMappingId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    .line 3220
    :try_start_4
    const-string v1, "AddRetailer"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3222
    :cond_e
    sget-object v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return-void

    :goto_a
    sget-object v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 3223
    throw v0
.end method

.method private enableGeoDetailsLayout()V
    .locals 9

    .line 834
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "Dealer"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getInWhichTab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInWhichTabGeoDetailsAvailable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090380

    .line 835
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mAddGeoDetailsInPersonal:Landroid/widget/LinearLayout;

    const v1, 0x7f09037f

    .line 836
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mAddGeoDetailsInOthers:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 838
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attribName:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 839
    const-string v2, "Personal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 840
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 841
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attribName:[Ljava/lang/String;

    aget-object v4, v2, v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/EditText;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mAddGeoDetailsInPersonal:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsConditions:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aget-object v8, v2, v3

    move-object v2, p0

    move v3, v1

    invoke-virtual/range {v2 .. v8}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->addIndividualGeoDetails(ILjava/lang/String;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto :goto_1

    .line 842
    :cond_0
    const-string v2, "Others"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 843
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 844
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attribName:[Ljava/lang/String;

    aget-object v4, v2, v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/EditText;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mAddGeoDetailsInOthers:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsConditions:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aget-object v8, v2, v3

    move-object v2, p0

    move v3, v1

    invoke-virtual/range {v2 .. v8}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->addIndividualGeoDetails(ILjava/lang/String;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 848
    const-string v1, "AddRetailer"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private fetchLocation()V
    .locals 4

    .line 4919
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4920
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 4923
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$27;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$27;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V

    const-string v2, "AddRetailer"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4943
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getLocationTime(DD)Ljava/lang/String;
    .locals 2

    .line 2905
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 2906
    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 2907
    invoke-virtual {v0, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 2908
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getLongToDate(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private gettingData()V
    .locals 4

    .line 557
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 558
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 560
    const-string v2, "farmerId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 561
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 562
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    goto :goto_0

    .line 564
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactIdIncrement()V

    if-eqz v1, :cond_1

    .line 565
    const-string v2, "MobileNumber"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 566
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mobile:Ljava/lang/String;

    .line 570
    :cond_1
    :goto_0
    const-string v1, "SegmentId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 571
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->segmentID:I

    .line 573
    :cond_2
    const-string v1, "fromTransaction"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 574
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isFromTransaction:I

    .line 577
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->companyOrCropTab:Ljava/lang/String;

    const-string v1, "Crops"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 578
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isextrasales:I

    if-ne v0, v3, :cond_4

    .line 579
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getDealerHybrids(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDealerCropSalesDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->listDealerCrops:Ljava/util/List;

    goto :goto_1

    .line 581
    :cond_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getDealerCrops(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDealerCropSalesDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->listDealerCrops:Ljava/util/List;

    goto :goto_1

    .line 585
    :cond_5
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getCompaniesAndSales(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getCompanySelectionData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->listDealerCompanies:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 588
    const-string v1, "AddRetailer"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private gettingPdaid()V
    .locals 3

    .line 729
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->dealerMaster:Lcom/conceptglobal/pmc/model/DealerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->geetingPdaid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setPDAId(I)V

    .line 730
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->geetingPdaid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->pdaId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 732
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 733
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initialization()V
    .locals 3

    const/4 v0, 0x0

    .line 397
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->updateDOS:Ljava/lang/String;

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->dynamicColumnnames:Ljava/lang/StringBuilder;

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mentryValues:Ljava/util/List;

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getDealerDetailsSecondTab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->companyOrCropTab:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 403
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 404
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const v0, 0x7f09041e

    .line 406
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tabHost:Landroid/widget/TabHost;

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->listDealerCompanies:Ljava/util/List;

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->listDealerCrops:Ljava/util/List;

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->deletedCompanyIds:Ljava/util/List;

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->deletedCropIds:Ljava/util/List;

    .line 412
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvstateid:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvdistrictid:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvmandalid:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvvillageid:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->edtState:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->edtDistrict:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->edtMandal:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->edtVillage:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->edtState:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->stateChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 423
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->edtDistrict:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->districtChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 424
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->edtMandal:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mandalChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f09033b

    .line 426
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tab1:Landroid/widget/LinearLayout;

    const v0, 0x7f090339

    .line 427
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tab2:Landroid/widget/LinearLayout;

    const v0, 0x7f09033a

    .line 428
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tab3:Landroid/widget/RelativeLayout;

    .line 430
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09008f

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvAddCompany:Landroid/widget/TextView;

    .line 431
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->companyOrCropTab:Ljava/lang/String;

    const-string v1, "Crops"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvAddCompany:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addCropText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvAddCompany:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addCompanyText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09009c

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->btnDraft:Landroid/widget/Button;

    .line 438
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draftTabText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900af

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->btnSave:Landroid/widget/Button;

    .line 441
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_saveText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0902d7

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->lvCompanies:Landroid/widget/ListView;

    .line 444
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->lvCrops:Landroid/widget/ListView;

    .line 445
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09054c

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvLatitude:Landroid/widget/TextView;

    .line 446
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_latitudeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090555

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvLongitude:Landroid/widget/TextView;

    .line 449
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_longitudeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0904fc

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvAllSalesvalues:Landroid/widget/TextView;

    .line 452
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_salesValueText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900a4

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->btnLatLng:Landroid/widget/ImageView;

    const v0, 0x7f090245

    .line 454
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->imgretailermain:Landroid/widget/ImageView;

    const v0, 0x7f09021a

    .line 455
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->gridView:Landroid/widget/GridView;

    .line 456
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->imgretailermain:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09056d

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->btnRemarks:Landroid/widget/Button;

    .line 458
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_remarksText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901c3

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etRemarks:Landroid/widget/EditText;

    .line 461
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterRemarksText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f090080

    .line 463
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->btnScanAdhar:Landroid/widget/Button;

    .line 464
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etRemarks:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->btnSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->btnDraft:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvAddCompany:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 471
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->btnLatLng:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 473
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mYear:I

    const/4 v1, 0x2

    .line 474
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mMonth:I

    const/4 v1, 0x5

    .line 475
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mDay:I

    .line 477
    new-instance v0, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/DealerMaster;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->dealerMaster:Lcom/conceptglobal/pmc/model/DealerMaster;

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->imagelist:Ljava/util/ArrayList;

    return-void
.end method

.method public static isDecimal(Ljava/lang/String;)Z
    .locals 2

    .line 3438
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

    .line 3440
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1

    .line 3428
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 3430
    const-string v0, "AddRetailer"

    invoke-static {v0, p0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private isValidMobileNumber(Ljava/lang/String;)Z
    .locals 1

    .line 4892
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

.method private setAdapter()V
    .locals 3

    .line 4656
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailsQry_Assignment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->images:Ljava/util/List;

    .line 4657
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4658
    new-instance v0, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->images:Ljava/util/List;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->imagelist:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    .line 4659
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->gridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4660
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4661
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->gridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 4663
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->gridView:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setDate(I)V
    .locals 2

    .line 2702
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2703
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2705
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2707
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2709
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2710
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setDate_yearless(I)V
    .locals 2

    .line 2677
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2678
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2680
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2682
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2684
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2685
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 4631
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 4632
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 4633
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 4634
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setError(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 4584
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$20;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setListviewForSales()V
    .locals 3

    .line 1495
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->companyOrCropTab:Ljava/lang/String;

    const-string v1, "Crops"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1496
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->listDealerCrops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1497
    new-instance v0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->listDealerCrops:Ljava/util/List;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Lcom/conceptglobal/pmc/interfaces/OnCropItemClickListener;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->adapterCrop:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;

    .line 1498
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->lvCrops:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1499
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->lvCrops:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/ListviewFillToParent;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    goto :goto_0

    .line 1502
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->listDealerCompanies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1503
    new-instance v0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->listDealerCompanies:Ljava/util/List;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->adapterCompany:Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;

    .line 1504
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->lvCompanies:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1505
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->lvCompanies:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/ListviewFillToParent;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setText(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 1

    .line 4575
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$19;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private settingTabs()V
    .locals 5

    .line 700
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 701
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_personalTabText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10023c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08010b

    invoke-direct {p0, v0, v2, v1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 703
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

    iput-wide v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isNotRequiredFAB:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 705
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 707
    :goto_0
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isNotRequiredFAB:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 708
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->companyOrCropTab:Ljava/lang/String;

    const-string v1, "Crops"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f10023d

    const v2, 0x7f080101

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cropFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_companyTabText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const v0, 0x7f090423

    .line 714
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 715
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 717
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_profileTabText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100240

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080166

    invoke-direct {p0, v0, v2, v1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private showAddCropSalesDialog(Ljava/lang/String;FI)V
    .locals 11

    .line 1745
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1747
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v2, 0x7f0c0055

    .line 1748
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x7f09018e

    .line 1749
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etCropSales:Landroid/widget/EditText;

    .line 1750
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addSales()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v2, 0x7f0900b1

    .line 1751
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1752
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_saveText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0900a9

    .line 1753
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f09018d

    .line 1755
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etCropName:Landroid/widget/EditText;

    .line 1756
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addCropText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v4, 0x7f0905a4

    .line 1759
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvCropId:Landroid/widget/TextView;

    .line 1760
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etCropSales:Landroid/widget/EditText;

    const/16 v5, 0x2002

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    const v4, 0x7f090194

    .line 1762
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etCropDos:Landroid/widget/EditText;

    .line 1764
    iget v6, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isextrasales:I

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-ne v6, v1, :cond_0

    .line 1765
    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1766
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etCropDos:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addSales1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1767
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etCropName:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addCropText1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1768
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etCropDos:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 1770
    :cond_0
    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1774
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

    .line 1776
    const-string v5, "AddRetailer"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb

    .line 1779
    :goto_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etCropSales:Landroid/widget/EditText;

    new-array v6, v1, [Landroid/text/InputFilter;

    new-instance v9, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DecimalDigitsInputFilter;

    const/4 v10, 0x2

    invoke-direct {v9, p0, v4, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;II)V

    aput-object v9, v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1780
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etCropDos:Landroid/widget/EditText;

    new-array v6, v1, [Landroid/text/InputFilter;

    new-instance v9, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DecimalDigitsInputFilter;

    invoke-direct {v9, p0, v4, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;II)V

    aput-object v9, v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v4, -0x777778

    .line 1781
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    if-nez p3, :cond_1

    .line 1784
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etCropSales:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1785
    iget v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isextrasales:I

    if-ne v3, v1, :cond_2

    .line 1786
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etCropDos:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2

    .line 1788
    :cond_1
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etCropSales:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1789
    iget v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isextrasales:I

    if-ne v3, v1, :cond_2

    .line 1790
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etCropDos:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1792
    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 1793
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etCropName:Landroid/widget/EditText;

    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1794
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvCropId:Landroid/widget/TextView;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1795
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etCropSales:Landroid/widget/EditText;

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

    .line 1796
    iget p2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isextrasales:I

    if-ne p2, v1, :cond_4

    .line 1797
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etCropDos:Landroid/widget/EditText;

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

    .line 1799
    :try_start_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etCropName:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 1801
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1805
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etCropName:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1806
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etCropSales:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1807
    iget p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isextrasales:I

    if-ne p1, v1, :cond_4

    .line 1808
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etCropDos:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1812
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->etCropName:Landroid/widget/EditText;

    new-instance p2, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$9;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$9;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1835
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvCropId:Landroid/widget/TextView;

    new-instance p2, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$10;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$10;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1879
    new-instance p1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$11;

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$11;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;Landroid/app/Dialog;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1927
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1928
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1929
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1930
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1931
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;)V
    .locals 6

    .line 4865
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 4866
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0c0057

    .line 4867
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f0904a4

    .line 4868
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090241

    .line 4869
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v2, 0x7f0900aa

    .line 4870
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 4871
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getResources()Landroid/content/res/Resources;

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

    .line 4872
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getResources()Landroid/content/res/Resources;

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

    .line 4873
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;->getTerritory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\nVillage Name     : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4874
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;->getVillage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4871
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4876
    new-instance p1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$26;

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$26;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;Landroid/app/Dialog;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4883
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4884
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-virtual {p1, v1, v3}, Landroid/view/Window;->setLayout(II)V

    .line 4885
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4886
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4887
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4888
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showGoBackDialog()V
    .locals 4

    .line 2736
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2738
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

    new-instance v3, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$17;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$17;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2753
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$18;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$18;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2760
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2761
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2762
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showMobileSearchDialog()V
    .locals 6

    .line 4784
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 4785
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0c005d

    .line 4786
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f090173

    .line 4787
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f090095

    .line 4790
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0900b8

    .line 4791
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const/4 v4, 0x0

    .line 4792
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4794
    new-instance v5, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$23;

    invoke-direct {v5, p0, v1, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$23;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4810
    new-instance v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$24;

    invoke-direct {v1, p0, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$24;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;Landroid/app/Dialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4817
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4818
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 4819
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4820
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4821
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4822
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showNoDataAvailableDialog(Ljava/lang/String;)V
    .locals 3

    .line 4847
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4848
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$25;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$25;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V

    const v2, 0x7f100101

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4854
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 4855
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4856
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1

    .line 4599
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$21;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$21;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateDisplay()V
    .locals 3

    .line 2690
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mFiledStr:Ljava/lang/String;

    .line 2691
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2693
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2695
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2697
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setDate(I)V

    return-void
.end method

.method private updateDisplay_yearless()V
    .locals 2

    .line 2665
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mFiledStr:Ljava/lang/String;

    .line 2666
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2668
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2670
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2672
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setDate_yearless(I)V

    return-void
.end method

.method private validation()Z
    .locals 28

    move-object/from16 v1, p0

    .line 3841
    const-string v2, "Please take  profile photo"

    const-string v3, "1"

    const-string v4, " "

    .line 3855
    const-string v7, ""

    move-object v10, v7

    move-object v11, v10

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

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_0
    :try_start_0
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v8, v6, :cond_46

    .line 3857
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    const/16 v5, 0x67

    if-ne v6, v5, :cond_0

    .line 3858
    :try_start_1
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object v10, v5

    .line 3860
    :cond_0
    :try_start_2
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    const/16 v6, 0x68

    if-ne v5, v6, :cond_1

    .line 3861
    :try_start_3
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object v11, v5

    .line 3863
    :cond_1
    :try_start_4
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    const/16 v6, 0x6f

    if-ne v5, v6, :cond_2

    .line 3864
    :try_start_5
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v12, v5

    .line 3866
    :cond_2
    :try_start_6
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    const/16 v6, 0x70

    if-ne v5, v6, :cond_3

    .line 3867
    :try_start_7
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-object v13, v5

    .line 3871
    :cond_3
    :try_start_8
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    const/16 v6, 0x6a

    if-ne v5, v6, :cond_4

    .line 3872
    :try_start_9
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move-object v14, v5

    .line 3874
    :cond_4
    :try_start_a
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    const/16 v6, 0x6b

    if-ne v5, v6, :cond_5

    .line 3875
    :try_start_b
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    move-object v15, v5

    .line 3877
    :cond_5
    :try_start_c
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    const/16 v6, 0x6c

    if-ne v5, v6, :cond_6

    .line 3878
    :try_start_d
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    move-object/from16 v16, v5

    .line 3880
    :cond_6
    :try_start_e
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    const/16 v6, 0xe5

    if-ne v5, v6, :cond_7

    .line 3881
    :try_start_f
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    move-object/from16 v17, v5

    .line 3883
    :cond_7
    :try_start_10
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    const/16 v6, 0xe6

    if-ne v5, v6, :cond_8

    .line 3884
    :try_start_11
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    move-object/from16 v18, v5

    .line 3886
    :cond_8
    :try_start_12
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    const/16 v6, 0xe7

    if-ne v5, v6, :cond_9

    .line 3887
    :try_start_13
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    move-object/from16 v19, v5

    .line 3889
    :cond_9
    :try_start_14
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7

    const/16 v6, 0xdc

    if-ne v5, v6, :cond_a

    .line 3890
    :try_start_15
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4

    move-object/from16 v20, v5

    .line 3892
    :cond_a
    :try_start_16
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7

    const/16 v6, 0xf6

    if-ne v5, v6, :cond_b

    .line 3893
    :try_start_17
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_4

    move-object/from16 v21, v5

    .line 3896
    :cond_b
    :try_start_18
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsMandatory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_7

    const-string v6, "Decimal"

    move/from16 v22, v9

    const-string v9, "Email"

    move-object/from16 v23, v10

    const-string v10, "VATNo"

    move-object/from16 v24, v11

    const-string v11, "Datepicker"

    if-eqz v5, :cond_2a

    .line 3897
    :try_start_19
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-nez v5, :cond_c

    .line 3899
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_emptyEditText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    :goto_1
    const/4 v9, 0x0

    goto/16 :goto_18

    .line 3902
    :cond_c
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v5

    if-eqz v5, :cond_15

    .line 3903
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v25, v12

    const-string v12, "MobileNumber"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 3904
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-lez v5, :cond_16

    .line 3905
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v10

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    move-object/from16 v26, v13

    iget v13, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->typeOfCustomer:I

    invoke-virtual {v10, v12, v13}, Lcom/conceptglobal/pmc/common/Queries;->isMobileExistsForRetailer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v10, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 3906
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v12

    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    move-object/from16 v27, v14

    iget v14, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->typeOfCustomer:I

    invoke-virtual {v12, v13, v14}, Lcom/conceptglobal/pmc/common/Queries;->isMobileExistsForRetailerInTerrytory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 3908
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v12

    if-nez v5, :cond_f

    if-eqz v10, :cond_d

    goto :goto_2

    .line 3916
    :cond_d
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-ge v5, v12, :cond_e

    .line 3918
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3923
    :cond_e
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3913
    :cond_f
    :goto_2
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_mobileExistsToast()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_10
    move-object/from16 v26, v13

    move-object/from16 v27, v14

    .line 3926
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 3927
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-lez v5, :cond_17

    .line 3928
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v10

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    iget v13, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->typeOfCustomer:I

    invoke-virtual {v10, v12, v13}, Lcom/conceptglobal/pmc/common/Queries;->isGSTNoExistsForRetailer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v10, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 3930
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v10

    if-eqz v5, :cond_11

    .line 3933
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_GSTNoExistsToast()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3936
    :cond_11
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-ge v5, v10, :cond_12

    .line 3938
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_3

    .line 3944
    :cond_12
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_4

    .line 3949
    :cond_13
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v5

    .line 3950
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

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

    if-ge v10, v5, :cond_14

    .line 3952
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v10, v5}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_3
    const/4 v5, 0x0

    const/16 v22, 0x0

    goto :goto_5

    .line 3958
    :cond_14
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_4

    :cond_15
    move-object/from16 v25, v12

    :cond_16
    move-object/from16 v26, v13

    move-object/from16 v27, v14

    :cond_17
    :goto_4
    const/4 v5, 0x1

    .line 3963
    :goto_5
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v10

    const-string v12, "Dropdown"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 3965
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

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

    if-gtz v10, :cond_18

    .line 3967
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v22, 0x0

    goto :goto_6

    :cond_18
    if-eqz v5, :cond_19

    .line 3973
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-direct {v1, v10, v12}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 3977
    :cond_19
    :goto_6
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1d

    .line 3978
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 3979
    sget-object v9, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_1a

    .line 3982
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v5, v9}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_7
    const/4 v5, 0x0

    const/4 v9, 0x0

    goto/16 :goto_9

    :cond_1a
    if-eqz v5, :cond_1d

    .line 3988
    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-direct {v1, v9, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 3992
    :cond_1b
    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 3993
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 3994
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3995
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 3996
    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 3997
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_1c

    .line 3999
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v5, v9}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1c
    if-eqz v5, :cond_1d

    .line 4005
    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-direct {v1, v9, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_2

    :cond_1d
    :goto_8
    move/from16 v9, v22

    .line 4010
    :goto_9
    :try_start_1a
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1e

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    goto/16 :goto_18

    .line 4012
    :cond_1e
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v10

    if-lez v10, :cond_21

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v10

    if-lez v10, :cond_21

    .line 4013
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isNumeric(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 4014
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 4015
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v11

    .line 4016
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v11, v13

    if-le v10, v11, :cond_20

    add-int/2addr v12, v13

    if-lt v10, v12, :cond_1f

    goto :goto_a

    :cond_1f
    if-eqz v5, :cond_28

    .line 4025
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 4019
    :cond_20
    :goto_a
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 4031
    :cond_21
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v10

    if-lez v10, :cond_24

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v10

    if-gtz v10, :cond_24

    .line 4032
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isNumeric(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 4033
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 4034
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v11

    if-ge v10, v11, :cond_22

    .line 4038
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_22
    if-eqz v5, :cond_28

    .line 4044
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_23
    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    move-object/from16 v13, v26

    move-object/from16 v14, v27

    goto/16 :goto_19

    .line 4050
    :cond_24
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v10

    if-lez v10, :cond_28

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v10

    if-gtz v10, :cond_28

    .line 4051
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isNumeric(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 4052
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 4053
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v11

    if-le v10, v11, :cond_25

    .line 4057
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v9, 0x0

    goto :goto_b

    :cond_25
    if-eqz v5, :cond_26

    .line 4063
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-direct {v1, v10, v11}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 4067
    :cond_26
    :goto_b
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isDecimal(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_28

    .line 4068
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    .line 4069
    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v13

    .line 4071
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-double v12, v13

    cmpl-double v14, v10, v12

    if-lez v14, :cond_27

    .line 4073
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_c
    const/4 v9, 0x0

    goto :goto_d

    :cond_27
    if-eqz v5, :cond_28

    .line 4079
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 4086
    :cond_28
    :goto_d
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v5

    if-lez v5, :cond_29

    .line 4087
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isDecimal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 4088
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 4089
    invoke-static {}, Ljava/text/DecimalFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v10

    .line 4090
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 4091
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    const/4 v11, 0x0

    .line 4092
    invoke-virtual {v10, v11}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 4093
    invoke-virtual {v10, v5}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 4094
    new-instance v10, Ljava/math/BigDecimal;

    invoke-direct {v10, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 4095
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fragments/AddFarmer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4100
    :cond_29
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_4

    if-eqz v5, :cond_45

    .line 4102
    :try_start_1b
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0

    goto/16 :goto_18

    .line 4105
    :catch_0
    :try_start_1c
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_3

    goto/16 :goto_1

    :cond_2a
    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    .line 4110
    :try_start_1d
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-lez v5, :cond_44

    .line 4111
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2b

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    goto/16 :goto_17

    .line 4113
    :cond_2b
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v5

    if-eqz v5, :cond_33

    .line 4114
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v5

    const-string v11, "Mobile"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 4115
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-lez v5, :cond_33

    .line 4116
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    iget v12, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->typeOfCustomer:I

    invoke-virtual {v10, v11, v12}, Lcom/conceptglobal/pmc/common/Queries;->isMobileExistsForRetailer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 4118
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v10

    if-eqz v5, :cond_2c

    .line 4121
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_mobileExistsToast()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 4124
    :cond_2c
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-ge v5, v10, :cond_2d

    .line 4126
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 4132
    :cond_2d
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 4136
    :cond_2e
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 4137
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-lez v5, :cond_33

    .line 4138
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    iget v12, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->typeOfCustomer:I

    invoke-virtual {v10, v11, v12}, Lcom/conceptglobal/pmc/common/Queries;->isGSTNoExistsForRetailer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 4140
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v10

    if-eqz v5, :cond_2f

    .line 4143
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_GSTNoExistsToast()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 4146
    :cond_2f
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-ge v5, v10, :cond_30

    .line 4148
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_e

    .line 4154
    :cond_30
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_f

    .line 4159
    :cond_31
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v5

    .line 4160
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

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

    if-ge v10, v5, :cond_32

    .line 4162
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v10, v5}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_e
    const/4 v5, 0x0

    const/16 v22, 0x0

    goto :goto_10

    .line 4168
    :cond_32
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_33
    :goto_f
    const/4 v5, 0x1

    .line 4173
    :goto_10
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_37

    .line 4174
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_35

    .line 4175
    sget-object v9, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_34

    .line 4177
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v5, v9}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_11
    const/4 v5, 0x0

    const/4 v9, 0x0

    goto/16 :goto_13

    :cond_34
    if-eqz v5, :cond_37

    .line 4183
    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-direct {v1, v9, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 4187
    :cond_35
    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 4188
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 4189
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4190
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 4191
    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 4192
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_36

    .line 4194
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v5, v9}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_36
    if-eqz v5, :cond_37

    .line 4200
    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-direct {v1, v9, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_2

    :cond_37
    :goto_12
    move/from16 v9, v22

    .line 4205
    :goto_13
    :try_start_1e
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v10

    if-lez v10, :cond_3a

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v10

    if-lez v10, :cond_3a

    .line 4206
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isNumeric(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_42

    .line 4207
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 4208
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v11

    .line 4209
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v11, v13

    if-le v10, v11, :cond_39

    add-int/2addr v12, v13

    if-lt v10, v12, :cond_38

    goto :goto_14

    :cond_38
    if-eqz v5, :cond_42

    .line 4218
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 4212
    :cond_39
    :goto_14
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 4224
    :cond_3a
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v10

    if-lez v10, :cond_3e

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v10

    if-gtz v10, :cond_3e

    .line 4225
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isDecimal(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 4226
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 4227
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v11

    if-ge v10, v11, :cond_3b

    .line 4231
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_3b
    if-eqz v5, :cond_42

    .line 4237
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 4240
    :cond_3c
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isDecimal(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 4241
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    .line 4242
    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v13

    .line 4244
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-double v12, v13

    cmpg-double v14, v10, v12

    if-gez v14, :cond_3d

    .line 4246
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_3d
    if-eqz v5, :cond_42

    .line 4252
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 4259
    :cond_3e
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v10

    if-lez v10, :cond_42

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v10

    if-gtz v10, :cond_42

    .line 4260
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isNumeric(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_40

    .line 4261
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 4262
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v11

    if-le v10, v11, :cond_3f

    .line 4266
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_3f
    if-eqz v5, :cond_42

    .line 4272
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 4275
    :cond_40
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isDecimal(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 4276
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    .line 4277
    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v13

    .line 4279
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-double v12, v13

    cmpl-double v14, v10, v12

    if-lez v14, :cond_41

    .line 4281
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_15
    const/4 v9, 0x0

    goto :goto_16

    :cond_41
    if-eqz v5, :cond_42

    .line 4287
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-direct {v1, v5, v10}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 4294
    :cond_42
    :goto_16
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v5

    if-lez v5, :cond_43

    .line 4295
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isDecimal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 4296
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 4297
    invoke-static {}, Ljava/text/DecimalFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v10

    .line 4298
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 4299
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    const/4 v11, 0x0

    .line 4300
    invoke-virtual {v10, v11}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 4301
    invoke-virtual {v10, v5}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 4302
    new-instance v10, Ljava/math/BigDecimal;

    invoke-direct {v10, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 4303
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fragments/AddFarmer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4308
    :cond_43
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_4

    if-eqz v5, :cond_45

    .line 4310
    :try_start_1f
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1

    goto :goto_18

    .line 4313
    :catch_1
    :try_start_20
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_3

    goto/16 :goto_1

    :cond_44
    :goto_17
    move/from16 v9, v22

    :cond_45
    :goto_18
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    move-object/from16 v13, v26

    move-object/from16 v14, v27

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v2, v0

    move/from16 v9, v22

    goto/16 :goto_20

    :cond_46
    move/from16 v22, v9

    :goto_19
    if-eqz v10, :cond_47

    .line 4319
    :try_start_21
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_47

    if-eqz v11, :cond_47

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_47

    .line 4320
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_4

    if-eqz v5, :cond_47

    .line 4323
    :try_start_22
    const-string v5, "Preferred Distributor1 and Preferred Distributor2 can\'t be same"

    invoke-direct {v1, v5}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->showToast(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_3

    const/4 v9, 0x0

    goto :goto_1a

    :catch_3
    move-exception v0

    move-object v2, v0

    const/4 v9, 0x0

    goto/16 :goto_20

    :catch_4
    move-exception v0

    goto/16 :goto_1f

    :cond_47
    :goto_1a
    if-eqz v12, :cond_48

    .line 4326
    :try_start_23
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_48

    if-eqz v13, :cond_48

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_48

    .line 4327
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_4

    if-eqz v5, :cond_48

    .line 4330
    :try_start_24
    const-string v5, "Main Village1 and Main Village2 can\'t be same"

    invoke-direct {v1, v5}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->showToast(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_3

    const/4 v9, 0x0

    :cond_48
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 4333
    const-string v7, "SeedsTOValue and PesticideTOValue and FertilizerTOValue sum  should not exceed 100%"

    if-eqz v14, :cond_49

    :try_start_25
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_49

    if-eqz v15, :cond_49

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_49

    if-eqz v16, :cond_49

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_49

    .line 4335
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_4

    add-double/2addr v10, v12

    cmpl-double v8, v10, v5

    if-lez v8, :cond_49

    .line 4337
    :try_start_26
    iput-object v7, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->validationFailedMsg:Ljava/lang/String;

    .line 4339
    invoke-direct {v1, v7}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->showToast(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_3

    const/4 v9, 0x0

    :cond_49
    if-eqz v20, :cond_4a

    .line 4342
    :try_start_27
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4a

    if-eqz v21, :cond_4a

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4a

    .line 4343
    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_4

    cmpg-double v8, v10, v12

    if-gtz v8, :cond_4a

    .line 4345
    :try_start_28
    const-string v8, "Limagrain Turn Over should be less than Turn Over"

    iput-object v8, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->validationFailedMsg:Ljava/lang/String;

    .line 4347
    const-string v8, "Limagrain Turn Over should be less than Total Turn Over"

    invoke-direct {v1, v8}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->showToast(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_3

    const/4 v9, 0x0

    :cond_4a
    if-eqz v17, :cond_4b

    .line 4350
    :try_start_29
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4b

    if-eqz v18, :cond_4b

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4b

    if-eqz v19, :cond_4b

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4b

    .line 4352
    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_4

    add-double/2addr v10, v12

    cmpl-double v8, v10, v5

    if-lez v8, :cond_4b

    .line 4354
    :try_start_2a
    iput-object v7, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->validationFailedMsg:Ljava/lang/String;

    .line 4356
    invoke-direct {v1, v7}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->showToast(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_3

    const/4 v9, 0x0

    .line 4360
    :cond_4b
    :try_start_2b
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    const-string v7, "isImagereqforAddRetailer"

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getIsImageReq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_50

    .line 4361
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 4362
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getIsRetailerProfilePicCapturd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4c

    .line 4363
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50

    .line 4366
    :cond_4c
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->images:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4d

    const/4 v6, 0x0

    const/4 v9, 0x0

    goto :goto_1c

    :cond_4d
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4369
    :goto_1b
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->images:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_4f

    .line 4370
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->images:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/ImageDetails;

    .line 4371
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/ImageDetails;->getEventTypeId()I

    move-result v7
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4e

    const/4 v6, 0x1

    :cond_4e
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_4f
    :goto_1c
    if-nez v6, :cond_50

    .line 4377
    :try_start_2c
    iput-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->validationFailedMsg:Ljava/lang/String;

    .line 4378
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->context:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_5

    const/4 v9, 0x0

    goto :goto_1e

    :catch_5
    move-exception v0

    move-object v2, v0

    const/4 v9, 0x0

    goto :goto_1d

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 4384
    :goto_1d
    :try_start_2d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 4388
    :cond_50
    :goto_1e
    sget-object v2, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    const-string v5, "Retailer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 4389
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v5, "isRetailerLatLongRequired"

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLondMandatory(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_52

    .line 4390
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_51

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_52

    .line 4394
    :cond_51
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvLatitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 4395
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvLongitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 4402
    :cond_52
    sget-object v2, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    const-string v5, "Distributor"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_53

    sget-object v2, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    const-string v5, "Dealer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 4403
    :cond_53
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v5, "isDistributorLatLongRequired"

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLondMandatory(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_55

    .line 4404
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_54

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_55

    .line 4408
    :cond_54
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvLatitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 4409
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tvLongitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_4

    const/4 v9, 0x0

    goto :goto_21

    :catch_7
    move-exception v0

    move/from16 v22, v9

    :goto_1f
    move-object v2, v0

    .line 4417
    :goto_20
    const-string v5, "AddRetailer"

    invoke-static {v5, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_55
    :goto_21
    move v11, v9

    .line 4421
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsConditions:[[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    const/4 v6, 0x1

    aget-object v2, v2, v6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 4422
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

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

    if-lez v2, :cond_57

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-gtz v2, :cond_56

    goto :goto_22

    .line 4428
    :cond_56
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-direct {v1, v2, v6}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_23

    .line 4423
    :cond_57
    :goto_22
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_stateText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 4424
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_stateText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 4431
    :cond_58
    :goto_23
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsConditions:[[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v2, v2, v6

    aget-object v2, v2, v6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 4432
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

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

    if-lez v2, :cond_5a

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

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

    if-gtz v2, :cond_59

    goto :goto_24

    .line 4438
    :cond_59
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-direct {v1, v2, v7}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_25

    .line 4434
    :cond_5a
    :goto_24
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_districtText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 4441
    :cond_5b
    :goto_25
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsConditions:[[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v2, v2, v6

    const/4 v7, 0x1

    aget-object v2, v2, v7

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 4442
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

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

    if-lez v2, :cond_5d

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

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

    if-gtz v2, :cond_5c

    goto :goto_26

    .line 4448
    :cond_5c
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-direct {v1, v2, v6}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_27

    .line 4443
    :cond_5d
    :goto_26
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 4444
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_mandalsText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 4451
    :cond_5e
    :goto_27
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsConditions:[[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v2, v2, v6

    const/4 v7, 0x1

    aget-object v2, v2, v7

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 4452
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

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

    if-lez v2, :cond_60

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

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

    if-gtz v2, :cond_5f

    goto :goto_28

    .line 4458
    :cond_5f
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_29

    .line 4454
    :cond_60
    :goto_28
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsET:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_villageText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2a

    :cond_61
    :goto_29
    move v5, v11

    :goto_2a
    return v5
.end method


# virtual methods
.method public addIndividualGeoDetails(ILjava/lang/String;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 7

    .line 854
    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 855
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 856
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v0, 0x4

    const/4 v2, 0x0

    .line 857
    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 858
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 859
    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    .line 860
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 862
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 863
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v3, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 864
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 866
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x13

    .line 867
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 868
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->context:Landroid/content/Context;

    const v6, 0x7f11015b

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 869
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
    const-string v0, "1"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_0

    .line 872
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

    .line 874
    :cond_0
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    :goto_0
    const-string p2, "operation"

    invoke-virtual {p4, p2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 877
    invoke-virtual {p4, p1}, Landroid/widget/EditText;->setId(I)V

    .line 878
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const p1, 0x7f080096

    .line 879
    invoke-virtual {p4, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const p1, 0x7f0800d7

    .line 880
    invoke-virtual {p4, v2, v2, p1, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 881
    invoke-virtual {p4, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 882
    invoke-virtual {p4, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 p1, 0x11

    .line 883
    invoke-virtual {p4, p1}, Landroid/widget/EditText;->setGravity(I)V

    .line 884
    invoke-virtual {p4, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 886
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 887
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 889
    invoke-virtual {p3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 890
    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 892
    invoke-virtual {p5, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILandroid/widget/LinearLayout;IILcom/conceptglobal/pmc/model/DynamicFields;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p8

    const-string v6, "select Column3 from DealerMaster where ContactID = \'"

    .line 990
    iget v7, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mForOperations:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mForOperations:I

    .line 991
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x3f800000    # 1.0f

    .line 992
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 993
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x1

    .line 1063
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 993
    invoke-direct {v10, v12, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v9, 0x4

    const/4 v11, 0x0

    .line 994
    invoke-virtual {v10, v11, v9, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 995
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 996
    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x10

    .line 997
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 999
    iget v9, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->layoutId:I

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1001
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v10, 0x13

    .line 1002
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 1003
    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->context:Landroid/content/Context;

    const v14, 0x7f11015b

    invoke-virtual {v9, v10, v14}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1004
    const-string v10, "1"

    if-eqz v3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "true"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1005
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "<font color=\'#ff0000\'>*</font>"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1007
    :cond_1
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    :goto_0
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1010
    iget v3, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mForDates:I

    add-int/2addr v3, v8

    iput v3, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mForDates:I

    .line 1021
    const-string v3, "Dropdown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v15, "Multiselect Dropdown"

    const-string v12, "Number"

    const-string v8, "Email"

    const-string v11, "Decimal"

    const-string v14, "Datepicker_MMDD"

    move-object/from16 p9, v7

    const-string v7, "Numeric Field"

    move-object/from16 p12, v9

    const-string v9, "Datepicker"

    const/16 v16, 0x0

    move-object/from16 p14, v12

    const-string v12, "textbox"

    if-eqz v3, :cond_2

    .line 1022
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1023
    const-string v3, "operation"

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1025
    iget v3, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mForOperations:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setId(I)V

    .line 1026
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v3, 0x7f080096

    .line 1027
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const v3, 0x7f0800d7

    const/4 v5, 0x0

    .line 1028
    invoke-virtual {v0, v5, v5, v3, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1029
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->operationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1030
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v3, 0x11

    .line 1031
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 1032
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setLongClickable(Z)V

    move-object/from16 v3, p14

    move-object v5, v0

    move-object/from16 v18, v14

    move-object/from16 p3, v15

    move-object/from16 v0, v16

    move-object v6, v0

    :goto_1
    move-object v10, v6

    move-object v13, v10

    :goto_2
    move-object v14, v13

    goto/16 :goto_a

    .line 1037
    :cond_2
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1038
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1039
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1040
    iget v3, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mForOperations:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1041
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f080096

    .line 1044
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/4 v3, 0x0

    .line 1045
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v5, 0x11

    .line 1046
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setGravity(I)V

    const v5, 0x7f0800d7

    .line 1047
    invoke-virtual {v0, v3, v3, v5, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1048
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v3, p14

    move-object/from16 v18, v14

    move-object/from16 p3, v15

    move-object/from16 v5, v16

    move-object v6, v5

    move-object v10, v6

    move-object v13, v10

    move-object v14, v13

    move-object/from16 v16, v0

    move-object v0, v14

    goto/16 :goto_a

    .line 1049
    :cond_3
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 p3, v15

    const v15, 0x7f0800c8

    if-eqz v3, :cond_5

    .line 1050
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1051
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1052
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1053
    iget v0, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mForDates:I

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setId(I)V

    const/4 v5, 0x0

    .line 1054
    invoke-virtual {v3, v5, v5, v15, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const/16 v0, 0x11

    .line 1055
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setGravity(I)V

    const v0, 0x7f080096

    .line 1056
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1057
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->datesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1058
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1059
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setLongClickable(Z)V

    const v0, 0x7f100006

    .line 1063
    invoke-virtual {v3, v0, v13}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f100005

    .line 1064
    invoke-virtual {v3, v0, v13}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    if-lez p11, :cond_4

    const v0, 0x7f100006

    .line 1066
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    :cond_4
    if-lez p10, :cond_6

    const v0, 0x7f100005

    .line 1068
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    goto :goto_3

    .line 1069
    :cond_5
    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1070
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1071
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1072
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1073
    iget v0, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mForDates:I

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setId(I)V

    const/16 v0, 0x11

    .line 1074
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setGravity(I)V

    const/4 v5, 0x0

    .line 1075
    invoke-virtual {v3, v5, v5, v15, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v0, 0x7f080096

    .line 1076
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1077
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->datesListenerYearless:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1078
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1079
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setLongClickable(Z)V

    :cond_6
    :goto_3
    move-object v6, v3

    move-object/from16 v18, v14

    move-object/from16 v0, v16

    move-object v5, v0

    move-object v10, v5

    move-object v13, v10

    :goto_4
    move-object v14, v13

    move-object/from16 v3, p14

    goto/16 :goto_a

    .line 1083
    :cond_7
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v15, 0x2

    const-string v13, "b"

    if-eqz v3, :cond_8

    .line 1084
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1085
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1086
    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 1087
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 1088
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 1089
    invoke-virtual {v0, v15}, Landroid/widget/EditText;->setInputType(I)V

    .line 1090
    new-array v5, v3, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v6, 0x6

    invoke-direct {v3, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v3, 0x5

    .line 1091
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v3, p14

    move-object/from16 v18, v14

    move-object/from16 v5, v16

    :goto_5
    move-object v6, v5

    goto/16 :goto_1

    .line 1095
    :cond_8
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b

    .line 1096
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x1

    .line 1097
    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1098
    invoke-virtual {v3, v13}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v13, 0x7f080096

    .line 1099
    invoke-virtual {v3, v13}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v13, 0x11

    .line 1100
    invoke-virtual {v3, v13}, Landroid/widget/EditText;->setGravity(I)V

    if-lez v5, :cond_9

    .line 1103
    new-array v13, v15, [Landroid/text/InputFilter;

    new-instance v15, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v15, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v15, v13, v5

    invoke-virtual {v3, v13}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    move-object/from16 v18, v14

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    const/4 v13, 0x1

    .line 1105
    new-array v15, v13, [Landroid/text/InputFilter;

    new-instance v13, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v18, v14

    const/16 v14, 0x64

    invoke-direct {v13, v14}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v13, v15, v5

    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_6
    const/4 v5, 0x5

    .line 1107
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1108
    const-string v5, "Retailer Shop Name"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1111
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1112
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1113
    invoke-direct {v1, v3}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setEditableFalse(Landroid/widget/EditText;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 1115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_7
    move-object v10, v3

    move-object/from16 v0, v16

    move-object v5, v0

    move-object v6, v5

    move-object v13, v6

    goto/16 :goto_4

    :cond_b
    move-object/from16 v18, v14

    .line 1122
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1123
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1124
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1125
    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v6, 0x7f080096

    .line 1126
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v6, 0x11

    .line 1127
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setGravity(I)V

    const/16 v6, 0x2002

    .line 1128
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setInputType(I)V

    if-lez v5, :cond_c

    .line 1130
    new-array v6, v3, [Landroid/text/InputFilter;

    new-instance v10, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DecimalDigitsInputFilter;

    invoke-direct {v10, v1, v5, v15}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;II)V

    const/4 v5, 0x0

    aput-object v10, v6, v5

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_8

    :cond_c
    const/4 v5, 0x0

    .line 1133
    new-array v6, v3, [Landroid/text/InputFilter;

    new-instance v3, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DecimalDigitsInputFilter;

    const/16 v10, 0x14

    invoke-direct {v3, v1, v10, v15}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;II)V

    aput-object v3, v6, v5

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_8
    move-object/from16 v3, p14

    move-object v13, v0

    move-object/from16 v0, v16

    move-object v5, v0

    move-object v6, v5

    move-object v10, v6

    move-object v14, v10

    goto/16 :goto_a

    .line 1139
    :cond_d
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1140
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1141
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1142
    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v3, 0x7f080096

    .line 1143
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v3, 0x11

    .line 1144
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setGravity(I)V

    const/16 v3, 0x20

    .line 1145
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    move-object/from16 v3, p14

    move-object v14, v0

    move-object/from16 v0, v16

    move-object v5, v0

    move-object v6, v5

    move-object v10, v6

    move-object v13, v10

    goto/16 :goto_a

    .line 1149
    :cond_e
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v3, p14

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1150
    new-instance v6, Landroid/widget/EditText;

    invoke-direct {v6, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    .line 1151
    invoke-virtual {v6, v10}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1152
    const-string v10, "n"

    invoke-virtual {v6, v10}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v10, 0x7f080096

    .line 1153
    invoke-virtual {v6, v10}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v10, 0x11

    .line 1154
    invoke-virtual {v6, v10}, Landroid/widget/EditText;->setGravity(I)V

    .line 1155
    invoke-virtual {v6, v15}, Landroid/widget/EditText;->setInputType(I)V

    .line 1156
    const-string v10, "Mobile"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1157
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mobile:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 1158
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mobile:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1159
    :cond_f
    invoke-direct {v1, v6}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_10
    if-lez v5, :cond_11

    const/4 v10, 0x1

    .line 1162
    new-array v0, v10, [Landroid/text/InputFilter;

    new-instance v13, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v13, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v13, v0, v5

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_9

    :cond_11
    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 1164
    new-array v0, v10, [Landroid/text/InputFilter;

    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    const/16 v13, 0x1e

    invoke-direct {v10, v13}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v10, v0, v5

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_9
    const/4 v0, 0x5

    .line 1166
    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object v10, v6

    move-object/from16 v0, v16

    move-object v5, v0

    move-object v6, v5

    move-object v13, v6

    goto/16 :goto_2

    :cond_12
    move-object/from16 v3, p14

    :cond_13
    move-object/from16 v0, v16

    move-object v5, v0

    goto/16 :goto_5

    .line 1171
    :goto_a
    new-instance v15, Landroid/widget/EditText;

    invoke-direct {v15, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1172
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p14, v3

    const v3, 0x3f19999a    # 0.6f

    move-object/from16 v17, v14

    const/4 v14, -0x1

    invoke-direct {v1, v14, v14, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1173
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p4, v8

    const v8, 0x3ecccccd    # 0.4f

    invoke-direct {v3, v14, v14, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1174
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, 0x0

    invoke-direct {v8, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v14, p12

    .line 1175
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1176
    invoke-virtual {v15, v8}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1177
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v8, "DropDown"

    if-eqz v1, :cond_14

    .line 1178
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_b
    move-object/from16 p7, v3

    move-object/from16 p1, v15

    move-object/from16 v1, v18

    :goto_c
    move-object/from16 v3, p9

    move-object/from16 v15, p14

    goto/16 :goto_f

    .line 1179
    :cond_14
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1180
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    .line 1181
    :cond_15
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1182
    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    :cond_16
    move-object/from16 v1, v18

    .line 1183
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 1184
    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_d
    move-object/from16 p7, v3

    move-object/from16 p1, v15

    goto :goto_c

    .line 1185
    :cond_17
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_18

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_18

    .line 1186
    invoke-virtual {v10, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    .line 1187
    :cond_18
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_19

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 1188
    invoke-virtual {v13, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    .line 1189
    :cond_19
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    move-object/from16 p1, v15

    if-eqz v18, :cond_1a

    move-object/from16 v15, p4

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    move-object/from16 v15, v17

    if-eqz v18, :cond_1b

    .line 1190
    invoke-virtual {v15, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 p7, v3

    goto :goto_c

    :cond_1a
    move-object/from16 v15, v17

    .line 1191
    :cond_1b
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1c

    move-object/from16 v17, v15

    move-object/from16 v15, p14

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1d

    .line 1192
    invoke-virtual {v10, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    :cond_1c
    move-object/from16 v17, v15

    move-object/from16 v15, p14

    :cond_1d
    :goto_e
    move-object/from16 p7, v3

    move-object/from16 v3, p9

    .line 1194
    :goto_f
    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1195
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1e

    .line 1196
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_10
    move-object/from16 v18, v13

    move-object/from16 p14, v15

    move-object/from16 v13, v17

    :goto_11
    move-object/from16 v15, p13

    goto/16 :goto_13

    .line 1197
    :cond_1e
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1f

    .line 1198
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 1199
    :cond_1f
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_20

    .line 1200
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 1201
    :cond_20
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_21

    .line 1202
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 1203
    :cond_21
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_22

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_22

    .line 1204
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 1205
    :cond_22
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_23

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_23

    .line 1206
    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 1207
    :cond_23
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_24

    move-object/from16 v18, v13

    move-object/from16 v13, p4

    invoke-virtual {v4, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    move-object/from16 v13, v17

    if-eqz v19, :cond_25

    .line 1208
    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_12

    :cond_24
    move-object/from16 v18, v13

    move-object/from16 v13, v17

    .line 1209
    :cond_25
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_26

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_26

    .line 1210
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_26
    :goto_12
    move-object/from16 p14, v15

    goto :goto_11

    .line 1212
    :goto_13
    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v15, 0x1

    .line 1213
    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_28

    move-object/from16 v17, v13

    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    instance-of v13, v13, Landroid/widget/EditText;

    if-eqz v13, :cond_27

    .line 1214
    invoke-virtual/range {p16 .. p16}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsReadOnly()I

    move-result v13

    if-ne v13, v15, :cond_27

    .line 1215
    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v15, p0

    invoke-direct {v15, v13}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setEditableFalse(Landroid/widget/EditText;)V

    goto :goto_14

    :cond_27
    move-object/from16 v15, p0

    goto :goto_14

    :cond_28
    move-object/from16 v15, p0

    move-object/from16 v17, v13

    .line 1219
    :goto_14
    iget-object v13, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mattributesnamesArr:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1220
    iget-object v13, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArrIds:Ljava/util/ArrayList;

    move-object/from16 v14, p1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1221
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 1222
    iget-object v1, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 1223
    :cond_29
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1224
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 1225
    :cond_2a
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1226
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 1227
    :cond_2b
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1228
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 1229
    :cond_2c
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2d

    .line 1230
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 1231
    :cond_2d
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1232
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 1233
    :cond_2e
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    move-object/from16 v1, p4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1234
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 1235
    :cond_2f
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    move-object/from16 v1, p14

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1236
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_30
    move-object/from16 v1, p3

    .line 1237
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    move-object/from16 v0, p7

    move-object/from16 v1, v16

    .line 1238
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1239
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1240
    iget-object v0, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    :cond_31
    :goto_15
    iget v0, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->layoutId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v15, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->layoutId:I

    return-void
.end method

.method public checkFarmerInTerritory(Ljava/lang/String;)V
    .locals 6

    .line 4827
    const-string v0, "No Retailer data found."

    :try_start_0
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/Encryption;->encryptRemovenewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4830
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->contactID:Ljava/lang/String;

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->typeOfCustomer:I

    invoke-virtual {v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->isMobileExistsForRetailer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 4831
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryRetailerQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTerritoryDealerDetails(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;

    move-result-object v2

    .line 4832
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;->getContactId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4833
    invoke-direct {p0, v2}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->showDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 4835
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryRetailerQry1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTerritoryDealerDetails(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;

    move-result-object p1

    .line 4836
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->showDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;)V

    goto :goto_0

    .line 4838
    :cond_1
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->showNoDataAvailableDialog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4840
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4841
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->showNoDataAvailableDialog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 391
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

    .line 4672
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->listDealerCrops:Ljava/util/List;

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

    .line 4673
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DealerCropMapping;->getCropId()I

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DealerCropMapping;->getContactId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4674
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

    .line 2943
    :try_start_0
    invoke-static/range {p1 .. p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2947
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object v2

    .line 2948
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->getFormatName()Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2951
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2952
    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->processScannedData(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2954
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Scan Cancelled"

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2955
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 2959
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "No scan data received!"

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2960
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    .line 2964
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2965
    const-string v0, " Please enter manually"

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 2968
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

    .line 2976
    const-string v0, "AddRetailer"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Navigation"

    const-string v4, "Image Capture End"

    invoke-static {v3, v4, v0, v2}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2977
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->imagelist:Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2978
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setAdapter()V

    goto/16 :goto_6

    :cond_4
    if-eqz v2, :cond_b

    if-eqz v3, :cond_b

    .line 2999
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "isfrom"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 3000
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3001
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 3003
    :try_start_1
    aget-object v0, v4, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 3004
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    .line 3008
    :cond_5
    :goto_0
    const-string v0, "FarmerId"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3009
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    if-eqz v4, :cond_6

    .line 3012
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3013
    aget-object v12, v4, v5

    .line 3014
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/conceptglobal/pmc/common/Queries;->getListOfAttributesUpdate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3015
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 3016
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

    .line 3018
    :try_start_3
    iget v10, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->segmentID:I
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

    .line 3020
    :goto_2
    :try_start_5
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tag:Ljava/lang/String;

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

    .line 3025
    :goto_4
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tag:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_6
    move-wide/from16 v18, v14

    :goto_5
    const/high16 v0, 0x20000

    .line 3028
    const-string v7, "ASSIGNMENTID"

    const-string v8, "TRANSID"

    const-string v9, "SEGMENTID"

    const-string v10, "ACTIVITYNAME"

    const-string v11, "ACTIVITYID"

    const/high16 v12, 0x4000000

    if-ne v2, v6, :cond_7

    .line 3029
    new-instance v2, Landroid/content/Intent;

    const-class v13, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-direct {v2, v1, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3030
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3031
    aget-object v3, v4, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3032
    aget-object v3, v4, v6

    invoke-virtual {v2, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3033
    iget v3, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->segmentID:I

    invoke-virtual {v2, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-wide/from16 v13, v18

    .line 3035
    invoke-virtual {v2, v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3036
    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3037
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3038
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->startActivity(Landroid/content/Intent;)V

    .line 3039
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->finish()V

    goto :goto_6

    :cond_7
    move-wide/from16 v13, v18

    .line 3041
    new-instance v2, Landroid/content/Intent;

    const-class v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-direct {v2, v1, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3042
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v15

    invoke-virtual {v15}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3043
    aget-object v3, v4, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3044
    aget-object v3, v4, v6

    invoke-virtual {v2, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3045
    iget v3, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->segmentID:I

    invoke-virtual {v2, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3046
    const-string v3, "ISSELFASSIGN"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3047
    invoke-virtual {v2, v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3048
    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3049
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3050
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->startActivity(Landroid/content/Intent;)V

    .line 3051
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->finish()V

    goto :goto_6

    :cond_8
    if-eq v2, v4, :cond_a

    if-eqz v2, :cond_9

    goto :goto_6

    .line 2989
    :cond_9
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string v2, "GPSNotTurnedOn"

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_6

    .line 2984
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->fetchLocation()V

    :cond_b
    :goto_6
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 2779
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 2849
    :sswitch_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    const-wide/16 v0, 0x65

    .line 2850
    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->captureImage(J)V

    goto/16 :goto_1

    .line 2852
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getApplication()Landroid/app/Application;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_maxImagesToast()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2827
    :sswitch_1
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->status:I

    .line 2829
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->validation()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 2831
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 2832
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->images:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2835
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tag:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 2837
    :cond_1
    new-instance p1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;

    invoke-direct {p1, p0, p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;Landroid/content/Context;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 2839
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->validationFailedMsg:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 2840
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->validationFailedMsg:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2841
    const-string p1, ""

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->validationFailedMsg:Ljava/lang/String;

    goto :goto_1

    .line 2843
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_validationToast()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2782
    :sswitch_2
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->fetchLocation()V

    goto :goto_1

    .line 2858
    :sswitch_3
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "android.permission.CAMERA"

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_4

    .line 2860
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x64

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 2864
    :cond_4
    new-instance p1, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-direct {p1, p0}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    .line 2865
    const-string v2, "QR_CODE"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/zxing/integration/android/IntentIntegrator;->setDesiredBarcodeFormats([Ljava/lang/String;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 2866
    const-string v2, "Scan a Aadharcard QR Code"

    invoke-virtual {p1, v2}, Lcom/google/zxing/integration/android/IntentIntegrator;->setPrompt(Ljava/lang/String;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 2867
    invoke-virtual {p1, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->setCameraId(I)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 2868
    invoke-virtual {p1, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->setBeepEnabled(Z)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 2869
    invoke-virtual {p1, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->setBarcodeImageEnabled(Z)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 2870
    invoke-virtual {p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090080 -> :sswitch_3
        0x7f0900a4 -> :sswitch_2
        0x7f0900af -> :sswitch_1
        0x7f090245 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 282
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 287
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 288
    const-string v0, "farmerType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    .line 289
    const-string v0, "isFraom"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isFraom:Ljava/lang/String;

    const v0, 0x7f0c0051

    .line 290
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setContentView(I)V

    .line 291
    iput-object p0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->context:Landroid/content/Context;

    .line 292
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 293
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 294
    new-instance v0, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 295
    const-string v0, "AddRetailer"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "onCreate()"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v0, "FromSelfAssignment"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isFromSelfAssignment:Z

    .line 300
    :cond_0
    const-string v0, "isFromTestimonal"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isFromTestimonal:Z

    .line 303
    :cond_1
    const-string v0, "isFromFeedBack"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 304
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isFromFeedBack:Z

    .line 306
    :cond_2
    const-string v0, "isFromSurvey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 307
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isFromSurvey:Z

    .line 309
    :cond_3
    sget-object p1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    const-string v0, "Retailer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "RetailerGeoDetails"

    const-string v1, "DealerMaster"

    const/4 v2, 0x2

    const-string v3, "("

    const-string v4, ")"

    if-eqz p1, :cond_7

    .line 310
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    const-string v5, "Value Chain Partner("

    if-eq p1, v2, :cond_5

    .line 311
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_retailerDetailsText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 312
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_0

    .line 314
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_retailerDetailsText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 316
    :cond_5
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_retailerDetailsText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    .line 317
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 319
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_retailerDetailsText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 322
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/conceptglobal/pmc/common/Queries;->getGeoDetailsCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getGeoDetailsConditions(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsConditions:[[Ljava/lang/String;

    .line 323
    iput v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->typeOfCustomer:I

    goto/16 :goto_2

    .line 324
    :cond_7
    sget-object p1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    const-string v5, "Distributor"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->farmerType:Ljava/lang/String;

    const-string v5, "Dealer"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 325
    :cond_8
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    const-string v5, "Add Distributor("

    if-eq p1, v2, :cond_a

    .line 326
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addDistributorText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    .line 327
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_1

    .line 329
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addDistributorText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_1

    .line 331
    :cond_a
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addDistributorText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    .line 332
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_1

    .line 334
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addDistributorText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 337
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/conceptglobal/pmc/common/Queries;->getGeoDetailsCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getGeoDetailsConditions(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsConditions:[[Ljava/lang/String;

    const/4 p1, 0x3

    .line 338
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->typeOfCustomer:I

    .line 341
    :cond_c
    :goto_2
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->initialization()V

    .line 342
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->settingTabs()V

    .line 343
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->gettingData()V

    .line 344
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->enableGeoDetailsLayout()V

    .line 345
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->createOperationAttributes()V

    .line 346
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->bindOperations()V

    .line 348
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tabHost:Landroid/widget/TabHost;

    new-instance v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$1;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 368
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->gridView:Landroid/widget/GridView;

    new-instance v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$2;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f0901de

    .line 374
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    .line 375
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$3;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->message:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "send"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2556
    :cond_0
    new-instance p1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$14;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mDateSetListener_Yearless:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mYear:I

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mMonth:I

    iget v6, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mDay:I

    move-object v0, p1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$14;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 2562
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectDayMonthDPTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2564
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "android"

    const-string v3, "year"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2566
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 2568
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-object p1

    .line 2528
    :cond_2
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mYear:I

    iget v6, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mMonth:I

    iget v7, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mDay:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 2530
    :try_start_0
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMinDate()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->defaultMinDate:J

    .line 2531
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMaxDate()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->defaultMaxDate:J

    .line 2532
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 2533
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->datePos:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, -0x1

    if-eqz v2, :cond_3

    const v4, 0x7f100006

    .line 2535
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

    .line 2536
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 2537
    invoke-virtual {v5, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2538
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

    .line 2539
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 2540
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    :cond_3
    if-eqz v2, :cond_4

    const v4, 0x7f100005

    .line 2543
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

    .line 2544
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 2545
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2547
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 2548
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2549
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
    .locals 3

    .line 2769
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09024c

    .line 2770
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->btn_Draft:Landroid/view/MenuItem;

    .line 2771
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draftFarmerText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2772
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

    .line 4649
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->message:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4650
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onDestroy()V

    .line 4651
    const-string v0, "AddRetailer"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "onDestroy"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 2716
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f09024c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2726
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->status:I

    .line 2727
    new-instance v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;

    invoke-direct {v1, p0, p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;-><init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;Landroid/content/Context;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2730
    :goto_0
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 2718
    :cond_1
    iget p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isFromTransaction:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 2719
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->showGoBackDialog()V

    goto :goto_1

    .line 2721
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->finish()V

    :goto_1
    return v0
.end method

.method public onProvideAssistData(Landroid/os/Bundle;)V
    .locals 0

    .line 485
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onProvideAssistData(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 4900
    const-string p2, "onRequestPermissionResult"

    const-string v0, "AddRetailer"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 4902
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 4905
    const-string p1, "User interaction was cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4907
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 4909
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->fetchLocation()V

    goto :goto_0

    .line 4912
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 4640
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    .line 4641
    const-string v0, "AddRetailer"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "onResume()"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4642
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setAdapter()V

    .line 4643
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4644
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    .line 739
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 740
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mListPopupOne:Lcom/conceptglobal/pmc/common/ListPopupOne;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b

    .line 743
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_b

    .line 744
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

    .line 819
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->companyOrCropTab:Ljava/lang/String;

    const-string p2, "Crops"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 820
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->showAddCropSalesDialog(Ljava/lang/String;FI)V

    goto/16 :goto_4

    .line 801
    :cond_3
    const-string p2, "VillageMaster"

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tableName:Ljava/lang/String;

    .line 802
    const-string p2, "mandalId"

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->columnName:Ljava/lang/String;

    .line 804
    :try_start_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tableName:Ljava/lang/String;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->columnName:Ljava/lang/String;

    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

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

    .line 806
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tag:Ljava/lang/String;

    invoke-static {v4, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_0
    if-lez p2, :cond_4

    .line 809
    new-instance p2, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    .line 810
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 809
    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->gettinVillages(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    .line 810
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/TextView;

    move-object v6, p2

    move-object v10, p1

    invoke-direct/range {v6 .. v11}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 811
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 812
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 813
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_4

    .line 815
    :cond_4
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_thereIsNoText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 782
    :cond_5
    const-string p2, "MandalMaster"

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tableName:Ljava/lang/String;

    .line 783
    const-string p2, "Districtid"

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->columnName:Ljava/lang/String;

    .line 785
    :try_start_1
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tableName:Ljava/lang/String;

    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->columnName:Ljava/lang/String;

    iget-object v9, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

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

    .line 787
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tag:Ljava/lang/String;

    invoke-static {v6, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_1
    if-lez p2, :cond_6

    .line 790
    new-instance p2, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->context:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    .line 791
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 790
    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->gettingMandals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    .line 791
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/TextView;

    move-object v6, p2

    move-object v10, p1

    invoke-direct/range {v6 .. v11}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 792
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 793
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 794
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_4

    .line 796
    :cond_6
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_thereIsNoText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 763
    :cond_7
    const-string p2, "DistrictMaster"

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tableName:Ljava/lang/String;

    .line 764
    const-string p2, "StateId "

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->columnName:Ljava/lang/String;

    .line 766
    :try_start_2
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tableName:Ljava/lang/String;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->columnName:Ljava/lang/String;

    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

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

    .line 768
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tag:Ljava/lang/String;

    invoke-static {v5, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_2
    if-lez p2, :cond_8

    .line 771
    new-instance p2, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    .line 772
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 771
    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/common/Queries;->gettingDistricts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    .line 772
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/TextView;

    move-object v5, p2

    move-object v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 773
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 774
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 775
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_4

    .line 777
    :cond_8
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_thereIsNoText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 747
    :cond_9
    :try_start_3
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->gettingStateCount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->masterTablecount:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 749
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->tag:Ljava/lang/String;

    invoke-static {v4, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 751
    :goto_3
    iget p2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->masterTablecount:I

    if-lez p2, :cond_a

    .line 752
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 753
    new-instance p2, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->geoDetailsTV:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/TextView;

    move-object v4, p2

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 754
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 755
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 756
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_4

    .line 758
    :cond_a
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_thereIsNoText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

.method protected processScannedData(Ljava/lang/String;)V
    .locals 9

    .line 4690
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

    .line 4691
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->aadharRawData:Ljava/lang/String;

    goto :goto_0

    .line 4693
    :cond_0
    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->aadharRawData:Ljava/lang/String;

    .line 4696
    :goto_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 4698
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 4700
    const-string v3, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 4701
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 4704
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

    .line 4707
    const-string p1, "PrintLetterBarcodeData"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 4710
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    .line 4711
    :goto_2
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 4712
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    .line 4713
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4716
    :cond_2
    const-string v3, "uid"

    const/4 v5, 0x0

    invoke-interface {v1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4717
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "RetailerAdharNumber"

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getItemValueFromConfigurableLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 4718
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 4719
    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

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

    .line 4721
    :cond_3
    const-string v3, "name"

    invoke-interface {v1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4722
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "RetailerAdharName"

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getItemValueFromConfigurableLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 4723
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 4724
    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

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

    .line 4728
    :cond_4
    const-string v3, "dob"

    invoke-interface {v1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4729
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "RetailerAdharDOB"

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getItemValueFromConfigurableLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 4730
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 4731
    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

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

    .line 4733
    :cond_5
    const-string v3, "co"

    invoke-interface {v1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 4734
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4735
    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4737
    :cond_6
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "RetailerAdharFather"

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getItemValueFromConfigurableLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 4738
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 4739
    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

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

    .line 4759
    :cond_7
    const-string v3, "pc"

    invoke-interface {v1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4760
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    const-string v7, "RetailerAdharPincode"

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getItemValueFromConfigurableLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 4761
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 4762
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->mEntryArr:Ljava/util/ArrayList;

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

    .line 4768
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

    .line 4775
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception p1

    .line 4773
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception p1

    .line 4771
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

    .line 490
    invoke-super/range {p0 .. p6}, Lcom/conceptglobal/pmc/BaseActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0

    .line 957
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method
