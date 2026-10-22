.class public Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;
.super Landroidx/fragment/app/Fragment;
.source "FarmersSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationControl;,
        Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocalBroadcastReceiver;,
        Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;,
        Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;,
        Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;,
        Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$DecimalDigitsInputFilter;,
        Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$MyLocationListener;
    }
.end annotation


# static fields
.field private static final GETNEWACTIVITY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FarmersSearchFragment"

.field private static mFragment:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

.field private static optionsMenu:Landroid/view/Menu;

.field public static twoDForm:Ljava/text/DecimalFormat;


# instance fields
.field private acreagesGreaterthanSearch:Landroid/widget/EditText;

.field private acreagessLeethanSearch:Landroid/widget/EditText;

.field private addAcersGreaterthanQuery:Ljava/lang/String;

.field private addAcersLessthanQuery:Ljava/lang/String;

.field private addCropQuery:Ljava/lang/String;

.field private addDistrictQuery:Ljava/lang/String;

.field private addIrrigationQuery:Ljava/lang/String;

.field private addLocationQuery:Ljava/lang/String;

.field private addRadiusQuery:Ljava/lang/String;

.field private addSegmentQuery:Ljava/lang/String;

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

.field private farmerType:Ljava/lang/String;

.field farmersCount:I

.field farmersThreshold:I

.field private fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

.field filterItem:Landroid/view/MenuItem;

.field private filtersLL:Landroid/widget/LinearLayout;

.field public fromFavourites:Ljava/lang/String;

.field private getFarmerDetails:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

.field private hasLocation:Z

.field private irrigationTypeSearch:Landroid/widget/EditText;

.field private isFrom:Ljava/lang/String;

.field private isFromSelfAssignment:Z

.field private isGoBtnClicked:Z

.field private list:Landroidx/recyclerview/widget/RecyclerView;

.field private loaderrl:Landroid/widget/RelativeLayout;

.field private loadertxt:Landroid/widget/TextView;

.field private locationControlTask:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationControl;

.field private locationMgr:Landroid/location/LocationManager;

.field private locationSearch:Landroid/widget/EditText;

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

.field private mCallback:Lcom/conceptglobal/pmc/interfaces/IFragmentToActivity;

.field private mContext:Landroid/content/Context;

.field private mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocalBroadcastReceiver;

.field private mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

.field private final mandalChanged:Landroid/text/TextWatcher;

.field private mandalSearch:Landroid/widget/EditText;

.field private mobileSearchReceiver:Landroid/content/BroadcastReceiver;

.field private module:Ljava/lang/String;

.field private myLocationListener:Landroid/location/LocationListener;

.field no_data_found_ll:Landroid/widget/LinearLayout;

.field public parentSaarthieFarmerID:Ljava/lang/String;

.field progressll:Landroid/widget/LinearLayout;

.field query:Ljava/lang/String;

.field private radiusSearch:Landroid/widget/EditText;

.field private rbDisplayType:Landroid/widget/RadioGroup;

.field rbRROKAM:Landroid/widget/RadioButton;

.field private rb_All:Landroid/widget/RadioButton;

.field private rb_Favourite:Landroid/widget/RadioButton;

.field private rb_tg:Landroid/widget/RadioButton;

.field scrollListener:Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;

.field searchMenuItem:Landroid/view/MenuItem;

.field private searchbtn:Landroid/widget/Button;

.field private searchkeyword:Landroid/widget/EditText;

.field private searchrl:Landroid/widget/RelativeLayout;

.field private segmentId:I

.field private segmentSearch:Landroid/widget/EditText;

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

.field private tvIrrigationTypeId:Landroid/widget/TextView;

.field private tvLocationId:Landroid/widget/TextView;

.field private tvMandalId:Landroid/widget/TextView;

.field tvRadiusDetails:Landroid/widget/TextView;

.field private tvSegmentId:Landroid/widget/TextView;

.field private tvStateId:Landroid/widget/TextView;

