.class public Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;
.super Landroidx/fragment/app/Fragment;
.source "AudianceFarmersSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/conceptglobal/pmc/fo/IUpdateFarmersCount;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocationControl;,
        Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocalBroadcastReceiver;,
        Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;,
        Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;,
        Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$DecimalDigitsInputFilter;,
        Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$MyLocationListener;
    }
.end annotation


# static fields
.field private static final GETNEWACTIVITY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FarmersSearchFragment"

.field private static mFragment:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

.field private static optionsMenu:Landroid/view/Menu;

.field public static twoDForm:Ljava/text/DecimalFormat;


# instance fields
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

.field private btnSubmit:Landroid/widget/Button;

.field private clearbtn:Landroid/widget/ImageView;

.field private counter:I

.field private cropSearch:Landroid/widget/EditText;

.field private dbllatitude:Ljava/lang/Double;

.field private dbllongitude:Ljava/lang/Double;

.field private dialog:Landroid/app/Dialog;

.field private dialogMsgTxtview:Landroid/widget/TextView;

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

.field private getFarmerDetails:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

.field private hasLocation:Z

.field private isFrom:Ljava/lang/String;

.field private list:Landroidx/recyclerview/widget/RecyclerView;

.field private loaderrl:Landroid/widget/RelativeLayout;

.field private loadertxt:Landroid/widget/TextView;

.field private locationControlTask:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocationControl;

.field private locationMgr:Landroid/location/LocationManager;

.field private locationSearch:Landroid/widget/EditText;

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

.field private mCallback:Lcom/conceptglobal/pmc/interfaces/IFragmentToActivity;

.field private mContext:Landroid/content/Context;

.field private mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocalBroadcastReceiver;

.field private mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

.field private final mandalChanged:Landroid/text/TextWatcher;

.field private mandalSearch:Landroid/widget/EditText;

.field private mobileSearchReceiver:Landroid/content/BroadcastReceiver;

.field private module:Ljava/lang/String;

.field private myLocationListener:Landroid/location/LocationListener;

.field no_data_found_ll:Landroid/widget/LinearLayout;

.field progressll:Landroid/widget/LinearLayout;

.field query:Ljava/lang/String;

.field private radiusSearch:Landroid/widget/EditText;

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

.field private tvSelected:Landroid/widget/TextView;

.field private tvStateId:Landroid/widget/TextView;

.field weatherItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 137
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->twoDForm:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 96
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->addCropQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->addStateQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->addDistrictQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->addTalukaQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->addLocationQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->addRadiusQuery:Ljava/lang/String;

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->hasLocation:Z

    const/4 v1, 0x0

    .line 139
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->module:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->attributesArry:Ljava/util/ArrayList;

    .line 166
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->counter:I

    .line 170
    new-instance v1, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 174
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->farmersThreshold:I

    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->farmersCount:I

    .line 183
    const-string v0, "FarmersSearchFragment"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tag:Ljava/lang/String;

    .line 384
    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$1;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->stateChanged:Landroid/text/TextWatcher;

    .line 408
    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$2;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->districtChanged:Landroid/text/TextWatcher;

    .line 429
    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$3;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mandalChanged:Landroid/text/TextWatcher;

    .line 1184
    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$15;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$15;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getFarmerDetails:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 1224
    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$17;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$17;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mobileSearchReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/Double;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->dbllatitude:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->dbllatitude:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/Double;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->dbllongitude:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->dbllongitude:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->hasLocation:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Z)Z
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->hasLocation:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/util/List;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tempGrowersList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tempGrowersList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroid/widget/EditText;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->radiusSearch:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/util/List;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->draftList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroid/content/Context;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->farmerType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->isFrom:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroid/widget/TextView;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocationControl;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->locationControlTask:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocationControl;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocationControl;)Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocationControl;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->locationControlTask:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocationControl;

    return-object p1
.end method

.method static synthetic access$2200()Landroid/view/Menu;
    .locals 1

    .line 96
    sget-object v0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->optionsMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->counter:I

    return p0
.end method

