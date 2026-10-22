.class public Lcom/conceptglobal/pmc/fragments/ToDoFragment;
.super Landroidx/fragment/app/Fragment;
.source "ToDoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocationControl;,
        Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocalBroadcastReceiver;,
        Lcom/conceptglobal/pmc/fragments/ToDoFragment$OnFragmentInteractionListener;,
        Lcom/conceptglobal/pmc/fragments/ToDoFragment$ApprovalCall;,
        Lcom/conceptglobal/pmc/fragments/ToDoFragment$MyLocationListener;,
        Lcom/conceptglobal/pmc/fragments/ToDoFragment$DecimalDigitsInputFilter;
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "param1"

.field private static final ARG_PARAM2:Ljava/lang/String; = "param2"

.field private static final DATEDIALOGID:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "ToDoFragment"

.field public static twoDForm:Ljava/text/DecimalFormat;


# instance fields
.field Transids:Ljava/lang/String;

.field private adapterRecyclerCustomers:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

.field private adapterRecyclerCustomers_expenses:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;

.field private addCropQuery:Ljava/lang/String;

.field private addCustTypeQuery:Ljava/lang/String;

.field private approvlStatusExpensesModels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;",
            ">;"
        }
    .end annotation
.end field

.field private brandSearch:Landroid/widget/EditText;

.field private btnAddExpenses:Landroid/widget/Button;

.field private btnClear:Landroid/widget/TextView;

.field private btnGo:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private cropSearch:Landroid/widget/EditText;

.field private custTypeSearch:Landroid/widget/EditText;

.field private dbllatitude:Ljava/lang/Double;

.field private dbllongitude:Ljava/lang/Double;

.field private filtersLL:Landroid/widget/LinearLayout;

.field private getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private hasLocation:Z

.field private isFrom:Ljava/lang/String;

.field private isLocationRequestProcessing:Z

.field private listFarmerNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation
.end field

.field private locationControlTask:Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocationControl;

.field private locationMgr:Landroid/location/LocationManager;

.field private mActivity:Landroid/app/Activity;

.field private mDay:I

.field private mFiledStr:Ljava/lang/String;

.field private mListener:Lcom/conceptglobal/pmc/fragments/ToDoFragment$OnFragmentInteractionListener;

.field private mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocalBroadcastReceiver;

.field private mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

.field private mMonth:I

.field private mParam1:Ljava/lang/String;

.field private mParam2:Ljava/lang/String;

.field private mYear:I

.field private myLocationListener:Landroid/location/LocationListener;

.field private queries:Lcom/conceptglobal/pmc/common/Queries;

.field private radiusSearch:Landroid/widget/EditText;

.field private rootView:Landroid/view/View;

.field private segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

.field private strBuildTranList:Ljava/lang/StringBuilder;

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

.field private txt:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 134
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->twoDForm:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 147
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->mFiledStr:Ljava/lang/String;

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    .line 126
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->addCustTypeQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->addCropQuery:Ljava/lang/String;

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->hasLocation:Z

    .line 139
    new-instance v0, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->strBuildTranList:Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->adapterRecyclerCustomers:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocationControl;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->locationControlTask:Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocationControl;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/conceptglobal/pmc/fragments/ToDoFragment;Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocationControl;)Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocationControl;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->locationControlTask:Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocationControl;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->fetchLocation()V

    return-void
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)Lcom/conceptglobal/pmc/utils/LocationUtils;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/conceptglobal/pmc/fragments/ToDoFragment;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->isLocationRequestProcessing:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getApprovalData()V

    return-void
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)Lcom/conceptglobal/pmc/database/GetDataFromDB;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->hasLocation:Z

    return p0
.end method

