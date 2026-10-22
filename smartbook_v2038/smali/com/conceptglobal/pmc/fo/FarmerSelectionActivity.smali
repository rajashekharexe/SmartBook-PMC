.class public Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "FarmerSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;,
        Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$MyLocationListener;,
        Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$DecimalDigitsInputFilter;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "FarmerSelectionActivity"

.field public static twoDForm:Ljava/text/DecimalFormat;


# instance fields
.field private SVIDS:Ljava/lang/String;

.field private addBrandQuery:Ljava/lang/String;

.field private addCropQuery:Ljava/lang/String;

.field private addCustTypeQuery:Ljava/lang/String;

.field private addRadiusQuery:Ljava/lang/String;

.field private brandSearch:Landroid/widget/EditText;

.field private btnClear:Landroid/widget/TextView;

.field private btnGo:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private cropSearch:Landroid/widget/EditText;

.field private custTypeSearch:Landroid/widget/EditText;

.field private dbllatitude:Ljava/lang/Double;

.field private dbllongitude:Ljava/lang/Double;

.field private filteredCustType:Ljava/lang/String;

.field private filtersLL:Landroid/widget/LinearLayout;

.field private from:Ljava/lang/String;

.field private hasLocation:Z

.field private isFrom:Ljava/lang/String;

.field private isMba:I

.field private listFarmerNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation
.end field

.field private location1:Ljava/lang/String;

.field private location2:Ljava/lang/String;

.field private locationControlTask:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;

.field private locationMgr:Landroid/location/LocationManager;

.field private mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

.field private myLocationListener:Landroid/location/LocationListener;

.field private radiusSearch:Landroid/widget/EditText;

.field private recyclerAdapter:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

.field private recyclerAdapter1:Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;

.field private segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

.field private tempListFarmerNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation
.end field

.field private tvBrandId:Landroid/widget/TextView;

.field private tvCropId:Landroid/widget/TextView;

.field private tvCustTypeId:Landroid/widget/TextView;

.field private villageID:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 94
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->twoDForm:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->listFarmerNames:Ljava/util/ArrayList;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addCustTypeQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addCropQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addBrandQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addRadiusQuery:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->isFrom:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->SVIDS:Ljava/lang/String;

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->hasLocation:Z

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->isFrom:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->recyclerAdapter1:Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->setData(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->locationControlTask:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;)Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->locationControlTask:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;

    return-object p1
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->recyclerAdapter:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Landroid/content/Context;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->hasLocation:Z

    return p0
.end method