.method static synthetic access$2308(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)I
    .locals 2

    .line 96
    iget v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->counter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->counter:I

    return v0
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/lang/String;)Z
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->isValidMobileNumber(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->callMobileDetailsApi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Lcom/conceptglobal/pmc/model/FarmerMobileDetails;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->showDetailsDialog(Lcom/conceptglobal/pmc/model/FarmerMobileDetails;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->showNoDataAvailableDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->showMibileSearchDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroid/widget/EditText;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->districtSearch:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->fetchLocation()V

    return-void
.end method

.method static synthetic access$3100(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Lcom/conceptglobal/pmc/utils/LocationUtils;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->createProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroid/app/Dialog;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/util/List;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->refreshAdapter(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/util/List;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->resetDataAndNofityAdapter(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->addCropQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->addCropQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->addStateQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3702(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->addStateQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->addDistrictQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3802(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->addDistrictQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->addTalukaQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3902(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->addTalukaQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroid/widget/TextView;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvMandalId:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->addLocationQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4002(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->addLocationQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->addRadiusQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4102(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->addRadiusQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Lcom/conceptglobal/ifastscroll/FastScroller;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroid/widget/EditText;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mandalSearch:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroid/widget/TextView;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvLocationId:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroid/widget/EditText;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->locationSearch:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    return-object p0
.end method

.method static synthetic access$802(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;)Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    return-object p1
.end method

.method private callMobileDetailsApi(Ljava/lang/String;)V
    .locals 7

    .line 1136
    new-instance v6, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getFarmerDetails:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    .line 1137
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

    .line 1138
    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v6, p1}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private createProgressDialog(Ljava/lang/String;)V
    .locals 4

    .line 1537
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 1538
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1539
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0114

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090305

    .line 1540
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->dialogMsgTxtview:Landroid/widget/TextView;

    .line 1541
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1542
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1543
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->dialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    .line 1544
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

    .line 878
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 879
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

    new-instance v3, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$6;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$6;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 886
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private fetchLocation()V
    .locals 5

    .line 1281
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 1285
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$19;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$19;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)V

    const-string v3, "FarmersSearchFragment"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1303
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initialization(Landroid/view/View;)V
    .locals 9

    const v0, 0x7f0901fe

    .line 245
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->filtersLL:Landroid/widget/LinearLayout;

    const v0, 0x7f090366

    .line 246
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->progressll:Landroid/widget/LinearLayout;

    const v0, 0x7f090329

    .line 247
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->no_data_found_ll:Landroid/widget/LinearLayout;

    const v0, 0x7f09013f

    .line 248
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->cropSearch:Landroid/widget/EditText;

    .line 249
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

    .line 250
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->stateSearch:Landroid/widget/EditText;

    .line 251
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

    .line 252
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mandalSearch:Landroid/widget/EditText;

    .line 253
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

    .line 254
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->districtSearch:Landroid/widget/EditText;

    .line 255
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

    .line 256
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->locationSearch:Landroid/widget/EditText;

    .line 257
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

    .line 258
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->radiusSearch:Landroid/widget/EditText;

    const v0, 0x7f0903cd

    .line 259
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->searchkeyword:Landroid/widget/EditText;

    .line 260
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->radiusSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_radiusFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f0904cd

    .line 261
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvSelected:Landroid/widget/TextView;

    const v0, 0x7f0900ba

    .line 262
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->btnSubmit:Landroid/widget/Button;

    .line 263
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902d2

    .line 265
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->loadertxt:Landroid/widget/TextView;

    const v0, 0x7f090482

    .line 266
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvCropId:Landroid/widget/TextView;

    const v0, 0x7f0904d6

    .line 267
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvStateId:Landroid/widget/TextView;

    const v0, 0x7f0904b7

    .line 268
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvMandalId:Landroid/widget/TextView;

    const v0, 0x7f090495

    .line 269
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    const v0, 0x7f0904b6

    .line 270
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvLocationId:Landroid/widget/TextView;

    const v0, 0x7f0903cc

    .line 271
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->searchbtn:Landroid/widget/Button;

    const v0, 0x7f0902d1

    .line 272
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->loaderrl:Landroid/widget/RelativeLayout;

    const v0, 0x7f0903ce

    .line 273
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->searchrl:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900f9

    .line 274
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->clearbtn:Landroid/widget/ImageView;

    const v0, 0x7f0901e8

    .line 276
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->btnGo:Landroid/widget/TextView;

    .line 277
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_goFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0901e7

    .line 279
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->btnClear:Landroid/widget/TextView;

    .line 280
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_clearFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->searchrl:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->cropSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->stateSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mandalSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->districtSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->searchbtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->clearbtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->stateSearch:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->stateChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 292
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->districtSearch:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->districtChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 293
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mandalSearch:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mandalChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 295
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->locationSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->btnGo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->btnClear:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09028c

    .line 299
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 300
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 301
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 302
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 303
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const v0, 0x7f0901e9

    .line 316
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/ifastscroll/FastScroller;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    .line 318
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->draftList:Ljava/util/List;

    .line 320
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    .line 321
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->farmerType:Ljava/lang/String;

    const-string v2, "Retailer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Dealer"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->farmerType:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/Queries;->gettingDraftColunNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFieldsFirDraft(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->attributesArry:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 322
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 325
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    const-string v0, "Latitude,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    const-string v0, "Longitude"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->query:Ljava/lang/String;

    .line 341
    new-instance p1, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->draftList:Ljava/util/List;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->farmerType:Ljava/lang/String;

    const-string v4, "0"

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->isFrom:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    iget v6, v0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->segmentId:I

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    iget-boolean v7, v0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->isFromSelfAssignment:Z

    move-object v0, p1

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/conceptglobal/pmc/fo/IUpdateFarmersCount;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    .line 342
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 344
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/ifastscroll/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 347
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object p1

    .line 348
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 350
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getFarmersThreshold()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTotalFarmersCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->farmersThreshold:I

    .line 351
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getTotalFarmersCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTotalFarmersCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->farmersCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    :catch_0
    :try_start_2
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 355
    throw v0

    .line 358
    :goto_2
    iget p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->farmersCount:I

    iget v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->farmersThreshold:I

    if-le p1, v0, :cond_2

    .line 359
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->loadertxt:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Farmers count is more than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->farmersThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", please wait while loading data..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    :cond_2
    const-string p1, "-1"

    const-string v0, "50"

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->loadMore(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 370
    const-string v0, "FarmersSearchFragment"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private isValidMobileNumber(Ljava/lang/String;)Z
    .locals 1

    .line 1174
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
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->showLoading(Z)V

    .line 377
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->notifyDataSetChanged()V

    .line 380
    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$1;)V

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;
    .locals 2

    .line 190
    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mFragment:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    const-string v1, "farmerType"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mFragment:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 194
    sget-object p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mFragment:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

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

    .line 1373
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->draftList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1375
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->showLoading(Z)V

    .line 1377
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->draftList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1378
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->draftList:Ljava/util/List;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 1379
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-virtual {p1, v1}, Lcom/conceptglobal/ifastscroll/FastScroller;->setVisibility(I)V

    .line 1380
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->notifyDataSetChanged()V

    .line 1381
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->no_data_found_ll:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1382
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 1384
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->no_data_found_ll:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1385
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

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

    .line 1390
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->draftList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1392
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1393
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/ifastscroll/FastScroller;->setVisibility(I)V

    .line 1394
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->clearbtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1395
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->searchbtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1396
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->draftList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1397
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 1243
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1244
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$18;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$18;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)V

    const v2, 0x7f100101

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1250
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1251
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1252
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showDetailsDialog(Lcom/conceptglobal/pmc/model/FarmerMobileDetails;)V
    .locals 9

    .line 1146
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1147
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v2, 0x7f0c0057

    .line 1148
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x7f0904a4

    .line 1149
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090241

    .line 1150
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0900aa

    .line 1151
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getResources()Landroid/content/res/Resources;

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

    .line 1153
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getResources()Landroid/content/res/Resources;

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

    .line 1154
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/FarmerMobileDetails;->getTerritoryName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\nVillageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/FarmerMobileDetails;->getVillageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1152
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1156
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f08018d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 1157
    new-instance p1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$14;

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$14;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Landroid/app/Dialog;)V

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1164
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1165
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {p1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 1166
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1167
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1168
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1169
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showMibileSearchDialog(Ljava/lang/String;)V
    .locals 5

    .line 1093
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1094
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0c005d

    .line 1095
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f090173

    .line 1096
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f0904b8

    .line 1097
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1098
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000cd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090095

    .line 1100
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v2, 0x7f0900b8

    .line 1101
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const/4 v3, 0x0

    .line 1102
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1104
    new-instance v4, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$12;

    invoke-direct {v4, p0, v1, v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$12;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1120
    new-instance v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$13;

    invoke-direct {v1, p0, v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$13;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Landroid/app/Dialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1127
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1128
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p1, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 1129
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1130
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1131
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1132
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showNoDataAvailableDialog(Ljava/lang/String;)V
    .locals 3

    .line 1211
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1212
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$16;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$16;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)V

    const v2, 0x7f100101

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1218
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1219
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showOverLayWalkthrough()V
    .locals 4

    .line 1026
    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$9;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$9;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)V

    .line 1035
    new-instance v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$10;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$10;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)V

    .line 1044
    new-instance v2, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;-><init>(Landroid/app/Activity;)V

    .line 1046
    invoke-virtual {v2, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setTarget(Lcom/github/amlcurran/showcaseview/targets/Target;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    const-string v2, "Search"

    .line 1047
    invoke-virtual {v0, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    const-string v2, "Click here to search "

    .line 1048
    invoke-virtual {v0, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    .line 1050
    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->withMaterialShowcase()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    const v2, 0x7f1100e7

    .line 1052
    invoke-virtual {v0, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setStyle(I)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    new-instance v2, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$11;

    invoke-direct {v2, p0, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$11;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Lcom/github/amlcurran/showcaseview/targets/Target;)V

    .line 1053
    invoke-virtual {v0, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    .line 1079
    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->build()Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .line 1080
    const-string v1, "Next"

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public disPlayRadiusData()V
    .locals 11

    .line 979
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->dbllatitude:Ljava/lang/Double;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->dbllongitude:Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 980
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tempGrowersList:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 981
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 982
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->radiusSearch:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 983
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 985
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tempGrowersList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 987
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->draftList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 988
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->draftList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DashboardListModel;

    .line 989
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

    .line 990
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->dbllatitude:Ljava/lang/Double;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->dbllongitude:Ljava/lang/Double;

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

    invoke-virtual/range {v5 .. v10}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->distance(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;C)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 991
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_1

    .line 992
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tempGrowersList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 997
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tempGrowersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 998
    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tempGrowersList:Ljava/util/List;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->farmerType:Ljava/lang/String;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->isFrom:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    iget v8, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->segmentId:I

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    iget-boolean v9, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->isFromSelfAssignment:Z

    const-string v6, "0"

    move-object v2, v0

    move-object v10, p0

    invoke-direct/range {v2 .. v10}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/conceptglobal/pmc/fo/IUpdateFarmersCount;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    .line 999
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 1001
    :cond_3
    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tempGrowersList:Ljava/util/List;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->farmerType:Ljava/lang/String;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->isFrom:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    iget v8, v2, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->segmentId:I

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    iget-boolean v9, v2, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->isFromSelfAssignment:Z

    const-string v6, "0"

    move-object v2, v0

    move-object v10, p0

    invoke-direct/range {v2 .. v10}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/conceptglobal/pmc/fo/IUpdateFarmersCount;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    .line 1002
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

    .line 1005
    :cond_4
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->locationNotFound()V

    :goto_1
    return-void
.end method

.method public distance(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;C)D
    .locals 6

    .line 833
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 834
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->deg2rad(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->deg2rad(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->deg2rad(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    invoke-direct {p0, p3, p4}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->deg2rad(D)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->deg2rad(D)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    add-double/2addr v2, p1

    .line 835
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    .line 836
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->rad2deg(D)D

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

    .line 845
    :cond_5
    sget-object p3, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->twoDForm:Ljava/text/DecimalFormat;

    invoke-virtual {p3, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    return-wide p1
.end method

.method public fragmentCommunication()V
    .locals 0

    .line 1010
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->showOverLayWalkthrough()V

    return-void
.end method

.method public locationNotFound()V
    .locals 4

    .line 962
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 963
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

    new-instance v3, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$7;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$7;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 970
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_gpsCancelButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$8;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$8;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 974
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 239
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12

    .line 1489
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 1495
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1496
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1497
    const-string p2, "FarmerId"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1498
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 1501
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1502
    aget-object v10, p1, p3

    .line 1503
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/conceptglobal/pmc/common/Queries;->getListOfAttributesUpdate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1504
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1505
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1507
    :try_start_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    iget v3, v0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->segmentId:I

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    move-object v1, v10

    move-wide v5, v8

    invoke-static/range {v0 .. v7}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertCustomerAttributeDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1509
    :try_start_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1514
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1518
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1519
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1520
    aget-object p2, p1, p3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string v1, "ACTIVITYID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1521
    const-string p2, "ACTIVITYNAME"

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1522
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    iget p1, p1, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->segmentId:I

    const-string p2, "SEGMENTID"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1523
    const-string p1, "ISSELFASSIGN"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1524
    const-string p1, "TRANSID"

    invoke-virtual {v0, p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1525
    const-string p1, "ASSIGNMENTID"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    .line 1526
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x20000

    .line 1527
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 16

    move-object/from16 v1, p0

    .line 534
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v2, "50"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "-1"

    const/4 v6, 0x3

    const v7, 0x7f1101b9

    const-string v8, " "

    const-string v9, "FarmersSearchFragment"

    const/16 v10, 0x8

    const-string v11, ""

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 775
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->searchkeyword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 776
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 777
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "Please enter your search keyword and click on button"

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 779
    :cond_0
    iget v2, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->farmersCount:I

    iget v6, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->farmersThreshold:I

    if-le v2, v6, :cond_1

    .line 781
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v6, "input_method"

    invoke-virtual {v2, v6}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 782
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->searchbtn:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v2, v6, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 785
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 786
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-virtual {v2, v10}, Lcom/conceptglobal/ifastscroll/FastScroller;->setVisibility(I)V

    .line 787
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->clearbtn:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 788
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->searchbtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 789
    new-instance v2, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;

    invoke-direct {v2, v1, v4}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$1;)V

    const-string v3, "0"

    filled-new-array {v5, v3, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 791
    :cond_1
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 618
    :sswitch_1
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvCropId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " and fcm.cropId = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvCropId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->addCropQuery:Ljava/lang/String;

    .line 622
    :cond_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " and fm.StateID = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->addStateQuery:Ljava/lang/String;

    .line 625
    :cond_3
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " and fm.DistrictID = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->addDistrictQuery:Ljava/lang/String;

    .line 628
    :cond_4
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvMandalId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " and fm.MandalID= "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvMandalId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->addTalukaQuery:Ljava/lang/String;

    .line 631
    :cond_5
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvLocationId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->locationSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " and (fm.VillageId = \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvLocationId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->addLocationQuery:Ljava/lang/String;

    .line 636
    :cond_6
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->searchrl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 639
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->draftList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 640
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->notifyDataSetChanged()V

    .line 641
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 642
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-virtual {v0, v10}, Lcom/conceptglobal/ifastscroll/FastScroller;->setVisibility(I)V

    .line 644
    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;

    invoke-direct {v0, v1, v4}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$1;)V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 731
    :sswitch_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->cropSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 732
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->stateSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 733
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->districtSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 734
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mandalSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 735
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->locationSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 736
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->cropSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cropFilterText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 738
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->stateSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_stateFilterText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 739
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->districtSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_districtFilterText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 740
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mandalSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_talukaFilterText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->locationSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_villageFilterText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 742
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->radiusSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_radiusFilterText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 743
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvCropId:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvMandalId:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvLocationId:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 752
    :try_start_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->query:Ljava/lang/String;

    .line 754
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->draftList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 755
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 766
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Lcom/conceptglobal/ifastscroll/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 769
    invoke-direct {v1, v5, v2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->loadMore(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 771
    invoke-static {v9, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 557
    :sswitch_3
    :try_start_1
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

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

    move-result-object v12

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingStates()Ljava/lang/String;

    move-result-object v13

    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvStateId:Landroid/widget/TextView;

    move-object v10, v0

    move-object/from16 v14, p1

    invoke-direct/range {v10 .. v15}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 558
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 559
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 560
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .line 562
    invoke-static {v9, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 581
    :sswitch_4
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    .line 583
    :try_start_2
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

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

    move-result-object v12

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->gettingMandals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvMandalId:Landroid/widget/TextView;

    move-object v10, v0

    move-object/from16 v14, p1

    invoke-direct/range {v10 .. v15}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 585
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 586
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 587
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    .line 590
    invoke-static {v9, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 593
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plsSelDistrictFilter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 566
    :sswitch_5
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 568
    :try_start_3
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

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

    move-result-object v12

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->gettingDistricts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    move-object v10, v0

    move-object/from16 v14, p1

    invoke-direct/range {v10 .. v15}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 570
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 571
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 572
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    .line 574
    invoke-static {v9, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 577
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plsSelStateFilter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 599
    :sswitch_6
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvMandalId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvDistrictId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    .line 601
    :try_start_4
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

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

    move-result-object v12

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvMandalId:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->gettinVillages(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvLocationId:Landroid/widget/TextView;

    move-object v10, v0

    move-object/from16 v14, p1

    invoke-direct/range {v10 .. v15}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 603
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 604
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 605
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v0

    .line 608
    invoke-static {v9, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 611
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plsSelMandalFilter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 546
    :sswitch_7
    :try_start_5
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

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

    move-result-object v12

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getCropNames()Ljava/lang/String;

    move-result-object v13

    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvCropId:Landroid/widget/TextView;

    move-object v10, v0

    move-object/from16 v14, p1

    invoke-direct/range {v10 .. v15}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 547
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 548
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 549
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_1

    :catch_5
    move-exception v0

    .line 551
    invoke-static {v9, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 796
    :sswitch_8
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->searchkeyword:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 797
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->clearbtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 798
    iget v0, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->farmersCount:I

    iget v3, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->farmersThreshold:I

    if-le v0, v3, :cond_a

    .line 799
    invoke-direct {v1, v5, v2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->loadMore(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 801
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->farmersThreshold:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->loadMore(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 536
    :sswitch_9
    new-instance v0, Landroid/content/Intent;

    const-string v2, "FARMERS_Result"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mAdapter:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->getSelectedFarmerData()Ljava/util/HashMap;

    move-result-object v2

    goto :goto_0

    :cond_b
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const-string v3, "FarmersList"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 539
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900ba -> :sswitch_9
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

    .line 213
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 214
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mActivity:Landroid/app/Activity;

    .line 215
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mContext:Landroid/content/Context;

    .line 216
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 217
    const-string v0, "farmerType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->farmerType:Ljava/lang/String;

    const/4 p1, 0x1

    .line 218
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->setHasOptionsMenu(Z)V

    .line 219
    const-string p1, "ALL"

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->isFrom:Ljava/lang/String;

    .line 220
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 222
    const-string v0, "module"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->module:Ljava/lang/String;

    .line 226
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 227
    const-string v0, "android.intent.action.FarmerSearchLocationPermissionGranted"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v0, "android.intent.action.FarmerSearchLocationPermissionDenied"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v0, "android.intent.action.FarmerSearchGPSTurnedOnResult"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v0, "android.intent.action.FarmerSearchGPSNotTurnedOnResult"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocalBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocalBroadcastReceiver;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocalBroadcastReceiver;

    .line 232
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocalBroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0d0004

    .line 474
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 475
    sput-object p1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->optionsMenu:Landroid/view/Menu;

    .line 476
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->filtersLL:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 477
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    const p2, 0x7f0901f8

    .line 478
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->filterItem:Landroid/view/MenuItem;

    const v0, 0x7f080146

    .line 479
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    const p2, 0x7f0903c3

    .line 482
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->searchMenuItem:Landroid/view/MenuItem;

    .line 483
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mActivity:Landroid/app/Activity;

    const-string p2, "search"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/SearchManager;

    .line 484
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->searchMenuItem:Landroid/view/MenuItem;

    invoke-static {p2}, Landroidx/core/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SearchView;

    if-eqz p2, :cond_1

    .line 486
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    const/4 p1, 0x0

    .line 487
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 489
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->searchMenuItem:Landroid/view/MenuItem;

    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$4;

    invoke-direct {v0, p0, p2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$4;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Landroidx/appcompat/widget/SearchView;)V

    invoke-static {p1, v0}, Landroidx/core/view/MenuItemCompat;->setOnActionExpandListener(Landroid/view/MenuItem;Landroidx/core/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 509
    new-instance p1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$5;

    invoke-direct {p1, p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$5;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)V

    .line 528
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00ac

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 202
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->initialization(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 1237
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1259
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 1260
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocalBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 450
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const v1, 0x7f0901f8

    if-eq v0, v1, :cond_0

    .line 468
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 457
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->filtersLL:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f080146

    .line 459
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f080145

    .line 464
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    return v2

    .line 452
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return v2
.end method

.method public setDisplay(I)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->tvSelected:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Selected"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
