.class public Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;
.super Landroidx/fragment/app/Fragment;
.source "RetailersSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;,
        Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocalBroadcastReceiver;,
        Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;,
        Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;,
        Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;,
        Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$MyLocationListener;,
        Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$DecimalDigitsInputFilter;
    }
.end annotation


# static fields
.field private static final GETNEWACTIVITY:I = 0x2

.field private static farmerType:Ljava/lang/String;

.field private static mFragment:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

.field private static optionsMenu:Landroid/view/Menu;

.field public static twoDForm:Ljava/text/DecimalFormat;


# instance fields
.field private TAG:Ljava/lang/String;

.field private addCropQuery:Ljava/lang/String;

.field private addDistrictQuery:Ljava/lang/String;

.field private addLocationQuery:Ljava/lang/String;

.field private addRadiusQuery:Ljava/lang/String;

.field private addStateQuery:Ljava/lang/String;

.field private addTalukaQuery:Ljava/lang/String;

.field private attributesArry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/DynamicFields;",
            ">;"
        }
    .end annotation
.end field

.field private btnClear:Landroid/widget/TextView;

.field private btnGo:Landroid/widget/TextView;

.field private clearbtn:Landroid/widget/ImageView;

.field private counter:I

.field private cropSearch:Landroid/widget/EditText;

.field private dbllatitude:Ljava/lang/Double;

.field private dbllongitude:Ljava/lang/Double;

.field private dialog:Landroid/app/Dialog;

.field private dialogMsgTxtview:Landroid/widget/TextView;

.field private distanceInKiloMeters:I

.field private final districtChanged:Landroid/text/TextWatcher;

.field private districtSearch:Landroid/widget/EditText;

.field private draftList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;"
        }
    .end annotation
.end field

.field dynamicColumnnames:Ljava/lang/StringBuilder;

.field private fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

.field filterItem:Landroid/view/MenuItem;

.field private filtersLL:Landroid/widget/LinearLayout;

.field public fromFavourites:Ljava/lang/String;

.field private getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private getFarmerDetails:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

.field private hasLocation:Z

.field private ibCloseSort:Landroid/widget/Button;

.field private isDisplaySortDialog:Z

.field private isFrom:Ljava/lang/String;

.field isFromSelfAssignment:Z

.field private isGoBtnClicked:Z

.field isRaiusCheckRequired:J

.field private list:Landroidx/recyclerview/widget/RecyclerView;

.field listOfStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;"
        }
    .end annotation
.end field

.field private loadMore:Z

.field private loaderrl:Landroid/widget/RelativeLayout;

.field private locationControlTask:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;

.field private locationMgr:Landroid/location/LocationManager;

.field private locationSearch:Landroid/widget/EditText;

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

.field private mCallback:Lcom/conceptglobal/pmc/interfaces/IFragmentToActivity;

.field private mContext:Landroid/content/Context;

.field private mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocalBroadcastReceiver;

.field private mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

.field private final mandalChanged:Landroid/text/TextWatcher;

.field private mandalSearch:Landroid/widget/EditText;

.field private mobileSearchReceiver:Landroid/content/BroadcastReceiver;

.field private module:Ljava/lang/String;

.field private myLocationListener:Landroid/location/LocationListener;

.field no_data_found_ll:Landroid/widget/LinearLayout;

.field progressll:Landroid/widget/LinearLayout;

.field query:Ljava/lang/String;

.field private radioButton1:Landroid/widget/RadioButton;

.field private radioButton2:Landroid/widget/RadioButton;

.field private radioButton3:Landroid/widget/RadioButton;

.field private radioButton4:Landroid/widget/RadioButton;

.field private radioButton5:Landroid/widget/RadioButton;

.field private radioButton6:Landroid/widget/RadioButton;

.field private radiusSearch:Landroid/widget/EditText;

.field private rbDisplayType:Landroid/widget/RadioGroup;

.field private rbSort:Landroid/widget/RadioGroup;

.field private rb_All:Landroid/widget/RadioButton;

.field private rvSort:Landroid/widget/RelativeLayout;

.field scrollListener:Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;

.field searchMenuItem:Landroid/view/MenuItem;

.field private searchbtn:Landroid/widget/Button;

.field private searchkeyword:Landroid/widget/EditText;

.field private searchrl:Landroid/widget/RelativeLayout;

.field private showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

.field private final stateChanged:Landroid/text/TextWatcher;

.field private stateSearch:Landroid/widget/EditText;

.field private tag:Ljava/lang/String;

.field private tempGrowersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;"
        }
    .end annotation
.end field

.field private tvCropId:Landroid/widget/TextView;

.field private tvDistrictId:Landroid/widget/TextView;

.field private tvLocationId:Landroid/widget/TextView;

.field private tvMandalId:Landroid/widget/TextView;

.field private tvRadiusDetails:Landroid/widget/TextView;

.field private tvStateId:Landroid/widget/TextView;