.method static synthetic access$402(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->hasLocation:Z

    return p1
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Ljava/lang/Double;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->dbllatitude:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$502(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->dbllatitude:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Ljava/lang/Double;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->dbllongitude:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$602(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->dbllongitude:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tempListFarmerNames:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$702(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tempListFarmerNames:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Landroid/widget/EditText;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->radiusSearch:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->listFarmerNames:Ljava/util/ArrayList;

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

    .line 637
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 638
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

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

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_gpsOKButton()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$3;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$3;-><init>(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 645
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private fetchLocation()V
    .locals 4

    .line 860
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 864
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$6;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$6;-><init>(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)V

    const-string v2, "FarmerSelectionActivity"

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 883
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getData()V
    .locals 7

    .line 210
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 211
    const-string v1, "FROM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->from:Ljava/lang/String;

    .line 212
    const-string v1, "IsFrom"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Survey"

    const-string v4, "Activity"

    const-string v5, "FeedBack"

    const-string v6, ""

    if-eqz v2, :cond_2

    .line 213
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->isFrom:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 214
    iput-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->isFrom:Ljava/lang/String;

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->isFrom:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->isFrom:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 216
    :cond_1
    iput-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->from:Ljava/lang/String;

    .line 219
    :cond_2
    const-string v1, "location1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->location1:Ljava/lang/String;

    .line 220
    const-string v1, "location2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->location2:Ljava/lang/String;

    .line 221
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->villageID:I

    .line 222
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->isMba:I

    .line 223
    const-string v1, "FilteredCustType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->filteredCustType:Ljava/lang/String;

    .line 224
    const-string v1, "SVIDS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->SVIDS:Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->isFrom:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->filtersLL:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->isFrom:Ljava/lang/String;

    const-string v1, " "

    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 229
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->filteredCustType:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " and pmcSurveyAssignmentActivityDetails.ActivitySegmentId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->filteredCustType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addCustTypeQuery:Ljava/lang/String;

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->from:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 233
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->location1:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->location2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addCustTypeQuery:Ljava/lang/String;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addCropQuery:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getAllSurveysDataWithFilterByActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerToDODetails(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->listFarmerNames:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 235
    :cond_5
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->location1:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->location2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addCustTypeQuery:Ljava/lang/String;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addCropQuery:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getAllFarmersDataWithFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerToDODetails(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->listFarmerNames:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 237
    :cond_6
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->isFrom:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 238
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->filteredCustType:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " and pmcFBFAssignmentActivityDetails.ActivitySegmentId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->filteredCustType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addCustTypeQuery:Ljava/lang/String;

    .line 242
    :cond_7
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->location1:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->location2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addCustTypeQuery:Ljava/lang/String;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addCropQuery:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getAllFBFDataWithFilterByActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFFarmerToDODetails(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->listFarmerNames:Ljava/util/ArrayList;

    goto :goto_0

    .line 245
    :cond_8
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->filteredCustType:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " and pmcassignmentactivitydetails.ActivitySegmentId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->filteredCustType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addCustTypeQuery:Ljava/lang/String;

    .line 248
    :cond_9
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->from:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 250
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->location1:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->location2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addCustTypeQuery:Ljava/lang/String;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addCropQuery:Ljava/lang/String;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->SVIDS:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/conceptglobal/pmc/common/Queries;->getSVAllFarmersDataWithFilterByActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerToDODetails(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->listFarmerNames:Ljava/util/ArrayList;

    goto :goto_0

    .line 255
    :cond_a
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->location1:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->location2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addCustTypeQuery:Ljava/lang/String;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addCropQuery:Ljava/lang/String;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->SVIDS:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/conceptglobal/pmc/common/Queries;->getAllFarmersDataWithFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerToDODetails(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->listFarmerNames:Ljava/util/ArrayList;

    :goto_0
    return-void
.end method

.method private init()V
    .locals 3

    const v0, 0x7f0902df

    .line 152
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 153
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 154
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 156
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const v0, 0x7f0901ff

    .line 158
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->filtersLL:Landroid/widget/LinearLayout;

    const v0, 0x7f090148

    .line 159
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->custTypeSearch:Landroid/widget/EditText;

    .line 160
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_customTypeFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f090146

    .line 161
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->cropSearch:Landroid/widget/EditText;

    .line 162
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cropFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f090144

    .line 163
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->radiusSearch:Landroid/widget/EditText;

    .line 164
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_radiusFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f09013e

    .line 178
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->brandSearch:Landroid/widget/EditText;

    .line 179
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_brandFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->brandSearch:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    const v0, 0x7f090488

    .line 182
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tvCustTypeId:Landroid/widget/TextView;

    const v0, 0x7f090482

    .line 183
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tvCropId:Landroid/widget/TextView;

    const v0, 0x7f09047b

    .line 184
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tvBrandId:Landroid/widget/TextView;

    .line 185
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0901f6

    .line 187
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->btnGo:Landroid/widget/TextView;

    .line 188
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_goFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0901f5

    .line 190
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->btnClear:Landroid/widget/TextView;

    .line 191
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_clearFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->custTypeSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->cropSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->btnGo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->btnClear:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

.method private setActionBar()V
    .locals 5

    .line 129
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->from:Ljava/lang/String;

    const-string v2, "Activity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "("

    const-string v3, ")"

    if-eqz v1, :cond_2

    .line 131
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->isFrom:Ljava/lang/String;

    const-string v1, "FeedBack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->location1:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFActiviyName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->isFrom:Ljava/lang/String;

    const-string v1, "Survey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Survey Details("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 138
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->location1:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 141
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGENAME()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    :goto_0
    return-void
.end method

.method private setData(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 268
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 269
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->isFrom:Ljava/lang/String;

    const-string v1, "FeedBack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 271
    new-instance v0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->isFrom:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->recyclerAdapter1:Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;

    .line 272
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->SVIDS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 276
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 277
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->SVIDS:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityAssignmentId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->setIsInsideRadius(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 283
    new-instance v0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->isFrom:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->recyclerAdapter:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    .line 284
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 288
    :cond_3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/ToDoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 289
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->finish()V

    :goto_1
    return-void
.end method


# virtual methods
.method public disPlayRadiusData()V
    .locals 11

    .line 739
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->dbllatitude:Ljava/lang/Double;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->dbllongitude:Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 741
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tempListFarmerNames:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 743
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 744
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->radiusSearch:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 745
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 747
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tempListFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 749
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->listFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 751
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->listFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    .line 753
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLatitude()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLongitude()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NULL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 755
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->dbllatitude:Ljava/lang/Double;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->dbllongitude:Ljava/lang/Double;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const/16 v10, 0x4b

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->distance(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;C)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 757
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_1

    .line 758
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tempListFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 763
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tempListFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_4

    .line 764
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->isFrom:Ljava/lang/String;

    const-string v3, "FeedBack"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 765
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 766
    new-instance v0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tempListFarmerNames:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->isFrom:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->recyclerAdapter1:Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;

    .line 767
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 770
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 771
    new-instance v0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tempListFarmerNames:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->isFrom:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->recyclerAdapter:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    .line 772
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 778
    :cond_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->context:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noItemsAvailableAlert()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 779
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 782
    :cond_5
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->locationNotFound()V

    :goto_1
    return-void
.end method

.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public distance(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;C)D
    .locals 6

    .line 591
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 592
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->deg2rad(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->deg2rad(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->deg2rad(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    invoke-direct {p0, p3, p4}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->deg2rad(D)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->deg2rad(D)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    add-double/2addr v2, p1

    .line 593
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    .line 594
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->rad2deg(D)D

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

    .line 603
    :cond_5
    sget-object p3, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->twoDForm:Ljava/text/DecimalFormat;

    invoke-virtual {p3, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    return-wide p1
.end method

.method public locationNotFound()V
    .locals 4

    .line 721
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 722
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

    new-instance v3, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$4;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$4;-><init>(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 729
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_gpsCancelButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$5;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$5;-><init>(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 734
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 832
    invoke-super {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 851
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 852
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->recyclerAdapter:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->callSurvey(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_0

    .line 842
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "GPSNotTurnedOn"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 837
    :cond_4
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->fetchLocation()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x3

    const v2, 0x7f1101b9

    const/4 v3, 0x0

    const-string v4, "FarmerSelectionActivity"

    const-string v5, ""

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_3

    .line 339
    :sswitch_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tvCustTypeId:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tvCropId:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_7

    .line 340
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 342
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tvCustTypeId:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const-string v2, " "

    if-eqz p1, :cond_1

    .line 343
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v6, " and pmcassignmentactivitydetails.ActivitySegmentId="

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tvCustTypeId:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addCustTypeQuery:Ljava/lang/String;

    .line 346
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tvCropId:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_2

    .line 347
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v6, " and attributeValue ="

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tvCropId:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addCropQuery:Ljava/lang/String;

    .line 353
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->listFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 355
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_5

    .line 356
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->location1:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->location2:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addCustTypeQuery:Ljava/lang/String;

    iget-object v9, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addCropQuery:Ljava/lang/String;

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->getAllFarmersDataFilterWithRadius(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerToDOLatLongDetails(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->listFarmerNames:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 369
    :try_start_1
    iput-boolean v3, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->hasLocation:Z

    if-eqz p1, :cond_3

    .line 372
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 373
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->fetchLocation()V

    goto :goto_0

    .line 384
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->listFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 385
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->listFarmerNames:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->setData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 387
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->context:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noItemsAvailableAlert()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 388
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 392
    :try_start_2
    invoke-static {v4, p1, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 396
    :cond_5
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->getData()V

    .line 397
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->listFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 398
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->listFarmerNames:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->setData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 400
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->context:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noItemsAvailableAlert()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 401
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 405
    :goto_0
    iput-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addCustTypeQuery:Ljava/lang/String;

    .line 406
    iput-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addCropQuery:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 409
    invoke-static {v4, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 422
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->listFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_8

    .line 423
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->context:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noItemsAvailableAlert()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 424
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 426
    :cond_8
    iput-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addCustTypeQuery:Ljava/lang/String;

    .line 427
    iput-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addCropQuery:Ljava/lang/String;

    .line 428
    iput-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->addRadiusQuery:Ljava/lang/String;

    goto/16 :goto_3

    .line 434
    :sswitch_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->custTypeSearch:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->brandSearch:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->cropSearch:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tvCropId:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tvCustTypeId:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tvBrandId:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->getData()V

    .line 445
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->listFarmerNames:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->setData(Ljava/util/ArrayList;)V

    goto/16 :goto_3

    .line 301
    :sswitch_2
    :try_start_3
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->context:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getActivitySegments()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tvCustTypeId:Landroid/widget/TextView;

    move-object v5, v0

    move-object v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 302
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 303
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 304
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception p1

    .line 306
    invoke-static {v4, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 312
    :sswitch_3
    :try_start_4
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->context:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getCropNames()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tvCropId:Landroid/widget/TextView;

    move-object v5, v0

    move-object v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 313
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 314
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 315
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception p1

    .line 317
    invoke-static {v4, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 322
    :sswitch_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tvCropId:Landroid/widget/TextView;

    if-nez v0, :cond_a

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    goto :goto_2

    .line 332
    :cond_9
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->context:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pleaseSelectCropToast()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 324
    :cond_a
    :goto_2
    :try_start_5
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->context:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tvCropId:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/common/Queries;->brandNamesBassedOnCropId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->tvBrandId:Landroid/widget/TextView;

    move-object v5, v0

    move-object v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 325
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 326
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 327
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 329
    invoke-static {v4, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09013e -> :sswitch_4
        0x7f090146 -> :sswitch_3
        0x7f090148 -> :sswitch_2
        0x7f0901f5 -> :sswitch_1
        0x7f0901f6 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00d9

    .line 107
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->setContentView(I)V

    .line 108
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->context:Landroid/content/Context;

    .line 109
    new-instance p1, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 110
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 111
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->init()V

    .line 112
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->getData()V

    .line 113
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->setActionBar()V

    .line 114
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->listFarmerNames:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->setData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .line 463
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0903c8

    .line 464
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 466
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->isFrom:Ljava/lang/String;

    const-string v2, "FeedBack"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const v4, 0x7f0901f4

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 468
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->isFrom:Ljava/lang/String;

    const-string v5, "Survey"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 471
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 473
    :cond_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 474
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f080146

    .line 475
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 480
    :cond_2
    :goto_0
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 481
    invoke-static {v0}, Landroidx/core/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SearchView;

    if-eqz v2, :cond_3

    .line 483
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 484
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 486
    :cond_3
    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$1;

    invoke-direct {v1, p0, v2}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$1;-><init>(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;Landroidx/appcompat/widget/SearchView;)V

    invoke-static {v0, v1}, Landroidx/core/view/MenuItemCompat;->setOnActionExpandListener(Landroid/view/MenuItem;Landroidx/core/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 520
    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$2;-><init>(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)V

    .line 549
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 550
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 561
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const v1, 0x7f0901f4

    if-eq v0, v1, :cond_0

    .line 576
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 568
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->filtersLL:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f080146

    .line 569
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 571
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f080145

    .line 572
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    return v2

    .line 563
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->finish()V

    return v2
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 813
    array-length p1, p3

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 818
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 820
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->fetchLocation()V

    goto :goto_0

    .line 823
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 585
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    .line 586
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->getData()V

    .line 587
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->listFarmerNames:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->setData(Ljava/util/ArrayList;)V

    return-void
.end method