.field weatherItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 159
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->twoDForm:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 116
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 147
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addCropQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addStateQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addDistrictQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addTalukaQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addLocationQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addRadiusQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addSegmentQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addIrrigationQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addAcersGreaterthanQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addAcersLessthanQuery:Ljava/lang/String;

    const/4 v1, 0x0

    .line 157
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->hasLocation:Z

    const/4 v2, 0x0

    .line 161
    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->module:Ljava/lang/String;

    .line 165
    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->attributesArry:Ljava/util/ArrayList;

    .line 188
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->counter:I

    .line 192
    new-instance v2, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 196
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmersThreshold:I

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmersCount:I

    .line 205
    const-string v1, "FarmersSearchFragment"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tag:Ljava/lang/String;

    .line 210
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fromFavourites:Ljava/lang/String;

    .line 211
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->parentSaarthieFarmerID:Ljava/lang/String;

    const/4 v0, 0x1

    .line 215
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->distanceInKiloMeters:I

    .line 480
    new-instance v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$1;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->stateChanged:Landroid/text/TextWatcher;

    .line 504
    new-instance v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$2;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->districtChanged:Landroid/text/TextWatcher;

    .line 525
    new-instance v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$3;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mandalChanged:Landroid/text/TextWatcher;

    .line 1327
    new-instance v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$15;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$15;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getFarmerDetails:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 1367
    new-instance v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$17;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$17;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mobileSearchReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private OnDisplayTypeSelectCheckedChangeListener(Landroid/widget/RadioGroup;)V
    .locals 1

    .line 1751
    new-instance v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$20;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$20;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/Double;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->dbllatitude:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->dbllatitude:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/Double;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->dbllongitude:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->dbllongitude:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->hasLocation:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Z)Z
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->hasLocation:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/util/List;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tempGrowersList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tempGrowersList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/widget/EditText;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->radiusSearch:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/util/List;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->draftList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/content/Context;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmerType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->isFrom:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/widget/TextView;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationControl;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->locationControlTask:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationControl;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationControl;)Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationControl;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->locationControlTask:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationControl;

    return-object p1
.end method

.method static synthetic access$2200()Landroid/view/Menu;
    .locals 1

    .line 116
    sget-object v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->optionsMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)I
    .locals 0

    .line 116
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->counter:I

    return p0
.end method