.field weatherItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 146
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->twoDForm:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 112
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->fromFavourites:Ljava/lang/String;

    .line 136
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->addCropQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->addStateQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->addDistrictQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->addTalukaQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->addLocationQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->addRadiusQuery:Ljava/lang/String;

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->hasLocation:Z

    const/4 v1, 0x0

    .line 148
    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->module:Ljava/lang/String;

    .line 152
    const-string v2, "FarmerSearchActivity"

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->TAG:Ljava/lang/String;

    .line 154
    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->attributesArry:Ljava/util/ArrayList;

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->listOfStrings:Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    .line 172
    iput-wide v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isRaiusCheckRequired:J

    .line 184
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->counter:I

    .line 186
    new-instance v0, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->loadMore:Z

    .line 206
    const-string v1, "RetailersSearchFragment"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tag:Ljava/lang/String;

    .line 211
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->distanceInKiloMeters:I

    .line 463
    new-instance v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$1;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->stateChanged:Landroid/text/TextWatcher;

    .line 487
    new-instance v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$2;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->districtChanged:Landroid/text/TextWatcher;

    .line 508
    new-instance v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$3;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mandalChanged:Landroid/text/TextWatcher;

    .line 1165
    new-instance v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$12;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$12;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mobileSearchReceiver:Landroid/content/BroadcastReceiver;

    .line 1253
    new-instance v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$16;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$16;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getFarmerDetails:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    return-void
.end method

.method private OnDisplayTypeSelectCheckedChangeListener(Landroid/widget/RadioGroup;)V
    .locals 1

    .line 1754
    new-instance v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$20;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$20;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method private OnSelectCheckedChangeListener(Landroid/widget/RadioGroup;)V
    .locals 1

    .line 1775
    new-instance v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$21;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$21;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/database/GetDataFromDB;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Z
    .locals 0

    .line 112
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->hasLocation:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Z)Z
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->hasLocation:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/Double;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->dbllatitude:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->dbllatitude:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/Double;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->dbllongitude:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->dbllongitude:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/util/List;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tempGrowersList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tempGrowersList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/widget/EditText;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->radiusSearch:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/util/List;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->draftList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/content/Context;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isFrom:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/widget/TextView;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->locationControlTask:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;)Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->locationControlTask:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;

    return-object p1
.end method

.method static synthetic access$2300()Landroid/view/Menu;
    .locals 1

    .line 112
    sget-object v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->optionsMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)I
    .locals 0

    .line 112
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->counter:I

    return p0
.end method

