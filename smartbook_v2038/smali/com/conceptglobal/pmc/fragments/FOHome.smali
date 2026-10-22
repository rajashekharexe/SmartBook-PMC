.class public Lcom/conceptglobal/pmc/fragments/FOHome;
.super Landroidx/fragment/app/Fragment;
.source "FOHome.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fragments/FOHome$LoadDataTask;,
        Lcom/conceptglobal/pmc/fragments/FOHome$LoadRadiusDataTask;,
        Lcom/conceptglobal/pmc/fragments/FOHome$LocalBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "param1"

.field private static final ARG_PARAM2:Ljava/lang/String; = "param2"

.field protected static final TAG:Ljava/lang/String; = "FOHome"

.field public static twoDForm:Ljava/text/DecimalFormat;


# instance fields
.field private adapter:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

.field private addBrandQuery:Ljava/lang/String;

.field private addCropQuery:Ljava/lang/String;

.field private addCustTypeQuery:Ljava/lang/String;

.field private addRadiusQuery:Ljava/lang/String;

.field private brandSearch:Landroid/widget/EditText;

.field private btnClear:Landroid/widget/TextView;

.field private btnGo:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private countSync:I

.field private cropSearch:Landroid/widget/EditText;

.field private custTypeSearch:Landroid/widget/EditText;

.field private cvFarmerOTPVerification:Landroidx/cardview/widget/CardView;

.field private cvRetailerOTPVerification:Landroidx/cardview/widget/CardView;

.field private dbllatitude:Ljava/lang/Double;

.field private dbllongitude:Ljava/lang/Double;

.field private filterItem:Landroid/view/MenuItem;

.field public filteredCutomerType:Ljava/lang/String;

.field private filtersLL:Landroid/widget/LinearLayout;

.field private getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private hasLocation:Z

.field private isFrom:Ljava/lang/String;

.field private isLocationRequestProcessing:Z

.field private listVillageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/VillageDetails;",
            ">;"
        }
    .end annotation
.end field

.field private loaderText:Landroid/widget/TextView;

.field private loaderrl:Landroid/widget/RelativeLayout;

.field private locationMgr:Landroid/location/LocationManager;

.field private lvList:Landroid/widget/ListView;

.field private mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

.field private mParam1:Ljava/lang/String;

.field private mParam2:Ljava/lang/String;

.field private myLocationListener:Landroid/location/LocationListener;

.field private radiusSearch:Landroid/widget/EditText;

.field private rootView:Landroid/view/View;

.field private svIDs:Ljava/lang/String;

.field private tempListVillageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/VillageDetails;",
            ">;"
        }
    .end annotation
.end field

.field private tvBrandId:Landroid/widget/TextView;

.field private tvCropId:Landroid/widget/TextView;

.field private tvCustTypeId:Landroid/widget/TextView;

.field private tvPD:Landroid/widget/TextView;

.field private tvRetailerWIPCount:Landroid/widget/TextView;

.field private tvScroll:Landroid/widget/TextView;

.field private tvTBV:Landroid/widget/TextView;

.field private tvVC:Landroid/widget/TextView;

.field private tvVillageName:Landroid/widget/TextView;

.field private tvWIPCount:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/conceptglobal/pmc/fragments/FOHome;->twoDForm:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tempListVillageNames:Ljava/util/List;

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->countSync:I

    .line 82
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->filteredCutomerType:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->svIDs:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->addCustTypeQuery:Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->addCropQuery:Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->addBrandQuery:Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->addRadiusQuery:Ljava/lang/String;

    .line 98
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->hasLocation:Z

    .line 104
    new-instance v0, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fragments/FOHome;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->loaderrl:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fragments/FOHome;)Lcom/conceptglobal/pmc/utils/LocationUtils;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/conceptglobal/pmc/fragments/FOHome;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->isLocationRequestProcessing:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/conceptglobal/pmc/fragments/FOHome;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->dbllongitude:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fragments/FOHome;)Landroid/widget/TextView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->loaderText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fragments/FOHome;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->isFrom:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fragments/FOHome;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getDataFromDB()V

    return-void
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fragments/FOHome;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->setData()V

    return-void
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fragments/FOHome;)Ljava/lang/Double;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->dbllatitude:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$602(Lcom/conceptglobal/pmc/fragments/FOHome;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->dbllatitude:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fragments/FOHome;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->fetchLocation()V

    return-void
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fragments/FOHome;)Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->adapter:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    return-object p0
.end method