.method static synthetic access$2308(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)I
    .locals 2

    .line 116
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->counter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->counter:I

    return v0
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)Z
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->isValidMobileNumber(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->callMobileDetailsApi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Lcom/conceptglobal/pmc/model/FarmerMobileDetails;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->showDetailsDialog(Lcom/conceptglobal/pmc/model/FarmerMobileDetails;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->showNoDataAvailableDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->showMibileSearchDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/widget/EditText;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->districtSearch:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fetchLocation()V

    return-void
.end method

.method static synthetic access$3100(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Lcom/conceptglobal/pmc/utils/LocationUtils;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->createProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/app/Dialog;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/util/List;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->refreshAdapter(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/util/List;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->resetDataAndNofityAdapter(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addCropQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addCropQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addStateQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3702(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addStateQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addDistrictQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3802(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addDistrictQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addTalukaQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3902(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addTalukaQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/widget/TextView;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvMandalId:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addLocationQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4002(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addLocationQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addRadiusQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4102(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addRadiusQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addSegmentQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4202(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addSegmentQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addAcersGreaterthanQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4302(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addAcersGreaterthanQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addAcersLessthanQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4402(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addAcersLessthanQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addIrrigationQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4502(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addIrrigationQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Lcom/conceptglobal/ifastscroll/FastScroller;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->loadMore(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)I
    .locals 0

    .line 116
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->distanceInKiloMeters:I

    return p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/widget/EditText;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mandalSearch:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->loaderrl:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/widget/TextView;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvLocationId:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/widget/EditText;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->locationSearch:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    return-object p0
.end method

.method static synthetic access$802(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    return-object p1
.end method

.method private callMobileDetailsApi(Ljava/lang/String;)V
    .locals 7

    .line 1279
    new-instance v6, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getFarmerDetails:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    .line 1280
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMobileDetailsUrl()Ljava/lang/String;

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

    .line 1281
    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v6, p1}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private createProgressDialog(Ljava/lang/String;)V
    .locals 4

    .line 1738
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 1739
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1740
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0114

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090305

    .line 1741
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->dialogMsgTxtview:Landroid/widget/TextView;

    .line 1742
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1743
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1744
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->dialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    .line 1745
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

    .line 1021
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1022
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

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

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$6;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$6;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1029
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private fetchLocation()V
    .locals 5

    .line 1424
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 1428
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$19;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$19;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    const-string v3, "FarmersSearchFragment"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1447
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private fetchLocationFilterCustomers()V
    .locals 5

    .line 1790
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tag:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FarmersSearchFragment"

    const-string v3, "location capture started"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1792
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 1795
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v3, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$21;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$21;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1824
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initialization(Landroid/view/View;)V
    .locals 13

    const v0, 0x7f0901fe

    .line 269
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->filtersLL:Landroid/widget/LinearLayout;

    # Hook btn_export_farmers click listener
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_skip_exp_init

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "btn_export_farmers"

    const-string v3, "id"

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_skip_exp_init

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_skip_exp_init

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_skip_exp_init

    const v0, 0x7f090366

    .line 270
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->progressll:Landroid/widget/LinearLayout;

    const v0, 0x7f090329

    .line 271
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->no_data_found_ll:Landroid/widget/LinearLayout;

    const v0, 0x7f09013f

    .line 272
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->cropSearch:Landroid/widget/EditText;

    .line 273
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cropFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f09014b

    .line 274
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->stateSearch:Landroid/widget/EditText;

    .line 275
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_stateFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f09014a

    .line 276
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mandalSearch:Landroid/widget/EditText;

    .line 277
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_talukaFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f090149

    .line 278
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->districtSearch:Landroid/widget/EditText;

    .line 279
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_districtFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f090143

    .line 280
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->locationSearch:Landroid/widget/EditText;

    .line 281
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_villageFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f090144

    .line 282
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->radiusSearch:Landroid/widget/EditText;

    const/16 v1, 0x8

    .line 283
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    const v0, 0x7f0903cd

    .line 284
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->searchkeyword:Landroid/widget/EditText;

    .line 285
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->radiusSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_radiusFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f0904bd

    .line 286
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvRadiusDetails:Landroid/widget/TextView;

    const v0, 0x7f090145

    .line 288
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->segmentSearch:Landroid/widget/EditText;

    .line 289
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_SegmentFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f09013d

    .line 290
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->acreagessLeethanSearch:Landroid/widget/EditText;

    .line 291
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_AcersLeethanFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f09013c

    .line 292
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->acreagesGreaterthanSearch:Landroid/widget/EditText;

    .line 293
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_AcesrGreaterthanFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f090142

    .line 294
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->irrigationTypeSearch:Landroid/widget/EditText;

    .line 295
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_IrrigationFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f0902d2

    .line 298
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->loadertxt:Landroid/widget/TextView;

    const v0, 0x7f090482

    .line 299
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvCropId:Landroid/widget/TextView;

    const v0, 0x7f0904d6

    .line 300
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvStateId:Landroid/widget/TextView;

    const v0, 0x7f0904b7

    .line 301
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvMandalId:Landroid/widget/TextView;

    const v0, 0x7f090495

    .line 302
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    const v0, 0x7f0904b6

    .line 303
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvLocationId:Landroid/widget/TextView;

    const v0, 0x7f0904cb

    .line 304
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvSegmentId:Landroid/widget/TextView;

    const v0, 0x7f0904af

    .line 305
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvIrrigationTypeId:Landroid/widget/TextView;

    const v0, 0x7f0903cc

    .line 306
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->searchbtn:Landroid/widget/Button;

    const v0, 0x7f0902d1

    .line 307
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->loaderrl:Landroid/widget/RelativeLayout;

    const v0, 0x7f0903ce

    .line 308
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->searchrl:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900f9

    .line 309
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->clearbtn:Landroid/widget/ImageView;

    const v0, 0x7f09036b

    .line 311
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->rb_All:Landroid/widget/RadioButton;

    const v0, 0x7f09036c

    .line 312
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->rb_Favourite:Landroid/widget/RadioButton;

    const v2, 0x7f09036e

    .line 313
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->rb_tg:Landroid/widget/RadioButton;

    const v2, 0x7f0901e8

    .line 316
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->btnGo:Landroid/widget/TextView;

    .line 317
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_goFilterText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0901e7

    .line 319
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->btnClear:Landroid/widget/TextView;

    .line 320
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_clearFilterText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->searchrl:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v2, 0x7f090381

    .line 324
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->rbDisplayType:Landroid/widget/RadioGroup;

    .line 326
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmerType:Ljava/lang/String;

    const-string v3, "Farmer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    const-string v5, "Village"

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->rbDisplayType:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto :goto_1

    .line 327
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->rbDisplayType:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 331
    :goto_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->rbDisplayType:Landroid/widget/RadioGroup;

    invoke-direct {p0, v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->OnDisplayTypeSelectCheckedChangeListener(Landroid/widget/RadioGroup;)V

    const v2, 0x7f09036d

    .line 332
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->rbRROKAM:Landroid/widget/RadioButton;

    .line 333
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 335
    const-string v2, "Fellow Farmer"

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->rbRROKAM:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f100299

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmerType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->rbRROKAM:Landroid/widget/RadioButton;

    const-string v2, "Focussed"

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->rb_Favourite:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->rb_tg:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->cropSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->stateSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mandalSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->districtSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->segmentSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->irrigationTypeSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->searchbtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->clearbtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->stateSearch:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->stateChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 353
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->districtSearch:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->districtChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 354
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mandalSearch:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mandalChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 356
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->locationSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->btnGo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->btnClear:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09028c

    .line 360
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    .line 361
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 362
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 363
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 364
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 366
    const-string v0, "All"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fromFavourites:Ljava/lang/String;

    const v0, 0x7f0901e9

    .line 379
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/ifastscroll/FastScroller;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    .line 381
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->draftList:Ljava/util/List;

    .line 383
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/registration/DraftList;

    iget p1, p1, Lcom/conceptglobal/pmc/registration/DraftList;->segmentId:I

    iput p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->segmentId:I

    .line 384
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean p1, p1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSelfAssignment:Z

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->isFromSelfAssignment:Z

    .line 386
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    .line 387
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmerType:Ljava/lang/String;

    const-string v0, "UnVerifiedFarmer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 388
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/common/Queries;->gettingDraftColunNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFieldsFirDraft(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->attributesArry:Ljava/util/ArrayList;

    goto :goto_3

    .line 390
    :cond_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmerType:Ljava/lang/String;

    const-string v3, "Retailer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Dealer"

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmerType:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDraftColunNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFieldsFirDraft(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->attributesArry:Ljava/util/ArrayList;

    .line 393
    :goto_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v4, p1, :cond_5

    .line 394
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 396
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    const-string v0, "Latitude,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    const-string v0, "Longitude"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->query:Ljava/lang/String;

    .line 412
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmerType:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 413
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->acreagessLeethanSearch:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 414
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->acreagesGreaterthanSearch:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 415
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->segmentSearch:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 416
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->irrigationTypeSearch:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 419
    :cond_6
    new-instance p1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->draftList:Ljava/util/List;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmerType:Ljava/lang/String;

    const-string v4, "0"

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->isFrom:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/registration/DraftList;

    iget v6, v0, Lcom/conceptglobal/pmc/registration/DraftList;->segmentId:I

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v7, v0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSelfAssignment:Z

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v8, v0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTestmonial:Z

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v9, v0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromFeedBack:Z

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v10, v0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/registration/DraftList;

    iget v11, v0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTodo:I

    move-object v0, p1

    move-object v12, p0

    invoke-direct/range {v0 .. v12}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZILcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    .line 420
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 422
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/ifastscroll/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 425
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object p1

    .line 426
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 428
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getFarmersThreshold()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTotalFarmersCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmersThreshold:I

    .line 429
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getTotalFarmersCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTotalFarmersCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmersCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    :catch_0
    :try_start_2
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 433
    throw v0

    .line 436
    :goto_4
    iget p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmersCount:I

    iget v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmersThreshold:I

    if-le p1, v0, :cond_7

    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->isFromSelfAssignment:Z

    if-nez p1, :cond_7

    .line 437
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->loadertxt:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Farmers count is more than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmersThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", please wait while loading data..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    :cond_7
    const-string p1, "-1"

    const-string v0, "50"

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->loadMore(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 450
    const-string v0, "FarmersSearchFragment"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method private isValidMobileNumber(Ljava/lang/String;)Z
    .locals 1

    .line 1317
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
    .locals 3

    .line 456
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->isGoBtnClicked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 457
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->isGoBtnClicked:Z

    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->showLoading(Z)V

    .line 461
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->notifyDataSetChanged()V

    .line 464
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->isFromSelfAssignment:Z

    if-eqz v0, :cond_1

    .line 466
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p2

    const-string v0, "SAFarmerRadius"

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->distanceInKiloMeters:I

    .line 467
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvRadiusDetails:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvRadiusDetails:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmerType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'s within "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->distanceInKiloMeters:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " KM\u2019s only visible here"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fetchLocationFilterCustomers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 471
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 475
    :cond_1
    new-instance v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$1;)V

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;
    .locals 2

    .line 220
    new-instance v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mFragment:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    .line 221
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 222
    const-string v1, "farmerType"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mFragment:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 224
    sget-object p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mFragment:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

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

    .line 1520
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->draftList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1522
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->showLoading(Z)V

    .line 1524
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->draftList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1525
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->draftList:Ljava/util/List;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 1526
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-virtual {p1, v1}, Lcom/conceptglobal/ifastscroll/FastScroller;->setVisibility(I)V

    .line 1527
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->notifyDataSetChanged()V

    .line 1528
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->no_data_found_ll:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1529
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 1531
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->no_data_found_ll:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1532
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private resetDataAndNofityAdapter(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;)V"
        }
    .end annotation

    .line 1537
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->draftList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1539
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1540
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/ifastscroll/FastScroller;->setVisibility(I)V

    .line 1541
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->clearbtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1542
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->searchbtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1543
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->draftList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1544
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 1386
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1387
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$18;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$18;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    const v2, 0x7f100101

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1393
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1394
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1395
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showDetailsDialog(Lcom/conceptglobal/pmc/model/FarmerMobileDetails;)V
    .locals 9

    .line 1289
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1290
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v2, 0x7f0c0057

    .line 1291
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x7f0904a4

    .line 1292
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090241

    .line 1293
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0900aa

    .line 1294
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1295
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10020d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/FarmerMobileDetails;->getFarmerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100218

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/FarmerMobileDetails;->getMobile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\nTerritoyName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/FarmerMobileDetails;->getTerritoryName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\nVillageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/FarmerMobileDetails;->getVillageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1295
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1299
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/FarmerMobileDetails;->getImagePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    const/16 v2, 0x96

    invoke-virtual {p1, v2, v2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f08018d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 1300
    new-instance p1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$14;

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$14;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Landroid/app/Dialog;)V

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1307
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1308
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {p1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 1309
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1310
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1311
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1312
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showMibileSearchDialog(Ljava/lang/String;)V
    .locals 5

    .line 1236
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1237
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0c005d

    .line 1238
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f090173

    .line 1239
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f0904b8

    .line 1240
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1241
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000cd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1242
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090095

    .line 1243
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v2, 0x7f0900b8

    .line 1244
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const/4 v3, 0x0

    .line 1245
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1247
    new-instance v4, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$12;

    invoke-direct {v4, p0, v1, v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$12;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1263
    new-instance v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$13;

    invoke-direct {v1, p0, v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$13;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Landroid/app/Dialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1270
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1271
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p1, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 1272
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1273
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1274
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1275
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showNoDataAvailableDialog(Ljava/lang/String;)V
    .locals 3

    .line 1354
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1355
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$16;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$16;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    const v2, 0x7f100101

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1361
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1362
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1363
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showOverLayWalkthrough()V
    .locals 4

    .line 1169
    new-instance v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$9;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$9;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    .line 1178
    new-instance v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$10;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$10;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    .line 1187
    new-instance v2, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;-><init>(Landroid/app/Activity;)V

    .line 1189
    invoke-virtual {v2, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setTarget(Lcom/github/amlcurran/showcaseview/targets/Target;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    const-string v2, "Search"

    .line 1190
    invoke-virtual {v0, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    const-string v2, "Click here to search "

    .line 1191
    invoke-virtual {v0, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    .line 1193
    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->withMaterialShowcase()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    const v2, 0x7f1100e7

    .line 1195
    invoke-virtual {v0, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setStyle(I)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    new-instance v2, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$11;

    invoke-direct {v2, p0, v1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$11;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Lcom/github/amlcurran/showcaseview/targets/Target;)V

    .line 1196
    invoke-virtual {v0, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    .line 1222
    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->build()Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .line 1223
    const-string v1, "Next"

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public disPlayRadiusData()V
    .locals 15

    .line 1122
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->dbllatitude:Ljava/lang/Double;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->dbllongitude:Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 1123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tempGrowersList:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 1124
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1125
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->radiusSearch:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1128
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tempGrowersList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1130
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->draftList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1131
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->draftList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DashboardListModel;

    .line 1132
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

    .line 1133
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->dbllatitude:Ljava/lang/Double;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->dbllongitude:Ljava/lang/Double;

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

    invoke-virtual/range {v5 .. v10}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->distance(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;C)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 1134
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_1

    .line 1135
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tempGrowersList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1140
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tempGrowersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1141
    new-instance v0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tempGrowersList:Ljava/util/List;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmerType:Ljava/lang/String;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->isFrom:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/registration/DraftList;

    iget v8, v1, Lcom/conceptglobal/pmc/registration/DraftList;->segmentId:I

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v9, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSelfAssignment:Z

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v10, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTestmonial:Z

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v11, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromFeedBack:Z

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v12, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/registration/DraftList;

    iget v13, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTodo:I

    const-string v6, "0"

    move-object v2, v0

    move-object v14, p0

    invoke-direct/range {v2 .. v14}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZILcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    .line 1142
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 1144
    :cond_3
    new-instance v0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tempGrowersList:Ljava/util/List;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmerType:Ljava/lang/String;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->isFrom:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/registration/DraftList;

    iget v8, v2, Lcom/conceptglobal/pmc/registration/DraftList;->segmentId:I

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v9, v2, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSelfAssignment:Z

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v10, v2, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTestmonial:Z

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v11, v2, Lcom/conceptglobal/pmc/registration/DraftList;->isFromFeedBack:Z

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v12, v2, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/registration/DraftList;

    iget v13, v2, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTodo:I

    const-string v6, "0"

    move-object v2, v0

    move-object v14, p0

    invoke-direct/range {v2 .. v14}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZILcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    .line 1145
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

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

    .line 1148
    :cond_4
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->locationNotFound()V

    :goto_1
    return-void
.end method

.method public distance(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;C)D
    .locals 6

    .line 976
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 977
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->deg2rad(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->deg2rad(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->deg2rad(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    invoke-direct {p0, p3, p4}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->deg2rad(D)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->deg2rad(D)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    add-double/2addr v2, p1

    .line 978
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    .line 979
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->rad2deg(D)D

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

    .line 988
    :cond_5
    sget-object p3, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->twoDForm:Ljava/text/DecimalFormat;

    invoke-virtual {p3, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    return-wide p1
.end method

.method public fragmentCommunication()V
    .locals 0

    .line 1153
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->showOverLayWalkthrough()V

    return-void
.end method

.method public loadFelloFarmerData(Ljava/lang/String;)V
    .locals 1

    .line 946
    const-string v0, "Fellow Farmer"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fromFavourites:Ljava/lang/String;

    .line 947
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->parentSaarthieFarmerID:Ljava/lang/String;

    .line 948
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->rb_Favourite:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->performClick()Z

    return-void
.end method

.method public locationNotFound()V
    .locals 4

    .line 1105
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1106
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

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

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_gpsOKButton()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$7;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$7;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1113
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_gpsCancelButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$8;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$8;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1117
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 263
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 1649
    invoke-super/range {p0 .. p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v2, 0x2

    move/from16 v3, p1

    if-eq v3, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    .line 1655
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1656
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1657
    const-string v3, "FarmerId"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1658
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "isfrom"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 1659
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    const/4 v15, 0x0

    if-eqz v2, :cond_1

    .line 1662
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1663
    aget-object v11, v2, v15

    .line 1664
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/conceptglobal/pmc/common/Queries;->getListOfAttributesUpdate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1665
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1666
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

    .line 1668
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

    .line 1670
    :goto_1
    :try_start_3
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tag:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    move-object/from16 v11, v17

    goto :goto_0

    :catch_2
    move-exception v0

    .line 1675
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tag:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1678
    :cond_1
    const-string v4, "ASSIGNMENTID"

    const-string v5, "TRANSID"

    const-string v6, "SEGMENTID"

    const-string v7, "ACTIVITYNAME"

    const-string v8, "ACTIVITYID"

    const/4 v9, 0x1

    const/high16 v10, 0x4000000

    if-ne v12, v9, :cond_2

    .line 1679
    new-instance v11, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v12

    const-class v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-direct {v11, v12, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1680
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1681
    aget-object v0, v2, v15

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1682
    aget-object v0, v2, v9

    invoke-virtual {v11, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1683
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/registration/DraftList;

    iget v0, v0, Lcom/conceptglobal/pmc/registration/DraftList;->segmentId:I

    invoke-virtual {v11, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1686
    invoke-virtual {v11, v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1687
    invoke-virtual {v11, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1688
    invoke-virtual {v11, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x20000

    .line 1689
    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1691
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v0, v0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    if-eqz v0, :cond_3

    .line 1692
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/fragment/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    const-class v12, Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-direct {v0, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1693
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1694
    aget-object v3, v2, v15

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1695
    aget-object v2, v2, v9

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1696
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/registration/DraftList;

    iget v2, v2, Lcom/conceptglobal/pmc/registration/DraftList;->segmentId:I

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1699
    invoke-virtual {v0, v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1700
    invoke-virtual {v0, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1701
    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x20000

    .line 1702
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 1705
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/fragment/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    const-class v12, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-direct {v0, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1706
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1707
    aget-object v3, v2, v15

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1708
    aget-object v2, v2, v9

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1709
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/registration/DraftList;

    iget v2, v2, Lcom/conceptglobal/pmc/registration/DraftList;->segmentId:I

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1710
    const-string v2, "ISSELFASSIGN"

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1711
    invoke-virtual {v0, v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1712
    invoke-virtual {v0, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1713
    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x20000

    .line 1714
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v1, p0

    .line 636
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v0

    # Check if export button clicked
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_skip_btn_chk

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "btn_export_farmers"

    const-string v5, "id"

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_skip_btn_chk

    if-ne v0, v3, :cond_skip_btn_chk

    invoke-static {v2}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->showExportDialog(Landroid/app/Activity;)V

    return-void

    :cond_skip_btn_chk

    const-string v2, "50"

    const/4 v3, 0x0

    const-string v4, "-1"

    const/4 v5, 0x1

    const/4 v6, 0x3

    const v7, 0x7f1101b9

    const-string v8, " "

    const/16 v9, 0x8

    const-string v10, "FarmersSearchFragment"

    const-string v11, ""

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 911
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->searchkeyword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 912
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 913
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "Please enter your search keyword and click on button"

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 915
    :cond_0
    iget v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmersCount:I

    iget v6, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmersThreshold:I

    if-le v2, v6, :cond_1

    .line 917
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v6, "input_method"

    invoke-virtual {v2, v6}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 918
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->searchbtn:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 921
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 922
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-virtual {v2, v9}, Lcom/conceptglobal/ifastscroll/FastScroller;->setVisibility(I)V

    .line 923
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->clearbtn:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 924
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->searchbtn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 925
    new-instance v2, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;

    invoke-direct {v2, v1, v3}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$1;)V

    const-string v3, "0"

    filled-new-array {v4, v3, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 927
    :cond_1
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 730
    :sswitch_1
    iput-boolean v5, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->isGoBtnClicked:Z

    .line 731
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->rb_All:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->performClick()Z

    .line 732
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvCropId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " and fcm.cropId = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvCropId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addCropQuery:Ljava/lang/String;

    .line 735
    :cond_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvSegmentId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v2, "\'"

    if-eqz v0, :cond_3

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, " and fm.FarmerSegmentation like \'%"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvSegmentId:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addSegmentQuery:Ljava/lang/String;

    .line 738
    :cond_3
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvIrrigationTypeId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, " and fm.LandMark = \'"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvIrrigationTypeId:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addIrrigationQuery:Ljava/lang/String;

    .line 741
    :cond_4
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->acreagesGreaterthanSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  sum(fcm.Acreages) > "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->acreagesGreaterthanSearch:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addAcersGreaterthanQuery:Ljava/lang/String;

    .line 744
    :cond_5
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->acreagessLeethanSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  sum(fcm.Acreages) < "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->acreagessLeethanSearch:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addAcersLessthanQuery:Ljava/lang/String;

    .line 748
    :cond_6
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " and fm.StateID = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addStateQuery:Ljava/lang/String;

    .line 751
    :cond_7
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " and fm.DistrictID = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addDistrictQuery:Ljava/lang/String;

    .line 754
    :cond_8
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvMandalId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " and fm.MandalID= "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvMandalId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addTalukaQuery:Ljava/lang/String;

    .line 757
    :cond_9
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvLocationId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->locationSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " and (fm.VillageId = \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvLocationId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->addLocationQuery:Ljava/lang/String;

    .line 762
    :cond_a
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->searchrl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 765
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->draftList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 766
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->notifyDataSetChanged()V

    .line 767
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 768
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-virtual {v0, v9}, Lcom/conceptglobal/ifastscroll/FastScroller;->setVisibility(I)V

    .line 770
    new-instance v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;

    invoke-direct {v0, v1, v3}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$1;)V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 857
    :sswitch_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->cropSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 858
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->stateSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 859
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->districtSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 860
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mandalSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 861
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->locationSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 862
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 863
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->segmentSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 864
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->irrigationTypeSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 865
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->acreagesGreaterthanSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 866
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->acreagessLeethanSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 867
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->cropSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cropFilterText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 868
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->stateSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_stateFilterText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 869
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->districtSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_districtFilterText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 870
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mandalSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_talukaFilterText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 871
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->locationSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_villageFilterText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->radiusSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_radiusFilterText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 873
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->segmentSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_SegmentFilterText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 874
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->irrigationTypeSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_IrrigationFilterText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 875
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->acreagesGreaterthanSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_AcesrGreaterthanFilterText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 876
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->acreagessLeethanSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_AcersLeethanFilterText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 877
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvCropId:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvMandalId:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 881
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvLocationId:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 882
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvIrrigationTypeId:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvSegmentId:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    :try_start_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->query:Ljava/lang/String;

    .line 890
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->draftList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 891
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 902
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Lcom/conceptglobal/ifastscroll/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 905
    invoke-direct {v1, v4, v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->loadMore(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 907
    invoke-static {v10, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 651
    :sswitch_3
    :try_start_1
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_stateText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingStates()Ljava/lang/String;

    move-result-object v14

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvStateId:Landroid/widget/TextView;

    move-object v11, v0

    move-object/from16 v15, p1

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v16}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 652
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 653
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 654
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 656
    invoke-static {v10, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 675
    :sswitch_4
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b

    .line 677
    :try_start_2
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_talukaFilterText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->gettingMandals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvMandalId:Landroid/widget/TextView;

    move-object v11, v0

    move-object/from16 v15, p1

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v16}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 679
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 680
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 681
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    .line 684
    invoke-static {v10, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 687
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plsSelDistrictFilter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 660
    :sswitch_5
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    .line 662
    :try_start_3
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_districtText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->gettingDistricts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    move-object v11, v0

    move-object/from16 v15, p1

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v16}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 664
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 665
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 666
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    .line 668
    invoke-static {v10, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 671
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plsSelStateFilter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 711
    :sswitch_6
    :try_start_4
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_SegmentFilterText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getSegmentTypes()Ljava/lang/String;

    move-result-object v14

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvSegmentId:Landroid/widget/TextView;

    move-object v11, v0

    move-object/from16 v15, p1

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v16}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 712
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 713
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 714
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    .line 716
    invoke-static {v10, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 693
    :sswitch_7
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvMandalId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_d

    .line 695
    :try_start_5
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_villageText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvMandalId:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->gettinVillages(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvLocationId:Landroid/widget/TextView;

    move-object v11, v0

    move-object/from16 v15, p1

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v16}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 697
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 698
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 699
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    .line 702
    invoke-static {v10, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 705
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plsSelMandalFilter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 721
    :sswitch_8
    :try_start_6
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_IrrigationFilterText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getIrrigationTypes()Ljava/lang/String;

    move-result-object v14

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvIrrigationTypeId:Landroid/widget/TextView;

    move-object v11, v0

    move-object/from16 v15, p1

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v16}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 722
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 723
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 724
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    .line 726
    invoke-static {v10, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 640
    :sswitch_9
    :try_start_7
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cropFilterText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getCropNames()Ljava/lang/String;

    move-result-object v14

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->tvCropId:Landroid/widget/TextView;

    move-object v11, v0

    move-object/from16 v15, p1

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v16}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 641
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 642
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 643
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_0

    :catch_7
    move-exception v0

    .line 645
    invoke-static {v10, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 932
    :sswitch_a
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->searchkeyword:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 933
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->clearbtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 934
    iget v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmersCount:I

    iget v3, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmersThreshold:I

    if-le v0, v3, :cond_e

    .line 935
    invoke-direct {v1, v4, v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->loadMore(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 937
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmersThreshold:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->loadMore(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900f9 -> :sswitch_a
        0x7f09013f -> :sswitch_9
        0x7f090142 -> :sswitch_8
        0x7f090143 -> :sswitch_7
        0x7f090145 -> :sswitch_6
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

    .line 238
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 239
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mActivity:Landroid/app/Activity;

    .line 240
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mContext:Landroid/content/Context;

    .line 241
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 242
    const-string v0, "farmerType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmerType:Ljava/lang/String;

    const/4 p1, 0x1

    .line 243
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->setHasOptionsMenu(Z)V

    .line 244
    const-string p1, "ALL"

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->isFrom:Ljava/lang/String;

    .line 245
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 247
    const-string v0, "module"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->module:Ljava/lang/String;

    .line 251
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 252
    const-string v0, "android.intent.action.FarmerSearchLocationPermissionGranted"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v0, "android.intent.action.FarmerSearchLocationPermissionDenied"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v0, "android.intent.action.FarmerSearchGPSTurnedOnResult"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v0, "android.intent.action.FarmerSearchGPSNotTurnedOnResult"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    new-instance v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocalBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocalBroadcastReceiver;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocalBroadcastReceiver;

    .line 257
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocalBroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const v0, 0x7f0d0004

    .line 570
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 571
    sput-object p1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->optionsMenu:Landroid/view/Menu;

    .line 573
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p2

    const v0, 0x7f080146

    const v1, 0x7f0901f8

    if-nez p2, :cond_0

    .line 574
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->filterItem:Landroid/view/MenuItem;

    .line 575
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 578
    :cond_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->farmerType:Ljava/lang/String;

    const-string v2, "UnVerifiedFarmer"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 579
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->filterItem:Landroid/view/MenuItem;

    .line 580
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 581
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->filterItem:Landroid/view/MenuItem;

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    const p2, 0x7f0903c3

    .line 584
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->searchMenuItem:Landroid/view/MenuItem;

    .line 585
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mActivity:Landroid/app/Activity;

    const-string p2, "search"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/SearchManager;

    .line 586
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->searchMenuItem:Landroid/view/MenuItem;

    invoke-static {p2}, Landroidx/core/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SearchView;

    if-eqz p2, :cond_2

    .line 588
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 589
    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 591
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->searchMenuItem:Landroid/view/MenuItem;

    new-instance v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$4;

    invoke-direct {v0, p0, p2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$4;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Landroidx/appcompat/widget/SearchView;)V

    invoke-static {p1, v0}, Landroidx/core/view/MenuItemCompat;->setOnActionExpandListener(Landroid/view/MenuItem;Landroidx/core/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 611
    new-instance p1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$5;

    invoke-direct {p1, p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$5;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    .line 630
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00ab

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 231
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->initialization(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 1380
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1402
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 1403
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocalBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 546
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    # Check if menu item title contains Export
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_not_exp_item

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Export"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_not_exp_item

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->showExportDialog(Landroid/app/Activity;)V

    const/4 v1, 0x1

    return v1

    :cond_not_exp_item

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const v1, 0x7f0901f8

    if-eq v0, v1, :cond_0

    .line 564
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 553
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->filtersLL:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f080146

    .line 555
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 558
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f080145

    .line 560
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    return v2

    .line 548
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return v2
.end method

.method public slideToBottom(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    .line 1780
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public slideToTop(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1785
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