.method static synthetic access$302(Lcom/conceptglobal/pmc/fragments/ToDoFragment;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->hasLocation:Z

    return p1
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)Ljava/lang/Double;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->dbllatitude:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$402(Lcom/conceptglobal/pmc/fragments/ToDoFragment;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->dbllatitude:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)Ljava/lang/Double;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->dbllongitude:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$502(Lcom/conceptglobal/pmc/fragments/ToDoFragment;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->dbllongitude:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tempListFarmerNames:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$602(Lcom/conceptglobal/pmc/fragments/ToDoFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tempListFarmerNames:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)Landroid/widget/EditText;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->radiusSearch:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fragments/ToDoFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->setData(Ljava/util/ArrayList;)V

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

    .line 744
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 745
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_gpsOKButton()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/fragments/ToDoFragment$3;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment$3;-><init>(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 752
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private fetchLocation()V
    .locals 5

    .line 999
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->isLocationRequestProcessing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1000
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->isLocationRequestProcessing:Z

    .line 1001
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 1005
    :cond_0
    :try_start_0
    new-instance v1, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/fragments/ToDoFragment$6;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment$6;-><init>(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)V

    const-string v4, "ToDoFragment"

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1030
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private getApprovalData()V
    .locals 7

    .line 1076
    const-string v0, "data"

    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 1077
    new-instance v2, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;-><init>()V

    .line 1079
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->strBuildTranList:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1080
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->strBuildTranList:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->Transids:Ljava/lang/String;

    .line 1082
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodExpensesApproval()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1084
    new-instance v3, Lcom/conceptglobal/pmc/model/ExpApprovalModel;

    invoke-direct {v3}, Lcom/conceptglobal/pmc/model/ExpApprovalModel;-><init>()V

    .line 1085
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->Transids:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/ExpApprovalModel;->setTransids(Ljava/lang/String;)V

    .line 1086
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/ExpApprovalModel;->setPDAID(Ljava/lang/String;)V

    .line 1087
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1089
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1091
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1093
    const-string v2, "status"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AUTHORISED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1094
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xa

    if-le v2, v4, :cond_0

    .line 1095
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/sync/MasterSync;->decompressNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1096
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v0, Lcom/conceptglobal/pmc/model/ExpensesRespMOdel;

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/ExpensesRespMOdel;

    const/4 v1, 0x0

    .line 1097
    :goto_0
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ExpensesRespMOdel;->getApprovlStatusExpensesModels()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1098
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    .line 1099
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ExpensesRespMOdel;->getApprovlStatusExpensesModels()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;->getTransId()Ljava/lang/String;

    move-result-object v4

    .line 1100
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ExpensesRespMOdel;->getApprovlStatusExpensesModels()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;->getIsApproved()I

    move-result v5

    .line 1101
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ExpensesRespMOdel;->getApprovlStatusExpensesModels()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;->getApprovedBy()I

    move-result v6

    .line 1099
    invoke-virtual {v3, v4, v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateExpensesDetails(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    .line 1098
    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1108
    const-string v1, "errrorro"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private getDataFromDB()V
    .locals 9

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->isFrom:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "Survey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->addCustTypeQuery:Ljava/lang/String;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->addCropQuery:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getAllSurveysDataTimeBased(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerToDODetails(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    goto/16 :goto_4

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->isFrom:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v1, "Calendar"

    if-eqz v0, :cond_6

    :try_start_1
    const-string v2, "ExpensesToDo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 538
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->btnAddExpenses:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->mParam1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 542
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v3, "ExpensesRequiredAttributeId"

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 543
    :try_start_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    const-string v4, "ExpensesRequiredConfigId"

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :catch_1
    const/4 v2, 0x0

    .line 546
    :goto_0
    :try_start_4
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->addCustTypeQuery:Ljava/lang/String;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->addCropQuery:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getAllExpensesFarmersDataTimeBased(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "TODO"

    invoke-virtual {v3, v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerToDODetailsExpenses(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 549
    :goto_1
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const-string v5, ","

    const/4 v6, 0x1

    if-ge v3, v4, :cond_2

    .line 550
    :try_start_5
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getIsExpensesSubmited()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 551
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityAssignmentId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getExpanceAssignList(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 552
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->strBuildTranList:Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 556
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->addCustTypeQuery:Ljava/lang/String;

    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->addCropQuery:Ljava/lang/String;

    invoke-virtual {v4, v7, v8, v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getAllExpensesSelfFarmersDataTimeBased(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SELF"

    invoke-virtual {v3, v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerToDODetailsExpenses(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 557
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 558
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    .line 559
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 560
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getIsExpensesSubmited()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 561
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getTransId()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getExpanceTranList(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 562
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->strBuildTranList:Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 566
    :cond_4
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->addCustTypeQuery:Ljava/lang/String;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->addCropQuery:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getSelfExpensesFarmersDataTimeBased(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EXP"

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerToDODetailsExpenses(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 567
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 568
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 569
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 570
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getIsExpensesSubmited()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 571
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->strBuildTranList:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getTransId()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 577
    :cond_6
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->mParam1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 578
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->addCustTypeQuery:Ljava/lang/String;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->addCropQuery:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getAllFarmersDataTimeBased(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerToDODetails(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    goto :goto_4

    .line 580
    :cond_7
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getAllFarmersDataContactBased()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerToDODetails(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 584
    const-string v1, "ToDoFragment"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    return-void
.end method

.method private intialize()V
    .locals 3

    .line 254
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->context:Landroid/content/Context;

    .line 255
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->queries:Lcom/conceptglobal/pmc/common/Queries;

    .line 256
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 257
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0902dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 258
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 259
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 260
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 261
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 263
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->filtersLL:Landroid/widget/LinearLayout;

    .line 264
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->custTypeSearch:Landroid/widget/EditText;

    .line 265
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_customTypeFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090146

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->cropSearch:Landroid/widget/EditText;

    .line 267
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cropFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090144

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->radiusSearch:Landroid/widget/EditText;

    .line 269
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_radiusFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f09013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->brandSearch:Landroid/widget/EditText;

    .line 273
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_brandFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->brandSearch:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->rootView:Landroid/view/View;

    const v2, 0x7f090488

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tvCustTypeId:Landroid/widget/TextView;

    .line 277
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->rootView:Landroid/view/View;

    const v2, 0x7f090482

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tvCropId:Landroid/widget/TextView;

    .line 278
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->rootView:Landroid/view/View;

    const v2, 0x7f09047b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tvBrandId:Landroid/widget/TextView;

    .line 279
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0901fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->btnGo:Landroid/widget/TextView;

    .line 282
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_goFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f09008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->btnAddExpenses:Landroid/widget/Button;

    .line 285
    const-string v1, "Additional Expenses"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0901fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->btnClear:Landroid/widget/TextView;

    .line 287
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_clearFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->custTypeSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->cropSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->btnGo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->btnClear:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->btnAddExpenses:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/conceptglobal/pmc/fragments/ToDoFragment;
    .locals 3

    .line 152
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;-><init>()V

    .line 153
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 154
    const-string v2, "param1"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string p0, "param2"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string p0, "IsFrom"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->setArguments(Landroid/os/Bundle;)V

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

.method private setData(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;)V"
        }
    .end annotation

    .line 590
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->isFrom:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "Survey"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 592
    new-instance v0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->isFrom:Ljava/lang/String;

    invoke-direct {v0, v2, p1, v1, v3}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->adapterRecyclerCustomers:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    .line 593
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->isFrom:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v2, "ExpensesToDo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    new-instance v0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->isFrom:Ljava/lang/String;

    invoke-direct {v0, v2, p1, v1, v3}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->adapterRecyclerCustomers_expenses:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;

    .line 596
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 601
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->dbllatitude:Ljava/lang/Double;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_2

    .line 602
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->disPlaySVRadiusData()V

    goto :goto_0

    .line 604
    :cond_2
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->fetchLocation()V

    :goto_0
    return-void
.end method


# virtual methods
.method public disPlayRadiusData()V
    .locals 11

    .line 842
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->dbllatitude:Ljava/lang/Double;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->dbllongitude:Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 844
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tempListFarmerNames:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 846
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 847
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->radiusSearch:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 848
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 850
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tempListFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 852
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 853
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    .line 854
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

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 855
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->dbllatitude:Ljava/lang/Double;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->dbllongitude:Ljava/lang/Double;

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

    invoke-virtual/range {v5 .. v10}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->distance(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;C)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 856
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_1

    .line 857
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tempListFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 862
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tempListFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_4

    .line 863
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 864
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->isFrom:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v2, "ExpensesToDo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 865
    new-instance v0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tempListFarmerNames:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->isFrom:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->adapterRecyclerCustomers_expenses:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;

    .line 866
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 868
    :cond_3
    new-instance v0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tempListFarmerNames:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->isFrom:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->adapterRecyclerCustomers:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    .line 869
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 872
    :cond_4
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noItemsAvailableAlert()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 873
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 876
    :cond_5
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->locationNotFound()V

    :goto_1
    return-void
.end method

.method public disPlaySVRadiusData()V
    .locals 14

    .line 881
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->dbllatitude:Ljava/lang/Double;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->dbllongitude:Ljava/lang/Double;

    if-eqz v0, :cond_a

    .line 883
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tempListFarmerNames:Ljava/util/ArrayList;

    .line 884
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 885
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 886
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getSVRadiusDataQry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSVRadiusData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 888
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 889
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tempListFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    .line 891
    :goto_1
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_8

    .line 892
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityAssignmentId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/SVRadiusDataModel;

    .line 906
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    .line 908
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getActivityRadius(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    .line 910
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 912
    :goto_2
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 913
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->getLotLongDetailsQry(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLongInfo(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/LatLongDetails;

    move-result-object v5

    goto/16 :goto_3

    .line 914
    :cond_1
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_2

    .line 915
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->getLotLongDetailsQry(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLongInfo(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/LatLongDetails;

    move-result-object v5

    goto/16 :goto_3

    .line 916
    :cond_2
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_3

    .line 917
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->getLotLongDetailsDealerQry(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLongInfo(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/LatLongDetails;

    move-result-object v5

    goto :goto_3

    .line 918
    :cond_3
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_4

    .line 919
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->getLotLongDetailsDealerQry(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLongInfo(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/LatLongDetails;

    move-result-object v5

    goto :goto_3

    .line 920
    :cond_4
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v6

    const/16 v8, 0x8

    if-ne v6, v8, :cond_5

    .line 921
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->getLotLongDetailsQry(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLongInfo(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/LatLongDetails;

    move-result-object v5

    goto :goto_3

    .line 922
    :cond_5
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v6

    const/16 v8, 0x12

    if-ne v6, v8, :cond_6

    .line 923
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->getLotLongDetailsDealerQry(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLongInfo(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/LatLongDetails;

    move-result-object v5

    :cond_6
    :goto_3
    if-eqz v5, :cond_7

    .line 925
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/LatLongDetails;->getLatitude()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/LatLongDetails;->getLongitude()Ljava/lang/String;

    move-result-object v6

    const-string v8, "NULL"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/LatLongDetails;->getLatitude()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    .line 926
    iget-object v9, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->dbllatitude:Ljava/lang/Double;

    iget-object v10, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->dbllongitude:Ljava/lang/Double;

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

    invoke-virtual/range {v8 .. v13}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->distance(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;C)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 927
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpg-double v10, v5, v8

    # if-gtz v10, :cond_7 (bypassed)

    .line 928
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tempListFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v4, v7}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->setIsInsideRadius(I)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 940
    :cond_8
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 941
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 942
    new-instance v0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->isFrom:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->adapterRecyclerCustomers:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    .line 943
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_4

    .line 945
    :cond_9
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noItemsAvailableAlert()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 946
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_4

    .line 949
    :cond_a
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->locationNotFound()V

    :goto_4
    return-void
.end method

.method public distance(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;C)D
    .locals 6

    .line 700
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 701
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->deg2rad(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->deg2rad(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->deg2rad(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    invoke-direct {p0, p3, p4}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->deg2rad(D)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->deg2rad(D)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    add-double/2addr v2, p1

    .line 702
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    .line 703
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->rad2deg(D)D

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

    .line 712
    :cond_5
    sget-object p3, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->twoDForm:Ljava/text/DecimalFormat;

    invoke-virtual {p3, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    return-wide p1
.end method

.method public locationNotFound()V
    .locals 4

    .line 824
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 825
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/fragments/ToDoFragment$4;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment$4;-><init>(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 832
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_gpsCancelButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fragments/ToDoFragment$5;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment$5;-><init>(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 837
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1038
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1041
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1042
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->adapterRecyclerCustomers:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->callSurvey(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 204
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 205
    instance-of v0, p1, Lcom/conceptglobal/pmc/fragments/ToDoFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_0

    .line 206
    check-cast p1, Lcom/conceptglobal/pmc/fragments/ToDoFragment$OnFragmentInteractionListener;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->mListener:Lcom/conceptglobal/pmc/fragments/ToDoFragment$OnFragmentInteractionListener;

    :cond_0
    return-void
.end method

.method public onButtonPressed(Landroid/net/Uri;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->mListener:Lcom/conceptglobal/pmc/fragments/ToDoFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0, p1}, Lcom/conceptglobal/pmc/fragments/ToDoFragment$OnFragmentInteractionListener;->onFragmentInteraction(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x3

    const v2, 0x7f1101b9

    const/4 v3, 0x0

    const-string v4, " "

    const-string v5, "ToDoFragment"

    const/4 v6, 0x0

    const-string v7, ""

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    .line 333
    :sswitch_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tvCustTypeId:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tvCropId:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_8

    .line 334
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 335
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tvCustTypeId:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_1

    .line 336
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " and paad.ActivitySegmentId="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tvCustTypeId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->addCustTypeQuery:Ljava/lang/String;

    .line 338
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tvCropId:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_2

    .line 339
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " and attributeValue ="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tvCropId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->addCropQuery:Ljava/lang/String;

    :cond_2
    const/4 p1, 0x1

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 350
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 351
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->mParam1:Ljava/lang/String;

    const-string v1, "Calendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 352
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->addCustTypeQuery:Ljava/lang/String;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->addCropQuery:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/conceptglobal/pmc/common/Queries;->getAllFarmersDataTimeBasedByFilters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerToDOLatLongDetails(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 366
    :cond_3
    :try_start_1
    iput-boolean v6, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->hasLocation:Z

    .line 369
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 370
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->setData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 382
    :cond_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 383
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->setData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 385
    :cond_5
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noItemsAvailableAlert()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 386
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 390
    :try_start_2
    invoke-static {v5, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 393
    :cond_6
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getDataFromDB()V

    .line 394
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->setData(Ljava/util/ArrayList;)V

    .line 405
    :goto_0
    iput-object v7, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->addCustTypeQuery:Ljava/lang/String;

    .line 406
    iput-object v7, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->addCropQuery:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 408
    invoke-static {v5, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_7

    .line 412
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noItemsAvailableAlert()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 413
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->segmentTypelist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 415
    :cond_7
    iput-object v7, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->addCustTypeQuery:Ljava/lang/String;

    .line 416
    iput-object v7, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->addCropQuery:Ljava/lang/String;

    goto/16 :goto_2

    .line 422
    :sswitch_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->custTypeSearch:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->brandSearch:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->cropSearch:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->radiusSearch:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tvCropId:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tvCustTypeId:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tvBrandId:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getDataFromDB()V

    .line 433
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->setData(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 311
    :sswitch_2
    :try_start_3
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_customTypeFilterText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getActivitySegments()Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tvCustTypeId:Landroid/widget/TextView;

    move-object v6, v0

    move-object v10, p1

    invoke-direct/range {v6 .. v11}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 312
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 313
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 314
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception p1

    .line 316
    invoke-static {v5, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 322
    :sswitch_3
    :try_start_4
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cropFilterText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getCropNames()Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->tvCropId:Landroid/widget/TextView;

    move-object v6, v0

    move-object v10, p1

    invoke-direct/range {v6 .. v11}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 323
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 324
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 325
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 327
    invoke-static {v5, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 445
    :sswitch_4
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->context:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 446
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 448
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x61f

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    const-string v0, "SEGMENTID"

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 450
    const-string v0, "ACTIVITYNAME"

    const-string v1, "Additional Expenses"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    const-string v0, "AssignmentId"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 452
    const-string v0, "ActivityAssignmentId"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 453
    const-string v0, "PackageId"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 454
    const-string v0, "TRANSID"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 455
    const-string v0, "ExpensesSubmited"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 456
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 457
    const-string v1, "MODELCLASS"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 458
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 460
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 461
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->context:Landroid/content/Context;

    const/high16 v2, 0x20000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_8
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09008d -> :sswitch_4
        0x7f090146 -> :sswitch_3
        0x7f090148 -> :sswitch_2
        0x7f0901fa -> :sswitch_1
        0x7f0901fb -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 164
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 165
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->setHasOptionsMenu(Z)V

    .line 166
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->mActivity:Landroid/app/Activity;

    .line 167
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->mParam1:Ljava/lang/String;

    .line 169
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->mParam2:Ljava/lang/String;

    .line 170
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "IsFrom"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->isFrom:Ljava/lang/String;

    .line 174
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    const-string v0, "android.intent.action.ToDoLocationPermissionGranted"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v0, "android.intent.action.ToDoLocationPermissionDenied"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v0, "android.intent.action.ToDoGPSTurnedOnResult"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v0, "android.intent.action.ToDoGPSNotTurnedOnResult"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocalBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocalBroadcastReceiver;-><init>(Lcom/conceptglobal/pmc/fragments/ToDoFragment;Lcom/conceptglobal/pmc/fragments/ToDoFragment$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocalBroadcastReceiver;

    .line 180
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocalBroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    const v0, 0x7f0d0011

    .line 636
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0903c8

    .line 637
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f090432

    .line 638
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    .line 639
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 640
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const v3, 0x7f0901fd

    if-nez v1, :cond_0

    .line 641
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v4, 0x7f080146

    .line 642
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 644
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->isFrom:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v4, "Survey"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 645
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 646
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 648
    :cond_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->isFrom:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v4, "ExpensesToDo"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 649
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 650
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 653
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "search"

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 654
    invoke-static {v0}, Landroidx/core/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/SearchView;

    if-eqz v3, :cond_3

    .line 656
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 657
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 660
    :cond_3
    new-instance v1, Lcom/conceptglobal/pmc/fragments/ToDoFragment$1;

    invoke-direct {v1, p0, v3}, Lcom/conceptglobal/pmc/fragments/ToDoFragment$1;-><init>(Lcom/conceptglobal/pmc/fragments/ToDoFragment;Landroidx/appcompat/widget/SearchView;)V

    invoke-static {v0, v1}, Landroidx/core/view/MenuItemCompat;->setOnActionExpandListener(Landroid/view/MenuItem;Landroidx/core/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 679
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment$2;-><init>(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)V

    .line 694
    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 695
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 187
    iget-object p3, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->rootView:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c00bf

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->rootView:Landroid/view/View;

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->strBuildTranList:Ljava/lang/StringBuilder;

    .line 191
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->intialize()V

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 977
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 978
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocalBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 248
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->mListener:Lcom/conceptglobal/pmc/fragments/ToDoFragment$OnFragmentInteractionListener;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 618
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0901fd

    if-eq v0, v1, :cond_0

    .line 629
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 621
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->filtersLL:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f080146

    .line 622
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 624
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->filtersLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f080145

    .line 625
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 212
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 213
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getDataFromDB()V

    .line 214
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->listFarmerNames:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->setData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 227
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 228
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->intialize()V

    return-void
.end method