.method private checkCountForSync()V
    .locals 2

    .line 536
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getCountForSync()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->countSync:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 538
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->countSync:I

    .line 539
    const-string v1, "FOHome"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
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

.method private fetchLocation()V
    .locals 5

    .line 840
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->isLocationRequestProcessing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 841
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->isLocationRequestProcessing:Z

    .line 842
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 843
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 846
    :cond_0
    :try_start_0
    new-instance v1, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/fragments/FOHome$3;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fragments/FOHome$3;-><init>(Lcom/conceptglobal/pmc/fragments/FOHome;)V

    const-string v4, "FOHome"

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 866
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private getDataFromDB()V
    .locals 5

    .line 397
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->isFrom:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "Survey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->mParam1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getGetAllSurveyTODOData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActivityNamesForToDo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 401
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 403
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/VillageDetails;->getVillageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getGetAllSurveyTODODataTBV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/model/VillageDetails;->setTbv(I)V

    .line 404
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/VillageDetails;->getVillageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getGetAllSurveyTODODataPD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/model/VillageDetails;->setPd(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 406
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getGetAllSurveyVillagesData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getVillageNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    goto :goto_2

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->mParam1:Ljava/lang/String;

    const-string v1, "Activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :cond_2
    :goto_2
    return-void
.end method

.method private getLocationDataFromDB(Ljava/lang/String;)V
    .locals 6

    .line 367
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->mParam1:Ljava/lang/String;

    const-string v1, "Activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/conceptglobal/pmc/common/Queries;->getGetAllActivityTODOData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActivityNamesForToDo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 370
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/VillageDetails;->getVillageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/conceptglobal/pmc/common/Queries;->getGetAllActivityTODODataTBV(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/VillageDetails;->setTbv(I)V

    .line 373
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/VillageDetails;->getVillageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/conceptglobal/pmc/common/Queries;->getGetAllActivityTODODataPAD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/VillageDetails;->setPd(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 375
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/conceptglobal/pmc/common/Queries;->getGetAllVillagesData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getVillageNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 384
    :goto_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 386
    :try_start_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/VillageDetails;->getVillageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/VillageDetails;->getMandalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p1}, Lcom/conceptglobal/pmc/common/Queries;->getGetAllVillagesDataTBV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/VillageDetails;->setTbv(I)V

    .line 387
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/VillageDetails;->getVillageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/VillageDetails;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/VillageDetails;->getMandalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p1}, Lcom/conceptglobal/pmc/common/Queries;->getGetAllVillagesDataPD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/VillageDetails;->setPd(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 389
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    return-void
.end method

.method private init()V
    .locals 4

    .line 165
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->context:Landroid/content/Context;

    .line 166
    new-instance v0, Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 167
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    const v1, 0x7f0902e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->lvList:Landroid/widget/ListView;

    .line 168
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    const v1, 0x7f09059f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvVillageName:Landroid/widget/TextView;

    .line 169
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    const v1, 0x7f090586

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvTBV:Landroid/widget/TextView;

    .line 170
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    const v1, 0x7f090566

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvPD:Landroid/widget/TextView;

    .line 171
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    const v1, 0x7f090599

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvVC:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    const v1, 0x7f0902d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->loaderrl:Landroid/widget/RelativeLayout;

    .line 173
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    const v1, 0x7f0902d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->loaderText:Landroid/widget/TextView;

    .line 176
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    const v1, 0x7f090201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->filtersLL:Landroid/widget/LinearLayout;

    .line 177
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    const v1, 0x7f090148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->custTypeSearch:Landroid/widget/EditText;

    .line 178
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_customTypeFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    const v1, 0x7f090147

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->cropSearch:Landroid/widget/EditText;

    .line 180
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cropFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->cropSearch:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    const v2, 0x7f09013e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->brandSearch:Landroid/widget/EditText;

    .line 183
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_brandFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->brandSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    const v2, 0x7f090144

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->radiusSearch:Landroid/widget/EditText;

    .line 187
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_radiusFilterText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    const v2, 0x7f090488

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvCustTypeId:Landroid/widget/TextView;

    .line 191
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    const v2, 0x7f090482

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvCropId:Landroid/widget/TextView;

    .line 192
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    const v2, 0x7f09047b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvBrandId:Landroid/widget/TextView;

    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    const v1, 0x7f0901fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->btnGo:Landroid/widget/TextView;

    .line 196
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_goFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    const v1, 0x7f0901e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->btnClear:Landroid/widget/TextView;

    .line 199
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_clearFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->custTypeSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->cropSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->btnGo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->btnClear:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    const v1, 0x7f090578

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvScroll:Landroid/widget/TextView;

    .line 211
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    const v1, 0x7f090118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->cvFarmerOTPVerification:Landroidx/cardview/widget/CardView;

    .line 212
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    const v1, 0x7f090119

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->cvRetailerOTPVerification:Landroidx/cardview/widget/CardView;

    .line 213
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    const v1, 0x7f0904ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvWIPCount:Landroid/widget/TextView;

    .line 214
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    const v1, 0x7f0904c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvRetailerWIPCount:Landroid/widget/TextView;

    .line 215
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvScroll:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_todoAbbrevations()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvScroll:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_todoAbbrevations()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvScroll:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 218
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvTBV:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvPD:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvVC:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->cvFarmerOTPVerification:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, p0}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->cvRetailerOTPVerification:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, p0}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->updateDraftFarmerCount()V

    return-void
