.class public Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "SelfAssignDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LocationControl;,
        Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;,
        Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;,
        Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$MyLocationListener;
    }
.end annotation


# static fields
.field private static final GETNEWACTIVITY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SelfAssignDetailsActivity"

.field private static final Tag:Ljava/lang/String; = "SelfAssignDetailsActivity"

.field public static twoDForm:Ljava/text/DecimalFormat;


# instance fields
.field private adapter:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

.field private adapterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/CustomListDisplayModel;",
            ">;"
        }
    .end annotation
.end field

.field private addCustTypeQuery:Ljava/lang/String;

.field private addDistrictQuery:Ljava/lang/String;

.field private addLocationQuery:Ljava/lang/String;

.field private addStateQuery:Ljava/lang/String;

.field private addTalukaQuery:Ljava/lang/String;

.field private btnClear:Landroid/widget/TextView;

.field private btnGo:Landroid/widget/TextView;

.field protected cardview:Landroidx/cardview/widget/CardView;

.field private clearbtn:Landroid/widget/ImageView;

.field private context:Landroid/content/Context;

.field private custTypeSearch:Landroid/widget/EditText;

.field private customerList:Landroidx/recyclerview/widget/RecyclerView;

.field private dbllatitude:Ljava/lang/Double;

.field private dbllongitude:Ljava/lang/Double;

.field private final districtChanged:Landroid/text/TextWatcher;

.field private districtSearch:Landroid/widget/EditText;

.field private farmerId:Ljava/lang/String;

.field farmersCount:I

.field farmersThreshold:I

.field private fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

.field private filtersLL:Landroid/widget/LinearLayout;

.field private getdataDb:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private hasLocation:Z

.field private isFromComplaint:I

.field private isFromOrders:I

.field private isFromTestimonial:I

.field private isFromassignment:I

.field private loaderrl:Landroid/widget/RelativeLayout;

.field private loadertxt:Landroid/widget/TextView;

.field private locationControlTask:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LocationControl;

.field private locationSearch:Landroid/widget/EditText;

.field private mActivity:Landroid/app/Activity;

.field private mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

.field private mDrawableBuilder:Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

.field private mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

.field private final mandalChanged:Landroid/text/TextWatcher;

.field private mandalSearch:Landroid/widget/EditText;

.field private noDataLL:Landroid/widget/LinearLayout;

.field protected phonedail:Landroid/widget/ImageView;

.field protected profTextView:Landroid/widget/TextView;

.field protected profile_image:Landroid/widget/ImageView;

.field progressll:Landroid/widget/LinearLayout;

.field private radiusSearch:Landroid/widget/EditText;

.field private rippleView:Lcom/conceptglobal/pmc/views/RippleView;

.field scrollListener:Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;

.field private searchbtn:Landroid/widget/Button;

.field private searchkeyword:Landroid/widget/EditText;

.field private searchrl:Landroid/widget/RelativeLayout;

.field private segmentId:I

.field private segmentName:Ljava/lang/String;

.field selectlayout:Landroid/widget/LinearLayout;

.field private selecttitle:Landroid/widget/TextView;

.field private final stateChanged:Landroid/text/TextWatcher;

.field private stateSearch:Landroid/widget/EditText;

.field private tag:Ljava/lang/String;

.field private tempAdapterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/CustomListDisplayModel;",
            ">;"
        }
    .end annotation
.end field

.field private tvCustTypeId:Landroid/widget/TextView;

.field private tvDistrictId:Landroid/widget/TextView;

.field private tvLocationId:Landroid/widget/TextView;

.field private tvMandalId:Landroid/widget/TextView;

.field private tvStateId:Landroid/widget/TextView;