.method static synthetic access$2408(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)I
    .locals 2

    .line 112
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->counter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->counter:I

    return v0
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->showMibileSearchDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->showAlertDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;)Z
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isValidMobileNumber(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->callMobileDetailsApi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/widget/EditText;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->districtSearch:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Lcom/conceptglobal/pmc/model/RetailerMobileDetails;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->showDetailsDialog(Lcom/conceptglobal/pmc/model/RetailerMobileDetails;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->showNoDataAvailableDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->fetchLocation()V

    return-void
.end method

.method static synthetic access$3300(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/utils/LocationUtils;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)I
    .locals 0

    .line 112
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->distanceInKiloMeters:I

    return p0
.end method

.method static synthetic access$3700(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->loaderrl:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$3800()Ljava/lang/String;
    .locals 1

    .line 112
    sget-object v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->farmerType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/util/List;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->refreshAdapter(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/widget/TextView;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvMandalId:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/util/List;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->resetDataAndNofityAdapter(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->createProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/app/Dialog;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->addCropQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4302(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->addCropQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->addStateQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4402(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->addStateQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->addDistrictQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4502(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->addDistrictQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->addTalukaQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4602(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->addTalukaQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->addLocationQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4702(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->addLocationQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->addRadiusQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4802(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->addRadiusQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/ifastscroll/FastScroller;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/widget/EditText;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mandalSearch:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->loadMore(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->rvSort:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/widget/TextView;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvLocationId:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/widget/EditText;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->locationSearch:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    return-object p0
.end method

.method static synthetic access$802(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    return-object p1
.end method

.method private callMobileDetailsApi(Ljava/lang/String;)V
    .locals 7

    .line 1243
    new-instance v6, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getFarmerDetails:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    .line 1244
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMobileDetailsUrlRetailer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 p1, 0x0

    .line 1245
    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v6, p1}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private createProgressDialog(Ljava/lang/String;)V
    .locals 4

    .line 1741
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 1742
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1743
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0114

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090305

    .line 1744
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->dialogMsgTxtview:Landroid/widget/TextView;

    .line 1745
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1746
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1747
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->dialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    .line 1748
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method private deg2rad(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p1, p1, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private enableGPS()V
    .locals 4

    .line 931
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 932
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_gpsTurnedOffAlert()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_gpsOKButton()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$6;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$6;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 939
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private fetchLocation()V
    .locals 5

    .line 1348
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tag:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "location capture started"

    invoke-static {v0, v3, v1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 1353
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$19;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$19;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1402
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initialization(Landroid/view/View;)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 276
    const-string v2, "Retailers within "

    const-string v3, "Distributor"

    const-string v4, "Dealer"

    const v5, 0x7f0901fe

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->filtersLL:Landroid/widget/LinearLayout;

    const v5, 0x7f09013f

    .line 277
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->cropSearch:Landroid/widget/EditText;

    .line 279
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cropFilterText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v5, 0x7f09014b

    .line 280
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->stateSearch:Landroid/widget/EditText;

    .line 281
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_stateFilterText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v5, 0x7f09014a

    .line 282
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mandalSearch:Landroid/widget/EditText;

    .line 283
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_talukaFilterText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v5, 0x7f090149

    .line 284
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->districtSearch:Landroid/widget/EditText;

    .line 285
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_districtFilterText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v5, 0x7f090143

    .line 286
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->locationSearch:Landroid/widget/EditText;

    .line 287
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_villageFilterText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v5, 0x7f090144

    .line 288
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->radiusSearch:Landroid/widget/EditText;

    .line 289
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_radiusFilterText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->radiusSearch:Landroid/widget/EditText;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setVisibility(I)V

    const v5, 0x7f090482

    .line 291
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvCropId:Landroid/widget/TextView;

    const v5, 0x7f0904d6

    .line 292
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvStateId:Landroid/widget/TextView;

    const v5, 0x7f0904b7

    .line 293
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvMandalId:Landroid/widget/TextView;

    const v5, 0x7f090495

    .line 294
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    const v5, 0x7f0904b6

    .line 295
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvLocationId:Landroid/widget/TextView;

    const v5, 0x7f0904bd

    .line 297
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvRadiusDetails:Landroid/widget/TextView;

    const v5, 0x7f090366

    .line 301
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->progressll:Landroid/widget/LinearLayout;

    const v5, 0x7f090329

    .line 302
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->no_data_found_ll:Landroid/widget/LinearLayout;

    const v5, 0x7f0903cd

    .line 303
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->searchkeyword:Landroid/widget/EditText;

    const v5, 0x7f0903cc

    .line 305
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->searchbtn:Landroid/widget/Button;

    const v5, 0x7f0902d1

    .line 306
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->loaderrl:Landroid/widget/RelativeLayout;

    const v5, 0x7f0903ce

    .line 307
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->searchrl:Landroid/widget/RelativeLayout;

    const v5, 0x7f0900f9

    .line 308
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->clearbtn:Landroid/widget/ImageView;

    const v5, 0x7f09036b

    .line 310
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->rb_All:Landroid/widget/RadioButton;

    const v5, 0x7f0901e8

    .line 312
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->btnGo:Landroid/widget/TextView;

    .line 313
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_goFilterText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0901e7

    .line 314
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->btnClear:Landroid/widget/TextView;

    .line 315
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_clearFilterText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f090381

    .line 317
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioGroup;

    iput-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->rbDisplayType:Landroid/widget/RadioGroup;

    .line 318
    invoke-direct {v1, v7}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->OnDisplayTypeSelectCheckedChangeListener(Landroid/widget/RadioGroup;)V

    const v7, 0x7f09036c

    .line 320
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    const v8, 0x7f09036d

    .line 321
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    .line 322
    const-string v9, "Focussed"

    invoke-virtual {v7, v9}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 323
    invoke-virtual {v8, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    const v7, 0x7f09028c

    .line 325
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v8, 0x1

    .line 326
    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 327
    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v7, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 328
    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 329
    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 331
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->searchrl:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v7, 0x7f090382

    .line 332
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioGroup;

    iput-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->rbSort:Landroid/widget/RadioGroup;

    .line 333
    invoke-direct {v1, v7}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->OnSelectCheckedChangeListener(Landroid/widget/RadioGroup;)V

    const v7, 0x7f0903d4

    .line 334
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    iput-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->radioButton1:Landroid/widget/RadioButton;

    const v7, 0x7f0903d3

    .line 335
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    iput-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->radioButton2:Landroid/widget/RadioButton;

    const v7, 0x7f0903af

    .line 336
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    iput-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->radioButton3:Landroid/widget/RadioButton;

    .line 337
    invoke-virtual {v7, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    const v7, 0x7f0903ae

    .line 338
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    iput-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->radioButton4:Landroid/widget/RadioButton;

    .line 339
    invoke-virtual {v7, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    const v7, 0x7f090015

    .line 340
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    iput-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->radioButton5:Landroid/widget/RadioButton;

    const v7, 0x7f090609

    .line 341
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    iput-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->radioButton6:Landroid/widget/RadioButton;

    const v7, 0x7f09039b

    .line 342
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->rvSort:Landroid/widget/RelativeLayout;

    const v7, 0x7f090099

    .line 343
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->ibCloseSort:Landroid/widget/Button;

    .line 344
    invoke-virtual {v7, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    const-string v7, "All"

    iput-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->fromFavourites:Ljava/lang/String;

    const v7, 0x7f0901e9

    .line 360
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/ifastscroll/FastScroller;

    iput-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    .line 363
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->stateSearch:Landroid/widget/EditText;

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->districtSearch:Landroid/widget/EditText;

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mandalSearch:Landroid/widget/EditText;

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->locationSearch:Landroid/widget/EditText;

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->searchbtn:Landroid/widget/Button;

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->clearbtn:Landroid/widget/ImageView;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->stateSearch:Landroid/widget/EditText;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->stateChanged:Landroid/text/TextWatcher;

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 372
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->districtSearch:Landroid/widget/EditText;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->districtChanged:Landroid/text/TextWatcher;

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 373
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mandalSearch:Landroid/widget/EditText;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mandalChanged:Landroid/text/TextWatcher;

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 375
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->btnGo:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->btnClear:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->draftList:Ljava/util/List;

    .line 380
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    .line 381
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/conceptglobal/pmc/common/Queries;->gettingDraftColunNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFieldsFirDraft(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->attributesArry:Ljava/util/ArrayList;

    const/4 v7, 0x0

    .line 382
    :goto_0
    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_0

    .line 383
    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 386
    :cond_0
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    const-string v9, "Latitude,"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    const-string v9, "Longitude"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->query:Ljava/lang/String;

    .line 390
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->draftList:Ljava/util/List;

    .line 392
    sget-object v7, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->farmerType:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->farmerType:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 397
    :cond_1
    sget-object v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->farmerType:Ljava/lang/String;

    const-string v5, "UnVerifiedRetailer"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    new-instance v0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->draftList:Ljava/util/List;

    const-string v12, "UnVerifiedRetailer"

    const-string v13, "0"

    iget-object v14, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isFrom:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v19}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZ)V

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    goto/16 :goto_2

    .line 402
    :cond_2
    new-instance v0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->draftList:Ljava/util/List;

    const-string v23, "Retailer"

    const-string v24, "0"

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isFrom:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/registration/DraftList;

    iget v9, v9, Lcom/conceptglobal/pmc/registration/DraftList;->segmentId:I

    iget-boolean v10, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isFromSelfAssignment:Z

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v11, v11, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTestmonial:Z

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v12, v12, Lcom/conceptglobal/pmc/registration/DraftList;->isFromFeedBack:Z

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    check-cast v13, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v13, v13, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    move-object/from16 v20, v0

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v25, v7

    move/from16 v26, v9

    move/from16 v27, v10

    move/from16 v28, v11

    move/from16 v29, v12

    move/from16 v30, v13

    invoke-direct/range {v20 .. v30}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZ)V

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    goto :goto_2

    .line 393
    :cond_3
    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 394
    invoke-virtual {v0, v6}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 396
    new-instance v0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->draftList:Ljava/util/List;

    const-string v12, "Distributor"

    const-string v13, "0"

    iget-object v14, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isFrom:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/registration/DraftList;

    iget v15, v5, Lcom/conceptglobal/pmc/registration/DraftList;->segmentId:I

    iget-boolean v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isFromSelfAssignment:Z

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v6, v6, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTestmonial:Z

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v7, v7, Lcom/conceptglobal/pmc/registration/DraftList;->isFromFeedBack:Z

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v9, v9, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    move/from16 v19, v9

    move-object v9, v0

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-direct/range {v9 .. v19}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZ)V

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    .line 406
    :goto_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 407
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v5}, Lcom/conceptglobal/ifastscroll/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 415
    :try_start_1
    sget-object v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->farmerType:Ljava/lang/String;

    const-string v5, "Retailer"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, " KM\u2019s only visible here"

    if-eqz v0, :cond_4

    .line 416
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    const-string v4, "SARetailerRadius"

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->distanceInKiloMeters:I

    .line 417
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvRadiusDetails:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->distanceInKiloMeters:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    const-string v0, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->distanceInKiloMeters:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 419
    :cond_4
    sget-object v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->farmerType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->farmerType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 420
    :cond_5
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v3, "SADistributorRadius"

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->distanceInKiloMeters:I

    .line 421
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvRadiusDetails:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dealers within "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->distanceInKiloMeters:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 424
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 426
    :cond_6
    :goto_3
    iget v0, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->distanceInKiloMeters:I

    if-gtz v0, :cond_7

    .line 427
    iput v8, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->distanceInKiloMeters:I

    .line 429
    :cond_7
    const-string v0, "-1"

    const-string v2, "0"

    invoke-direct {v1, v0, v2}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->loadMore(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 433
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method private isValidMobileNumber(Ljava/lang/String;)Z
    .locals 1

    .line 1237
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

.method private loadMore(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 440
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isGoBtnClicked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 441
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isGoBtnClicked:Z

    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->showLoading(Z)V

    .line 445
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->notifyDataSetChanged()V

    .line 448
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v3, "SARetailerDealerRadiusCheckRequired"

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isRaiusCheckRequired:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 452
    :goto_0
    sget-object v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->farmerType:Ljava/lang/String;

    const-string v2, "UnVerifiedRetailer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isFromSelfAssignment:Z

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isRaiusCheckRequired:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    .line 453
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->fetchLocation()V

    goto :goto_1

    .line 455
    :cond_1
    new-instance v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$1;)V

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 457
    :goto_1
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isFromSelfAssignment:Z

    if-eqz p1, :cond_2

    iget-wide p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isRaiusCheckRequired:J

    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    .line 458
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvRadiusDetails:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;
    .locals 2

    .line 223
    new-instance v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mFragment:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    .line 224
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 225
    const-string v1, "farmerType"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mFragment:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 227
    sget-object p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mFragment:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    return-object p0
.end method

.method private rad2deg(D)D
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double p1, p1, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private refreshAdapter(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;)V"
        }
    .end annotation

    .line 1556
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->draftList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1558
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->showLoading(Z)V

    const/4 v0, 0x1

    .line 1559
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->loadMore:Z

    .line 1560
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->draftList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1561
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->draftList:Ljava/util/List;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 1562
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-virtual {p1, v1}, Lcom/conceptglobal/ifastscroll/FastScroller;->setVisibility(I)V

    .line 1563
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->notifyDataSetChanged()V

    .line 1564
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->no_data_found_ll:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1565
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 1567
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->no_data_found_ll:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1568
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private resetDataAndNofityAdapter(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;)V"
        }
    .end annotation

    .line 1574
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->draftList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1575
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->loaderrl:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1576
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1577
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->scrollListener:Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1578
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->loadMore:Z

    .line 1579
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/ifastscroll/FastScroller;->setVisibility(I)V

    .line 1580
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->clearbtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1581
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->searchbtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1582
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->draftList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1583
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 1223
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1224
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$15;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$15;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V

    const v2, 0x7f100101

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1230
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1231
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1232
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showDetailsDialog(Lcom/conceptglobal/pmc/model/RetailerMobileDetails;)V
    .locals 9

    .line 1284
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1285
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v2, 0x7f0c0057

    .line 1286
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x7f0904a4

    .line 1287
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090241

    .line 1288
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0900aa

    .line 1289
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1290
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10020d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RetailerMobileDetails;->getFarmerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100218

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RetailerMobileDetails;->getMobile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\nTerritoryName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RetailerMobileDetails;->getTerritoryName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\nVillageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RetailerMobileDetails;->getVillageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1290
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1294
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RetailerMobileDetails;->getImagePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    const/16 v2, 0x96

    invoke-virtual {p1, v2, v2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f08018d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 1295
    new-instance p1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$17;

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$17;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Landroid/app/Dialog;)V

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1302
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1303
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {p1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 1304
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1305
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1306
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1307
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showMibileSearchDialog(Ljava/lang/String;)V
    .locals 4

    .line 1180
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1181
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0c005d

    .line 1182
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f090173

    .line 1183
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1184
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0904b8

    .line 1185
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1186
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100297

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090095

    .line 1187
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v2, 0x7f0900b8

    .line 1188
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1190
    new-instance v3, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$13;

    invoke-direct {v3, p0, v0, v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$13;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Landroid/app/Dialog;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1206
    new-instance v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$14;

    invoke-direct {v1, p0, v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$14;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Landroid/app/Dialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1213
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1214
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-virtual {p1, v1, v3}, Landroid/view/Window;->setLayout(II)V

    .line 1215
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1216
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1217
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1218
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showNoDataAvailableDialog(Ljava/lang/String;)V
    .locals 3

    .line 1311
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1312
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$18;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$18;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V

    const v2, 0x7f100101

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1318
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1319
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1320
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showOverLayWalkthrough()V
    .locals 4

    .line 1097
    new-instance v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$9;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$9;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V

    .line 1106
    new-instance v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$10;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$10;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V

    .line 1114
    new-instance v2, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;-><init>(Landroid/app/Activity;)V

    .line 1116
    invoke-virtual {v2, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setTarget(Lcom/github/amlcurran/showcaseview/targets/Target;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    const-string v2, "Search"

    .line 1117
    invoke-virtual {v0, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    const-string v2, "Click here to search "

    .line 1118
    invoke-virtual {v0, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    .line 1120
    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->withMaterialShowcase()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    const v2, 0x7f1100e7

    .line 1122
    invoke-virtual {v0, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setStyle(I)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    new-instance v2, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$11;

    invoke-direct {v2, p0, v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$11;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Lcom/github/amlcurran/showcaseview/targets/Target;)V

    .line 1123
    invoke-virtual {v0, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    .line 1149
    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->build()Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .line 1150
    const-string v1, "Next"

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public disPlayRadiusData()V
    .locals 13

    .line 1028
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->dbllatitude:Ljava/lang/Double;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->dbllongitude:Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 1029
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tempGrowersList:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 1030
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1031
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->radiusSearch:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1034
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tempGrowersList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1036
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->draftList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1038
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->draftList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DashboardListModel;

    .line 1039
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getLatitude()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getLangitude()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NULL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 1040
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->dbllatitude:Ljava/lang/Double;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->dbllongitude:Ljava/lang/Double;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getLangitude()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const/16 v10, 0x4b

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->distance(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;C)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 1042
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_1

    .line 1043
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tempGrowersList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1048
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tempGrowersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1049
    new-instance v0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tempGrowersList:Ljava/util/List;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isFrom:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/registration/DraftList;

    iget v8, v1, Lcom/conceptglobal/pmc/registration/DraftList;->segmentId:I

    iget-boolean v9, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isFromSelfAssignment:Z

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v10, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTestmonial:Z

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v11, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromFeedBack:Z

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v12, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    const-string v5, "Retailer"

    const-string v6, "0"

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZ)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    .line 1050
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 1052
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noItemsAvailableAlert()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1055
    :cond_4
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->locationNotFound()V

    :goto_1
    return-void
.end method

.method public distance(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;C)D
    .locals 6

    .line 885
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 886
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->deg2rad(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->deg2rad(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->deg2rad(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    invoke-direct {p0, p3, p4}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->deg2rad(D)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->deg2rad(D)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    add-double/2addr v2, p1

    .line 887
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    .line 888
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->rad2deg(D)D

    move-result-wide p1

    const-wide/high16 p3, 0x404e000000000000L    # 60.0

    mul-double p1, p1, p3

    const-wide p3, 0x3ff26c8b43958106L    # 1.1515

    mul-double p1, p1, p3

    const/16 p3, 0x4b

    if-eq p5, p3, :cond_4

    const/16 p3, 0x6b

    if-ne p5, p3, :cond_0

    goto :goto_1

    :cond_0
    const/16 p3, 0x4e

    if-eq p5, p3, :cond_3

    const/16 p3, 0x6e

    if-ne p5, p3, :cond_1

    goto :goto_0

    :cond_1
    const/16 p3, 0x4d

    if-eq p5, p3, :cond_2

    const/16 p3, 0x6d

    if-ne p5, p3, :cond_5

    :cond_2
    const-wide p3, 0x409925604189374cL    # 1609.344

    goto :goto_2

    :cond_3
    :goto_0
    const-wide p3, 0x3febc9eecbfb15b5L    # 0.8684

    goto :goto_2

    :cond_4
    :goto_1
    const-wide p3, 0x3ff9bfdf7e8038a0L    # 1.609344

    :goto_2
    mul-double p1, p1, p3

    .line 897
    :cond_5
    sget-object p3, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->twoDForm:Ljava/text/DecimalFormat;

    invoke-virtual {p3, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    return-wide p1
.end method

.method public fragmentCommunication()V
    .locals 0

    .line 1081
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->showOverLayWalkthrough()V

    return-void
.end method

.method public locationNotFound()V
    .locals 4

    .line 1011
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1012
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_notAbleCaptureGPSAlert()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$7;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$7;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1019
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_gpsCancelButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$8;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$8;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1023
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 270
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 1664
    invoke-super/range {p0 .. p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v2, 0x2

    move/from16 v3, p1

    if-eq v3, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    .line 1670
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1671
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1672
    const-string v3, "FarmerId"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1673
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "isfrom"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 1674
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    const/4 v15, 0x0

    if-eqz v2, :cond_1

    .line 1677
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1678
    aget-object v11, v2, v15

    .line 1679
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/conceptglobal/pmc/common/Queries;->getListOfAttributesUpdate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1680
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1681
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1683
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/registration/DraftList;

    iget v7, v0, Lcom/conceptglobal/pmc/registration/DraftList;->segmentId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v8, 0x0

    const/4 v0, 0x1

    move-object v4, v3

    move-object v5, v11

    move-wide v9, v13

    move-object/from16 v17, v11

    move v11, v0

    :try_start_2
    invoke-static/range {v4 .. v11}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertCustomerAttributeDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v17, v11

    .line 1685
    :goto_1
    :try_start_3
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tag:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    move-object/from16 v11, v17

    goto :goto_0

    :catch_2
    move-exception v0

    .line 1690
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tag:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1693
    :cond_1
    const-string v4, "ASSIGNMENTID"

    const-string v5, "TRANSID"

    const-string v6, "SEGMENTID"

    const-string v7, "ACTIVITYNAME"

    const-string v8, "ACTIVITYID"

    const/high16 v9, 0x4000000

    const/4 v10, 0x1

    if-ne v12, v10, :cond_2

    .line 1695
    new-instance v11, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v12

    const-class v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-direct {v11, v12, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1696
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1697
    aget-object v0, v2, v15

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1698
    aget-object v0, v2, v10

    invoke-virtual {v11, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1699
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/registration/DraftList;

    iget v0, v0, Lcom/conceptglobal/pmc/registration/DraftList;->segmentId:I

    invoke-virtual {v11, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1702
    invoke-virtual {v11, v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1703
    invoke-virtual {v11, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1704
    invoke-virtual {v11, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x20000

    .line 1705
    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 1708
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/fragment/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    const-class v12, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-direct {v0, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1709
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1710
    aget-object v3, v2, v15

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1711
    aget-object v2, v2, v10

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1712
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/registration/DraftList;

    iget v2, v2, Lcom/conceptglobal/pmc/registration/DraftList;->segmentId:I

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1713
    const-string v2, "ISSELFASSIGN"

    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1714
    invoke-virtual {v0, v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1715
    invoke-virtual {v0, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1716
    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x20000

    .line 1717
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14

    .line 623
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "50"

    const-string v2, "-1"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    const v6, 0x7f1101b9

    const-string v7, " "

    const/4 v8, 0x0

    const/16 v9, 0x8

    const-string v10, ""

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    .line 844
    :sswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->searchkeyword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 845
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "Please enter your search keyword and click on button"

    invoke-static {p1, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 850
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 851
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->searchbtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 853
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->loaderrl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 854
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 855
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-virtual {v0, v9}, Lcom/conceptglobal/ifastscroll/FastScroller;->setVisibility(I)V

    .line 856
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->clearbtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 857
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->searchbtn:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 858
    new-instance v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;

    invoke-direct {v0, p0, v3}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$1;)V

    const-string v1, "0"

    filled-new-array {v2, v1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 708
    :sswitch_1
    iput-boolean v4, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isGoBtnClicked:Z

    .line 709
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->rb_All:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->performClick()Z

    .line 710
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvCropId:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_1

    .line 711
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " and dcm.CropId = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvCropId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->addCropQuery:Ljava/lang/String;

    .line 715
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_2

    .line 716
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " and dm.stateId = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->addStateQuery:Ljava/lang/String;

    .line 718
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_3

    .line 719
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " and dm.districtId = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->addDistrictQuery:Ljava/lang/String;

    .line 721
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvMandalId:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_4

    .line 722
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " and dm.mandalId= "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvMandalId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->addTalukaQuery:Ljava/lang/String;

    .line 724
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvLocationId:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->locationSearch:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_5

    .line 725
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " and (dm.VillageId = \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvLocationId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->addLocationQuery:Ljava/lang/String;

    .line 728
    :cond_5
    sget-object p1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->farmerType:Ljava/lang/String;

    const-string v0, "Distributor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->farmerType:Ljava/lang/String;

    const-string v0, "Dealer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    const-string p1, "2"

    goto :goto_1

    .line 729
    :cond_7
    :goto_0
    const-string p1, "3"

    .line 733
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->searchrl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 734
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->loaderrl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 736
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->draftList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 737
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->notifyDataSetChanged()V

    .line 738
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-virtual {v0, v9}, Lcom/conceptglobal/ifastscroll/FastScroller;->setVisibility(I)V

    .line 741
    new-instance v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;

    invoke-direct {v0, p0, v3}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$1;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 812
    :sswitch_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->cropSearch:Landroid/widget/EditText;

    invoke-virtual {p1, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 813
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->stateSearch:Landroid/widget/EditText;

    invoke-virtual {p1, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 814
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->districtSearch:Landroid/widget/EditText;

    invoke-virtual {p1, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 815
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mandalSearch:Landroid/widget/EditText;

    invoke-virtual {p1, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 816
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->locationSearch:Landroid/widget/EditText;

    invoke-virtual {p1, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 817
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {p1, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 819
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->cropSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cropFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 820
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->stateSearch:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_stateFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 821
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->districtSearch:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_districtFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 822
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mandalSearch:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_talukaFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 823
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->locationSearch:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_villageFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 824
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->radiusSearch:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_radiusFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 825
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 826
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvCropId:Landroid/widget/TextView;

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvMandalId:Landroid/widget/TextView;

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvLocationId:Landroid/widget/TextView;

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 832
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->draftList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 838
    invoke-direct {p0, v2, v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->loadMore(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 840
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 641
    :sswitch_3
    :try_start_1
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_stateText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->gettingStates()Ljava/lang/String;

    move-result-object v10

    iget-object v12, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvStateId:Landroid/widget/TextView;

    move-object v7, v0

    move-object v11, p1

    invoke-direct/range {v7 .. v12}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 642
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 643
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 644
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    .line 646
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 670
    :sswitch_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 672
    :try_start_2
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v9, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_talukaFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingMandals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v13, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvMandalId:Landroid/widget/TextView;

    move-object v8, v0

    move-object v12, p1

    invoke-direct/range {v8 .. v13}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 674
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 675
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 676
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception p1

    .line 679
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 683
    :cond_8
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plsSelDistrictFilter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 652
    :sswitch_5
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    .line 654
    :try_start_3
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v9, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_districtText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDistricts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v13, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    move-object v8, v0

    move-object v12, p1

    invoke-direct/range {v8 .. v13}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 656
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 657
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 658
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception p1

    .line 661
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 664
    :cond_9
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plsSelStateFilter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 688
    :sswitch_6
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvLocationId:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->locationSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvMandalId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    .line 693
    :try_start_4
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v9, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_villageText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvMandalId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettinVillages(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v13, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvLocationId:Landroid/widget/TextView;

    move-object v8, v0

    move-object v12, p1

    invoke-direct/range {v8 .. v13}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 695
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 696
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 697
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception p1

    .line 700
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 703
    :cond_a
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plsSelMandalFilter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 629
    :sswitch_7
    :try_start_5
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cropFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getCropNames()Ljava/lang/String;

    move-result-object v10

    iget-object v12, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->tvCropId:Landroid/widget/TextView;

    move-object v7, v0

    move-object v11, p1

    invoke-direct/range {v7 .. v12}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 630
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 631
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 632
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_2

    :catch_5
    move-exception p1

    .line 634
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 865
    :sswitch_8
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->searchkeyword:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 866
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->clearbtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 867
    invoke-direct {p0, v2, v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->loadMore(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 876
    :sswitch_9
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->rvSort:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->slideToBottom(Landroid/view/View;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090099 -> :sswitch_9
        0x7f0900f9 -> :sswitch_8
        0x7f09013f -> :sswitch_7
        0x7f090143 -> :sswitch_6
        0x7f090149 -> :sswitch_5
        0x7f09014a -> :sswitch_4
        0x7f09014b -> :sswitch_3
        0x7f0901e7 -> :sswitch_2
        0x7f0901e8 -> :sswitch_1
        0x7f0903cc -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 242
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 243
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mActivity:Landroid/app/Activity;

    .line 244
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mContext:Landroid/content/Context;

    .line 245
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 246
    const-string v0, "farmerType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->farmerType:Ljava/lang/String;

    const/4 p1, 0x1

    .line 247
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->setHasOptionsMenu(Z)V

    .line 248
    const-string p1, "ALL"

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isFrom:Ljava/lang/String;

    .line 249
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 251
    const-string v0, "module"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->module:Ljava/lang/String;

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/conceptglobal/pmc/registration/DraftList;

    if-eqz p1, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean p1, p1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSelfAssignment:Z

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isFromSelfAssignment:Z

    .line 258
    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 259
    const-string v0, "android.intent.action.RetailerSearchLocationPermissionGranted"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    const-string v0, "android.intent.action.RetailerSearchLocationPermissionDenied"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v0, "android.intent.action.RetailerSearchGPSTurnedOnResult"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    const-string v0, "android.intent.action.RetailerSearchGPSNotTurnedOnResult"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    new-instance v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocalBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocalBroadcastReceiver;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocalBroadcastReceiver;

    .line 264
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocalBroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const v0, 0x7f0d000d

    .line 561
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 562
    sput-object p1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->optionsMenu:Landroid/view/Menu;

    .line 564
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p2

    const v0, 0x7f080146

    const v1, 0x7f0901f8

    if-nez p2, :cond_0

    .line 565
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->filterItem:Landroid/view/MenuItem;

    .line 566
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 568
    :cond_0
    sget-object p2, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->farmerType:Ljava/lang/String;

    const-string v2, "UnVerifiedRetailer"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 569
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->filterItem:Landroid/view/MenuItem;

    .line 570
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 571
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->filterItem:Landroid/view/MenuItem;

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    const p2, 0x7f0903c3

    .line 573
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->searchMenuItem:Landroid/view/MenuItem;

    .line 574
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mActivity:Landroid/app/Activity;

    const-string p2, "search"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/SearchManager;

    .line 575
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->searchMenuItem:Landroid/view/MenuItem;

    invoke-static {p2}, Landroidx/core/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SearchView;

    if-eqz p2, :cond_2

    .line 577
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 578
    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 580
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->searchMenuItem:Landroid/view/MenuItem;

    new-instance v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$4;

    invoke-direct {v0, p0, p2}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$4;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Landroidx/appcompat/widget/SearchView;)V

    invoke-static {p1, v0}, Landroidx/core/view/MenuItemCompat;->setOnActionExpandListener(Landroid/view/MenuItem;Landroidx/core/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 600
    new-instance p1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$5;

    invoke-direct {p1, p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$5;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V

    .line 616
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c011e

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 234
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 235
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->initialization(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 1161
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1326
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 1327
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocalBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 530
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_5

    const v1, 0x7f0901f8

    if-eq v0, v1, :cond_2

    const v1, 0x7f0903f2

    if-eq v0, v1, :cond_0

    .line 553
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 547
    :cond_0
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isDisplaySortDialog:Z

    if-eqz p1, :cond_1

    .line 548
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->rvSort:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->slideToBottom(Landroid/view/View;)V

    goto :goto_0

    .line 550
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->rvSort:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->slideToTop(Landroid/view/View;)V

    :goto_0
    return v2

    .line 536
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 537
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->filtersLL:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f080146

    .line 539
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 540
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 541
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f080145

    .line 543
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_4
    :goto_1
    return v2

    .line 532
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return v2
.end method

.method public slideToBottom(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    .line 1834
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 1835
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isDisplaySortDialog:Z

    return-void
.end method

.method public slideToTop(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1839
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    .line 1840
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isDisplaySortDialog:Z

    return-void
.end method