.end method

.method private loadData()V
    .locals 2

    .line 143
    new-instance v0, Lcom/conceptglobal/pmc/fragments/FOHome$LoadDataTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/fragments/FOHome$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/fragments/FOHome;Lcom/conceptglobal/pmc/fragments/FOHome$1;)V

    const/4 v1, 0x0

    .line 144
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fragments/FOHome$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/conceptglobal/pmc/fragments/FOHome;
    .locals 3

    .line 111
    new-instance v0, Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/fragments/FOHome;-><init>()V

    .line 112
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 113
    const-string v2, "param1"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string p0, "param2"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string p0, "IsFrom"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fragments/FOHome;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private rad2deg(D)D
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double p1, p1, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private setData()V
    .locals 8

    .line 446
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->lvList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 455
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 456
    new-instance v0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->mParam1:Ljava/lang/String;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->filteredCutomerType:Ljava/lang/String;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->isFrom:Ljava/lang/String;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->svIDs:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->adapter:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    .line 457
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->lvList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_todoFarmerAssignAlertText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_todoFarmerAssignAlertText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    sget-object v2, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {v0, v1, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    :goto_1
    return-void
.end method

.method private setLayoutData()V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->mParam1:Ljava/lang/String;

    const-string v1, "Activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvVillageName:Landroid/widget/TextView;

    const-string v1, "ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvVillageName:Landroid/widget/TextView;

    const-string v1, "GEOGRAPHY"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvTBV:Landroid/widget/TextView;

    const-string v1, "To Be Completed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvPD:Landroid/widget/TextView;

    const-string v1, "Not Synced"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvVC:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100237

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setSueveyLayoutData()V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvVillageName:Landroid/widget/TextView;

    const-string v1, "Survey"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvTBV:Landroid/widget/TextView;

    const-string v1, "To Be Completed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvPD:Landroid/widget/TextView;

    const-string v1, "Not Synced"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvVC:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100237

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDraftFarmerCount()V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->isFrom:Ljava/lang/String;

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    const-string v2, "Survey"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getDraftFarmersCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 234
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 236
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->cvFarmerOTPVerification:Landroidx/cardview/widget/CardView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 237
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvWIPCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->cvFarmerOTPVerification:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->cvFarmerOTPVerification:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 245
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->cvFarmerOTPVerification:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateUnverifiedFarmerCount()V
    .locals 3

    .line 253
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->validateFarmerWithOTP()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->isFrom:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v2, "Survey"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 255
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getUnVerifiedFarmersCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 257
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 259
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->cvFarmerOTPVerification:Landroidx/cardview/widget/CardView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 260
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvWIPCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->cvFarmerOTPVerification:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->cvFarmerOTPVerification:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->cvFarmerOTPVerification:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateUnverifiedRetailerCount()V
    .locals 4

    .line 276
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->validateRetailerWithOTP()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->isFrom:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v2, "Survey"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getUnVerifiedRetailersCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 280
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 282
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->cvRetailerOTPVerification:Landroidx/cardview/widget/CardView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 283
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tvRetailerWIPCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->cvRetailerOTPVerification:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    goto :goto_0

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->cvRetailerOTPVerification:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->cvRetailerOTPVerification:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private validateFarmerWithOTP()Z
    .locals 5

    const/4 v0, 0x0

    .line 302
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

    .line 303
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getRoleIdFromuserRoleMapping()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 304
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 305
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 306
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 307
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

    .line 314
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return v0
.end method

.method private validateRetailerWithOTP()Z
    .locals 5

    const/4 v0, 0x0

    .line 321
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

    .line 322
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getRoleIdFromuserRoleMapping()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 323
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 324
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 325
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 326
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

    .line 333
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public disPlaySVRadiusData()V
    .locals 14

    .line 873
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->dbllatitude:Ljava/lang/Double;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->dbllongitude:Ljava/lang/Double;

    if-eqz v0, :cond_a

    .line 874
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 875
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getSVAssignmentIDs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSVActivityAssignmentIDs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 876
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 878
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getSVRadiusDataQry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSVRadiusData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 880
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 881
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->tempListVillageNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 883
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_7

    .line 884
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivityassignmentid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/SVRadiusDataModel;

    .line 896
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;

    .line 897
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getRadius()Ljava/lang/Double;

    move-result-object v7

    .line 898
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentId()I

    move-result v8

    if-ne v8, v6, :cond_0

    .line 899
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentId()I

    move-result v5

    invoke-virtual {v8, v9, v5}, Lcom/conceptglobal/pmc/common/Queries;->getLotLongDetailsQry(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLongInfo(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/LatLongDetails;

    move-result-object v5

    goto/16 :goto_1

    .line 900
    :cond_0
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentId()I

    move-result v6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_1

    .line 901
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentId()I

    move-result v5

    invoke-virtual {v8, v9, v5}, Lcom/conceptglobal/pmc/common/Queries;->getLotLongDetailsQry(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLongInfo(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/LatLongDetails;

    move-result-object v5

    goto/16 :goto_1

    .line 903
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentId()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_2

    .line 904
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentId()I

    move-result v5

    invoke-virtual {v8, v9, v5}, Lcom/conceptglobal/pmc/common/Queries;->getLotLongDetailsDealerQry(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLongInfo(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/LatLongDetails;

    move-result-object v5

    goto/16 :goto_1

    .line 906
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentId()I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_3

    .line 907
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentId()I

    move-result v5

    invoke-virtual {v8, v9, v5}, Lcom/conceptglobal/pmc/common/Queries;->getLotLongDetailsDealerQry(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLongInfo(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/LatLongDetails;

    move-result-object v5

    goto :goto_1

    .line 909
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentId()I

    move-result v6

    const/16 v8, 0x8

    if-ne v6, v8, :cond_4

    .line 910
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentId()I

    move-result v5

    invoke-virtual {v8, v9, v5}, Lcom/conceptglobal/pmc/common/Queries;->getLotLongDetailsQry(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLongInfo(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/LatLongDetails;

    move-result-object v5

    goto :goto_1

    .line 911
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentId()I

    move-result v6

    const/16 v8, 0x12

    if-ne v6, v8, :cond_5

    .line 912
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentId()I

    move-result v5

    invoke-virtual {v8, v9, v5}, Lcom/conceptglobal/pmc/common/Queries;->getLotLongDetailsDealerQry(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLongInfo(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/LatLongDetails;

    move-result-object v5

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_6

    .line 914
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/LatLongDetails;->getLatitude()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/LatLongDetails;->getLongitude()Ljava/lang/String;

    move-result-object v6

    const-string v8, "NULL"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/LatLongDetails;->getLatitude()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 915
    iget-object v9, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->dbllatitude:Ljava/lang/Double;

    iget-object v10, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->dbllongitude:Ljava/lang/Double;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/LatLongDetails;->getLatitude()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/LatLongDetails;->getLongitude()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    const/16 v13, 0x4b

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/conceptglobal/pmc/fragments/FOHome;->distance(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;C)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 916
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpg-double v9, v5, v7

    if-gtz v9, :cond_6

    .line 917
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivityassignmentid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 926
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 927
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 928
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 931
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 932
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 933
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 936
    :cond_9
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getLocationDataFromDB(Ljava/lang/String;)V

    .line 937
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->svIDs:Ljava/lang/String;

    :cond_a
    return-void
.end method

.method public distance(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;C)D
    .locals 6

    .line 954
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 955
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fragments/FOHome;->deg2rad(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/conceptglobal/pmc/fragments/FOHome;->deg2rad(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/FOHome;->deg2rad(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    invoke-direct {p0, p3, p4}, Lcom/conceptglobal/pmc/fragments/FOHome;->deg2rad(D)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/fragments/FOHome;->deg2rad(D)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    add-double/2addr v2, p1

    .line 956
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    .line 957
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/FOHome;->rad2deg(D)D

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

    .line 966
    :cond_5
    sget-object p3, Lcom/conceptglobal/pmc/fragments/FOHome;->twoDForm:Ljava/text/DecimalFormat;

    invoke-virtual {p3, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    return-wide p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 16

    move-object/from16 v1, p0

    .line 546
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v2, 0x3

    const v3, 0x7f1101b9

    const-string v4, " "

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-string v9, "FOHome"

    const-string v10, "farmerType"

    const-string v11, "Survey"

    const-string v12, ""

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 551
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draftsHint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draftsHint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_0
    sget-object v2, Lde/keyboardsurfer/android/widget/crouton/Style;->INFO:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {v0, v12, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    goto/16 :goto_1

    .line 548
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_tbvScrollText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_tbvScrollText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_1
    sget-object v2, Lde/keyboardsurfer/android/widget/crouton/Style;->INFO:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {v0, v12, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    goto/16 :goto_1

    .line 554
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pendingDataHint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pendingDataHint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_2
    sget-object v2, Lde/keyboardsurfer/android/widget/crouton/Style;->INFO:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {v0, v12, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    goto/16 :goto_1

    .line 657
    :sswitch_3
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->tvCustTypeId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 658
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->tvCustTypeId:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getGetAllVillagesDataBySegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getVillageNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    .line 659
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->tvCustTypeId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->filteredCutomerType:Ljava/lang/String;

    goto :goto_0

    .line 661
    :cond_3
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getGetAllVillagesData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getVillageNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    .line 662
    iput-object v12, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->filteredCutomerType:Ljava/lang/String;

    .line 664
    :goto_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->isFrom:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 665
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->setData()V

    goto/16 :goto_1

    .line 667
    :cond_4
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->isFrom:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 668
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->setData()V

    goto/16 :goto_1

    .line 670
    :cond_5
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->dbllatitude:Ljava/lang/Double;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v2, v7

    if-lez v0, :cond_6

    .line 671
    new-instance v0, Lcom/conceptglobal/pmc/fragments/FOHome$LoadRadiusDataTask;

    invoke-direct {v0, v1, v6}, Lcom/conceptglobal/pmc/fragments/FOHome$LoadRadiusDataTask;-><init>(Lcom/conceptglobal/pmc/fragments/FOHome;Lcom/conceptglobal/pmc/fragments/FOHome$1;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/fragments/FOHome$LoadRadiusDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 673
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->fetchLocation()V

    goto/16 :goto_1

    .line 682
    :sswitch_4
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->custTypeSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->brandSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 684
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->cropSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 686
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 687
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->tvCropId:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->tvCustTypeId:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->tvBrandId:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    iput-object v12, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->filteredCutomerType:Ljava/lang/String;

    .line 692
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getGetAllVillagesData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getVillageNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->listVillageNames:Ljava/util/List;

    .line 693
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->isFrom:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 694
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->setData()V

    goto/16 :goto_1

    .line 697
    :cond_7
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->dbllatitude:Ljava/lang/Double;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v2, v7

    if-lez v0, :cond_8

    .line 698
    new-instance v0, Lcom/conceptglobal/pmc/fragments/FOHome$LoadRadiusDataTask;

    invoke-direct {v0, v1, v6}, Lcom/conceptglobal/pmc/fragments/FOHome$LoadRadiusDataTask;-><init>(Lcom/conceptglobal/pmc/fragments/FOHome;Lcom/conceptglobal/pmc/fragments/FOHome$1;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/fragments/FOHome$LoadRadiusDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 700
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->fetchLocation()V

    goto/16 :goto_1

    .line 559
    :sswitch_5
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_customTypeFilterText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->getActivitySegments()Ljava/lang/String;

    move-result-object v13

    iget-object v15, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->tvCustTypeId:Landroid/widget/TextView;

    move-object v10, v0

    move-object/from16 v14, p1

    invoke-direct/range {v10 .. v15}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 560
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 561
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 562
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 564
    invoke-static {v9, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 569
    :sswitch_6
    :try_start_1
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cropFilterText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->getCropNames()Ljava/lang/String;

    move-result-object v13

    iget-object v15, v1, Lcom/conceptglobal/pmc/fragments/FOHome;->tvCropId:Landroid/widget/TextView;

    move-object v10, v0

    move-object/from16 v14, p1

    invoke-direct/range {v10 .. v15}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 570
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 571
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 572
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 574
    invoke-static {v9, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 717
    :sswitch_7
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/conceptglobal/pmc/registration/UnVerifiedFramersList;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 718
    const-string v2, "UnVerifiedRetailer"

    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fragments/FOHome;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 709
    :sswitch_8
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 710
    const-string v2, "Farmer"

    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    const-string v2, "segmentId"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 712
    const-string v2, "ShowDraft"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x4000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090118 -> :sswitch_8
        0x7f090119 -> :sswitch_7
        0x7f090147 -> :sswitch_6
        0x7f090148 -> :sswitch_5
        0x7f0901e7 -> :sswitch_4
        0x7f0901fb -> :sswitch_3
        0x7f090566 -> :sswitch_2
        0x7f090586 -> :sswitch_1
        0x7f090599 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 149
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->mParam1:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->mParam2:Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "IsFrom"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->isFrom:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    const v0, 0x7f0d0011

    .line 759
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0901fd

    .line 760
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->filterItem:Landroid/view/MenuItem;

    const v0, 0x7f090432

    .line 761
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 762
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->mParam1:Ljava/lang/String;

    const-string v2, "Activity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 763
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->filterItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 764
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 766
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->filterItem:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 767
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 769
    :goto_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 770
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->isFrom:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "Survey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->filterItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 774
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->filterItem:Landroid/view/MenuItem;

    const v1, 0x7f080146

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2
    const v0, 0x7f0903c8

    .line 777
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 778
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "search"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 779
    invoke-static {v0}, Landroidx/core/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SearchView;

    if-eqz v2, :cond_3

    .line 781
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 782
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 785
    :cond_3
    new-instance v1, Lcom/conceptglobal/pmc/fragments/FOHome$1;

    invoke-direct {v1, p0, v2}, Lcom/conceptglobal/pmc/fragments/FOHome$1;-><init>(Lcom/conceptglobal/pmc/fragments/FOHome;Landroidx/appcompat/widget/SearchView;)V

    invoke-static {v0, v1}, Landroidx/core/view/MenuItemCompat;->setOnActionExpandListener(Landroid/view/MenuItem;Landroidx/core/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 804
    new-instance v0, Lcom/conceptglobal/pmc/fragments/FOHome$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/FOHome$2;-><init>(Lcom/conceptglobal/pmc/fragments/FOHome;)V

    .line 820
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 821
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 124
    iget-object p3, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c0169

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    :cond_0
    const/4 p1, 0x1

    .line 127
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/FOHome;->setHasOptionsMenu(Z)V

    .line 128
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->init()V

    .line 129
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->isFrom:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string p2, "Survey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->setSueveyLayoutData()V

    goto :goto_0

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->setLayoutData()V

    .line 138
    :goto_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->checkCountForSync()V

    .line 139
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 731
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const v1, 0x7f0901fd

    if-eq v0, v1, :cond_1

    const v1, 0x7f090432

    if-eq v0, v1, :cond_0

    .line 752
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 737
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/activity/TargetVsPlanSummaryActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 738
    const-string v0, "title"

    const-string v1, "Target&PlanSummary"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 744
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->filtersLL:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f080146

    .line 745
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 746
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 747
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f080145

    .line 748
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_3
    :goto_0
    return v2

    .line 733
    :cond_4
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return v2
.end method

.method public onResume()V
    .locals 0

    .line 467
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 468
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FOHome;->loadData()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 160
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    return-void
.end method