.field private tv_noData:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 130
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->twoDForm:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 111
    const-string v0, "0"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->farmerId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->hasLocation:Z

    .line 123
    const-string v1, "SelfAssignDetailsActivity"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tag:Ljava/lang/String;

    .line 133
    sget-object v1, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->MATERIAL:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    .line 145
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromassignment:I

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromComplaint:I

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromOrders:I

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromTestimonial:I

    .line 161
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->addCustTypeQuery:Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->addStateQuery:Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->addDistrictQuery:Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->addTalukaQuery:Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->addLocationQuery:Ljava/lang/String;

    .line 171
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->farmersThreshold:I

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->farmersCount:I

    .line 338
    new-instance v0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$2;-><init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->stateChanged:Landroid/text/TextWatcher;

    .line 362
    new-instance v0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$3;-><init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->districtChanged:Landroid/text/TextWatcher;

    .line 384
    new-instance v0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$4;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$4;-><init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->mandalChanged:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->loadMore(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->hasLocation:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Z)Z
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->hasLocation:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Ljava/lang/Double;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->dbllatitude:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->dbllatitude:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Ljava/lang/Double;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->dbllongitude:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->dbllongitude:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Ljava/util/List;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tempAdapterList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tempAdapterList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Landroid/widget/EditText;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->radiusSearch:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Ljava/util/List;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapterList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->noDataLL:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapter:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapter:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Landroid/app/Activity;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    return p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvDistrictId:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromassignment:I

    return p0
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromOrders:I

    return p0
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromComplaint:I

    return p0
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromTestimonial:I

    return p0
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->customerList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Lcom/conceptglobal/ifastscroll/FastScroller;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LocationControl;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->locationControlTask:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LocationControl;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LocationControl;)Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LocationControl;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->locationControlTask:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LocationControl;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->getListForCustomers(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->getdataDb:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Landroid/widget/EditText;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->districtSearch:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Ljava/util/List;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->refreshAdapter(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Ljava/util/List;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->resetDataAndNofityAdapter(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Ljava/lang/String;
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->getCustTypeQuery()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->loaderrl:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->fetchLocation()V

    return-void
.end method

.method static synthetic access$3502(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->addStateQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->addDistrictQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->addTalukaQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->addLocationQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvMandalId:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Landroid/widget/EditText;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->mandalSearch:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvLocationId:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Landroid/widget/EditText;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->locationSearch:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Landroid/content/Context;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->context:Landroid/content/Context;

    return-object p0
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

    .line 1060
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1061
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

    new-instance v3, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$5;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$5;-><init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1068
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private fetchLocation()V
    .locals 4

    .line 1253
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 1257
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$10;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$10;-><init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)V

    const-string v2, "SelfAssignDetailsActivity"

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1275
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getCustTypeQuery()Ljava/lang/String;
    .locals 3

    .line 936
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 947
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    const-string v1, "Planter"

    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->getDynamicColumns(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getfarmersInSAFilter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 944
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    const-string v1, "Distributor"

    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->getDynamicColumns(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getRetailersInSAFilter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 941
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    const-string v1, "Dealer"

    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->getDynamicColumns(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getRetailersInSAFilter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 938
    :cond_3
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    const-string v1, "Farmer"

    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->getDynamicColumns(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getfarmersInSAFilter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getDynamicColumns(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 921
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/conceptglobal/pmc/common/Queries;->gettingDraftColunNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFieldsFirDraft(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    .line 922
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 923
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 925
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 927
    const-string v1, "SelfAssignDetailsActivity"

    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method private getListForCustomers(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/CustomListDisplayModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 549
    const-string v4, "Retailer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 552
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "Dealer"

    if-eqz v8, :cond_0

    move-object v8, v9

    goto :goto_0

    :cond_0
    move-object v8, v0

    :goto_0
    :try_start_1
    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->gettingDraftColunNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFieldsFirDraft(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 553
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_1

    .line 554
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 556
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 562
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "8"

    const-string v10, "Planter"

    const-string v11, "3"

    const-string v12, "2"

    const-string v13, "Distributor"

    const-string v14, "1"

    const-string v15, "Farmer"

    if-eqz v6, :cond_7

    .line 563
    :try_start_2
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 564
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, v5, v14, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getDashboardDataSA(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindData(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_4

    .line 565
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 566
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, v5, v12, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getAllRetailersDashboardData(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRetailerBindData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_4

    .line 567
    :cond_3
    const-string v1, "VCP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 568
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v4, "18"

    invoke-virtual {v1, v5, v4, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getAllRetailersDashboardData(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRetailerBindData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_4

    .line 569
    :cond_4
    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    .line 571
    :cond_5
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 572
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, v5, v8, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getDashboardData(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindData(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_4

    .line 570
    :cond_6
    :goto_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, v5, v11, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getAllRetailersDashboardData(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRetailerBindData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_4

    .line 575
    :cond_7
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 576
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4, v5, v14, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getDashboardDataSA(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSelfAssignFarmersByKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_4

    .line 577
    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 578
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4, v5, v12, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getAllRetailersDashboardData(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->selfAssignGetRetailersByKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_4

    .line 579
    :cond_9
    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_3

    .line 581
    :cond_a
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 582
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4, v5, v8, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getDashboardData(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSelfAssignFarmersByKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    .line 580
    :cond_c
    :goto_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4, v5, v11, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getAllRetailersDashboardData(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->selfAssignGetRetailersByKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_4
    return-object v0

    :catch_0
    move-exception v0

    .line 592
    const-string v1, "SelfAssignDetailsActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v1, p0

    .line 593
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapterList:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 594
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 598
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private init()V
    .locals 4

    const v0, 0x7f090329

    .line 242
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->noDataLL:Landroid/widget/LinearLayout;

    const v0, 0x7f09055e

    .line 243
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tv_noData:Landroid/widget/TextView;

    .line 244
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noDataFound()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090101

    .line 245
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 246
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v0, 0x7f09028f

    .line 247
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->customerList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    .line 248
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 249
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 250
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->customerList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const v1, 0x7f0903da

    .line 251
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->selecttitle:Landroid/widget/TextView;

    const v1, 0x7f0901f3

    .line 252
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->filtersLL:Landroid/widget/LinearLayout;

    const v1, 0x7f0902d2

    .line 254
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->loadertxt:Landroid/widget/TextView;

    const v1, 0x7f090140

    .line 256
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->custTypeSearch:Landroid/widget/EditText;

    .line 257
    iget v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setId(I)V

    .line 258
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->custTypeSearch:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v1, 0x7f09014b

    .line 259
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->stateSearch:Landroid/widget/EditText;

    .line 260
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_stateFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v1, 0x7f09014a

    .line 261
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->mandalSearch:Landroid/widget/EditText;

    .line 262
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_talukaFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v1, 0x7f090149

    .line 263
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->districtSearch:Landroid/widget/EditText;

    .line 264
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_districtFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v1, 0x7f090143

    .line 265
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->locationSearch:Landroid/widget/EditText;

    .line 266
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_villageFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v1, 0x7f090144

    .line 267
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->radiusSearch:Landroid/widget/EditText;

    .line 268
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_radiusFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v1, 0x7f090487

    .line 270
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvCustTypeId:Landroid/widget/TextView;

    const v1, 0x7f0904d6

    .line 271
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvStateId:Landroid/widget/TextView;

    const v1, 0x7f0904b7

    .line 272
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvMandalId:Landroid/widget/TextView;

    const v1, 0x7f090495

    .line 273
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvDistrictId:Landroid/widget/TextView;

    const v1, 0x7f0904b6

    .line 274
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvLocationId:Landroid/widget/TextView;

    const v1, 0x7f0903cd

    .line 276
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->searchkeyword:Landroid/widget/EditText;

    const v1, 0x7f0903cc

    .line 277
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->searchbtn:Landroid/widget/Button;

    const v1, 0x7f0902d1

    .line 278
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->loaderrl:Landroid/widget/RelativeLayout;

    const v1, 0x7f0900f9

    .line 279
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->clearbtn:Landroid/widget/ImageView;

    const v1, 0x7f090366

    .line 280
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->progressll:Landroid/widget/LinearLayout;

    const v1, 0x7f0903d9

    .line 281
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->selectlayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0903ce

    .line 282
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->searchrl:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    .line 283
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v1, 0x7f0903ad

    .line 285
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->btnGo:Landroid/widget/TextView;

    .line 286
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_goFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0903ac

    .line 288
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->btnClear:Landroid/widget/TextView;

    .line 289
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_clearFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    new-instance v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$1;-><init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->scrollListener:Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;

    .line 303
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->stateSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->mandalSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->districtSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->searchbtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->clearbtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->stateSearch:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->stateChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 311
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->districtSearch:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->districtChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 312
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->mandalSearch:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->mandalChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 314
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->locationSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->btnGo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->btnClear:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901e9

    .line 319
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/ifastscroll/FastScroller;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    return-void
.end method

.method private loadMore(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapter:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->showLoading(Z)V

    .line 324
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapter:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->notifyDataSetChanged()V

    .line 325
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->noDataLL:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->loaderrl:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 327
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->farmersCount:I

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->farmersThreshold:I

    if-le v0, v1, :cond_1

    .line 329
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 330
    const-string v0, "Villages"

    goto :goto_0

    .line 329
    :cond_0
    const-string v0, "Farmers"

    .line 331
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->loadertxt:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " count is more than "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->farmersThreshold:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", please wait while loading data..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    :cond_1
    new-instance v0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$1;)V

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/CustomListDisplayModel;",
            ">;)V"
        }
    .end annotation

    .line 1337
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->progressll:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1339
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapter:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->showLoading(Z)V

    .line 1340
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->loaderrl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1344
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1345
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapterList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 1346
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->noDataLL:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1348
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->noDataLL:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1350
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapter:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private resetDataAndNofityAdapter(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/CustomListDisplayModel;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1354
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1355
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->noDataLL:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1356
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1357
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->loaderrl:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1358
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->customerList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1359
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-virtual {v1, v0}, Lcom/conceptglobal/ifastscroll/FastScroller;->setVisibility(I)V

    .line 1360
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->clearbtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1361
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->searchbtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1362
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1363
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapter:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->notifyDataSetChanged()V

    .line 1364
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->customerList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->scrollListener:Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    .line 1366
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->noDataLL:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setData()V
    .locals 14

    .line 405
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 408
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getFarmersThreshold()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTotalFarmersCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->farmersThreshold:I

    .line 409
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getTotalFarmersCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTotalFarmersCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->farmersCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 412
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 413
    throw v1

    .line 412
    :catch_0
    :goto_0
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapterList:Ljava/util/List;

    const/4 v0, 0x0

    .line 417
    :try_start_1
    iget v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x1

    const-string v3, "50"

    const-string v4, "-1"

    if-eq v1, v2, :cond_7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v5, 0x3

    if-eq v1, v5, :cond_5

    const/4 v5, 0x4

    if-eq v1, v5, :cond_4

    const/4 v5, 0x5

    if-eq v1, v5, :cond_3

    const/16 v5, 0x8

    if-eq v1, v5, :cond_2

    const/16 v5, 0xa

    if-eq v1, v5, :cond_1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    .line 518
    :cond_0
    :try_start_2
    new-instance v1, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapterList:Ljava/util/List;

    iget v9, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    iget v10, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromassignment:I

    iget v11, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromOrders:I

    iget v12, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromComplaint:I

    iget v13, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromTestimonial:I

    const/4 v8, 0x2

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IIIIII)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapter:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    .line 519
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->selecttitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectVCPText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->custTypeSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_vcpText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 522
    invoke-direct {p0, v4, v3}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->loadMore(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 509
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->farmerId:Ljava/lang/String;

    .line 510
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 511
    const-string v3, "FarmerId"

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->farmerId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTIONQUERY()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget v5, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getActivtiesListBySegment(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    invoke-virtual {p0, v1, v2}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 494
    :cond_2
    new-instance v1, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapterList:Ljava/util/List;

    iget v9, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    iget v10, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromassignment:I

    iget v11, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromOrders:I

    iget v12, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromComplaint:I

    iget v13, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromTestimonial:I

    const/16 v8, 0x8

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IIIIII)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapter:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    .line 495
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->selecttitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectPlanterText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->custTypeSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_planterText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 498
    invoke-direct {p0, v4, v3}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->loadMore(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 480
    :cond_3
    new-instance v1, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapterList:Ljava/util/List;

    iget v9, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    iget v10, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromassignment:I

    iget v11, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromOrders:I

    iget v12, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromComplaint:I

    iget v13, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromTestimonial:I

    const/4 v8, 0x5

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IIIIII)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapter:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    .line 481
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->selecttitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectTerritoryText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->custTypeSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_territoryText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 484
    invoke-direct {p0, v4, v3}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->loadMore(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 465
    :cond_4
    new-instance v1, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapterList:Ljava/util/List;

    iget v9, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    iget v10, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromassignment:I

    iget v11, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromOrders:I

    iget v12, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromComplaint:I

    iget v13, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromTestimonial:I

    const/4 v8, 0x4

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IIIIII)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapter:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    .line 466
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->selecttitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectVillageText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->custTypeSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_villageText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 469
    invoke-direct {p0, v4, v3}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->loadMore(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 450
    :cond_5
    new-instance v1, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapterList:Ljava/util/List;

    iget v9, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    iget v10, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromassignment:I

    iget v11, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromOrders:I

    iget v12, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromComplaint:I

    iget v13, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromTestimonial:I

    const/4 v8, 0x3

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IIIIII)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapter:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    .line 451
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->selecttitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectMarketText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->custTypeSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_marketText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 454
    invoke-direct {p0, v4, v3}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->loadMore(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 435
    :cond_6
    new-instance v1, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapterList:Ljava/util/List;

    iget v9, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    iget v10, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromassignment:I

    iget v11, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromOrders:I

    iget v12, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromComplaint:I

    iget v13, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromTestimonial:I

    const/4 v8, 0x2

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IIIIII)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapter:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    .line 436
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->selecttitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectRetailerText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->custTypeSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_retailerText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 439
    invoke-direct {p0, v4, v3}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->loadMore(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 420
    :cond_7
    new-instance v1, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapterList:Ljava/util/List;

    iget v9, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    iget v10, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromassignment:I

    iget v11, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromOrders:I

    iget v12, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromComplaint:I

    iget v13, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromTestimonial:I

    const/4 v8, 0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IIIIII)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapter:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    .line 421
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->selecttitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectFarmerText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->custTypeSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_farmerText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 424
    invoke-direct {p0, v4, v3}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->loadMore(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :goto_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->customerList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapter:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 536
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->customerList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/ifastscroll/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 537
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-virtual {v1, v0}, Lcom/conceptglobal/ifastscroll/FastScroller;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 542
    const-string v2, "SelfAssignDetailsActivity"

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 543
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->noDataLL:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public disPlayRadiusData()V
    .locals 11

    .line 1091
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->dbllatitude:Ljava/lang/Double;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->dbllongitude:Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 1093
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tempAdapterList:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 1095
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1096
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->radiusSearch:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1099
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tempAdapterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1101
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapterList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1103
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapterList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    .line 1105
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getLatitude()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getLongitude()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NULL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 1107
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->dbllatitude:Ljava/lang/Double;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->dbllongitude:Ljava/lang/Double;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const/16 v10, 0x4b

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->distance(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;C)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 1109
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_1

    .line 1110
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tempAdapterList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1115
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tempAdapterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1116
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->noDataLL:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1117
    new-instance v0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tempAdapterList:Ljava/util/List;

    iget v6, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    iget v7, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromassignment:I

    iget v8, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromOrders:I

    iget v9, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromComplaint:I

    iget v10, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromTestimonial:I

    const/4 v5, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IIIIII)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapter:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    .line 1118
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->customerList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1119
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->customerList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/ifastscroll/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_1

    .line 1123
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->noDataLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 1128
    :cond_4
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->locationNotFound()V

    :goto_1
    return-void
.end method

.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 237
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

.method public distance(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;C)D
    .locals 6

    .line 1134
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 1135
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->deg2rad(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->deg2rad(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->deg2rad(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    invoke-direct {p0, p3, p4}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->deg2rad(D)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->deg2rad(D)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    add-double/2addr v2, p1

    .line 1136
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    .line 1137
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->rad2deg(D)D

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

    .line 1146
    :cond_5
    sget-object p3, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->twoDForm:Ljava/text/DecimalFormat;

    invoke-virtual {p3, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    return-wide p1
.end method

.method public locationNotFound()V
    .locals 4

    .line 1073
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1074
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

    new-instance v3, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$6;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$6;-><init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1081
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_gpsCancelButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$7;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$7;-><init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1086
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12

    .line 604
    invoke-super {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    .line 609
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 610
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 611
    const-string p2, "FarmerId"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->farmerId:Ljava/lang/String;

    .line 612
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    const/4 v9, 0x0

    if-eqz p1, :cond_1

    .line 615
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 616
    aget-object v10, p1, v9

    .line 617
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->getdataDb:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/conceptglobal/pmc/common/Queries;->getListOfAttributesUpdate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 618
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 619
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 621
    :try_start_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->farmerId:Ljava/lang/String;

    iget v4, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v2, v10

    move-wide v6, p2

    invoke-static/range {v1 .. v8}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertCustomerAttributeDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 623
    :try_start_2
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tag:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 628
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tag:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 632
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 633
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->farmerId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    aget-object v2, p1, v9

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "ACTIVITYID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 635
    const-string v2, "ACTIVITYNAME"

    aget-object p1, p1, v0

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    const-string p1, "SEGMENTID"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 637
    const-string p1, "ISSELFASSIGN"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 638
    const-string p1, "TRANSID"

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 639
    const-string p1, "ASSIGNMENTID"

    invoke-virtual {v1, p1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    .line 640
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x20000

    .line 641
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    if-eq p2, p1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_1

    .line 656
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "GPSNotTurnedOn"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 651
    :cond_4
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->fetchLocation()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 16

    move-object/from16 v1, p0

    .line 689
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const v5, 0x7f1101b9

    const-string v6, "SelfAssignDetailsActivity"

    const/4 v7, 0x0

    const/16 v8, 0x8

    const-string v9, ""

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 884
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->searchkeyword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 885
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Please enter your search keyword and click on button"

    invoke-static {v0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 888
    :cond_0
    iget v2, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->farmersCount:I

    iget v4, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->farmersThreshold:I

    if-le v2, v4, :cond_1

    .line 890
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 891
    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->searchbtn:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 893
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->loaderrl:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 894
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->customerList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 895
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-virtual {v2, v8}, Lcom/conceptglobal/ifastscroll/FastScroller;->setVisibility(I)V

    .line 896
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->clearbtn:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 897
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->searchbtn:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 898
    new-instance v2, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;

    invoke-direct {v2, v1, v3}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$1;)V

    const-string v3, "-1"

    const-string v4, "0"

    filled-new-array {v3, v4, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 900
    :cond_1
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapter:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 763
    :sswitch_1
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 765
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " and StateID="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->addStateQuery:Ljava/lang/String;

    .line 769
    :cond_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvDistrictId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " and DistrictID="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvDistrictId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->addDistrictQuery:Ljava/lang/String;

    .line 772
    :cond_3
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvMandalId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " and MandalID="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvMandalId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->addTalukaQuery:Ljava/lang/String;

    .line 775
    :cond_4
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvLocationId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->locationSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " and VillageId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvLocationId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->addLocationQuery:Ljava/lang/String;

    .line 778
    :cond_5
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 782
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->searchrl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 783
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->loaderrl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 785
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 786
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->adapter:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->notifyDataSetChanged()V

    .line 787
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->selectlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 788
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->customerList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 789
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-virtual {v0, v8}, Lcom/conceptglobal/ifastscroll/FastScroller;->setVisibility(I)V

    .line 791
    new-instance v0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;

    invoke-direct {v0, v1, v3}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;-><init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$1;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->addStateQuery:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->addDistrictQuery:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->addTalukaQuery:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->addLocationQuery:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 871
    :sswitch_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->stateSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->districtSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 873
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->mandalSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 874
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->locationSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 875
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 877
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvDistrictId:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvMandalId:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvLocationId:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 881
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->setData()V

    goto/16 :goto_0

    .line 694
    :sswitch_3
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->context:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingStates()Ljava/lang/String;

    move-result-object v13

    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvStateId:Landroid/widget/TextView;

    move-object v10, v0

    move-object/from16 v14, p1

    invoke-direct/range {v10 .. v15}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 695
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 696
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 697
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 699
    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 724
    :sswitch_4
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvDistrictId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    .line 726
    :try_start_1
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->context:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvDistrictId:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->gettingMandals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvMandalId:Landroid/widget/TextView;

    move-object v7, v0

    move-object/from16 v11, p1

    invoke-direct/range {v7 .. v12}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 728
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 729
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 730
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 733
    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 737
    :cond_6
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plsSelDistrictFilter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 705
    :sswitch_5
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    .line 707
    :try_start_2
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->context:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->gettingDistricts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvDistrictId:Landroid/widget/TextView;

    move-object v7, v0

    move-object/from16 v11, p1

    invoke-direct/range {v7 .. v12}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 709
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 710
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 711
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    .line 714
    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 717
    :cond_7
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plsSelStateFilter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 743
    :sswitch_6
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvMandalId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvDistrictId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvStateId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 745
    :try_start_3
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->context:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvMandalId:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->gettinVillages(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->tvLocationId:Landroid/widget/TextView;

    move-object v7, v0

    move-object/from16 v11, p1

    invoke-direct/range {v7 .. v12}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 747
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 748
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 749
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    .line 752
    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 756
    :cond_8
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plsSelMandalFilter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 905
    :sswitch_7
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->searchkeyword:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 906
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->clearbtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 907
    iget v0, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->farmersCount:I

    iget v2, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->farmersThreshold:I

    const-string v3, "1"

    if-le v0, v2, :cond_9

    .line 908
    const-string v0, "50"

    invoke-direct {v1, v3, v0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->loadMore(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 910
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->farmersThreshold:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->loadMore(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900f9 -> :sswitch_7
        0x7f090143 -> :sswitch_6
        0x7f090149 -> :sswitch_5
        0x7f09014a -> :sswitch_4
        0x7f09014b -> :sswitch_3
        0x7f0903ac -> :sswitch_2
        0x7f0903ad -> :sswitch_1
        0x7f0903cc -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 182
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0124

    .line 186
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->setContentView(I)V

    .line 187
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->context:Landroid/content/Context;

    .line 188
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 189
    new-instance p1, Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->getdataDb:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 190
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->mActivity:Landroid/app/Activity;

    .line 191
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->context:Landroid/content/Context;

    .line 192
    new-instance p1, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 194
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 195
    const-string v0, "segmentId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    .line 198
    :cond_0
    const-string v0, "isFromAssignment"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 199
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromassignment:I

    .line 201
    :cond_1
    const-string v0, "isFromTestimonial"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromTestimonial:I

    .line 204
    :cond_2
    const-string v0, "isFromOrders"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 205
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromOrders:I

    .line 207
    :cond_3
    const-string v0, "isFromComplaints"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 208
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromComplaint:I

    .line 210
    :cond_4
    iget p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromassignment:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, ")"

    const-string v3, "("

    const-string v4, "Select "

    if-eq p1, v0, :cond_7

    iget p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->isFromTestimonial:I

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_5

    goto :goto_0

    .line 222
    :cond_5
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    if-eq p1, v1, :cond_6

    .line 223
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->getdataDb:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_1

    .line 225
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->getdataDb:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_1

    .line 212
    :cond_7
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    if-eq p1, v1, :cond_8

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->getdataDb:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_1

    .line 215
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->getdataDb:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 219
    :catch_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selfAssignText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 230
    :goto_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->init()V

    .line 231
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->setData()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .line 1163
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0901fc

    .line 1164
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1165
    iget v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->segmentId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    const/16 v4, 0x8

    if-eq v1, v4, :cond_0

    .line 1166
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1168
    :cond_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1170
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f080146

    .line 1172
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    const v0, 0x7f0903c8

    .line 1175
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1176
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 1177
    invoke-static {v0}, Landroidx/core/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/SearchView;

    if-eqz v3, :cond_2

    .line 1179
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 1180
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 1182
    :cond_2
    new-instance v1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$8;

    invoke-direct {v1, p0, v3}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$8;-><init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Landroidx/appcompat/widget/SearchView;)V

    invoke-static {v0, v1}, Landroidx/core/view/MenuItemCompat;->setOnActionExpandListener(Landroid/view/MenuItem;Landroidx/core/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 1202
    new-instance v0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$9;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$9;-><init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)V

    .line 1218
    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 1219
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1229
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const v1, 0x7f0901fc

    if-eq v0, v1, :cond_0

    .line 1249
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1236
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->filtersLL:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f080146

    .line 1237
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1240
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1241
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f080145

    .line 1243
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    return v2

    .line 1231
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->finish()V

    return v2
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 670
    array-length p1, p3

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 675
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 677
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->fetchLocation()V

    goto :goto_0

    .line 680
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
