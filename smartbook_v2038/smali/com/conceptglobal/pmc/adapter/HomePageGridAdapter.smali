.class public Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HomePageGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;,
        Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$SVDataRefreshTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static twoDForm:Ljava/text/DecimalFormat;


# instance fields
.field data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/StaggeredItemsModel;",
            ">;"
        }
    .end annotation
.end field

.field private dbllatitude:Ljava/lang/Double;

.field private dbllongitude:Ljava/lang/Double;

.field private deviceHeight:I

.field mContext:Landroid/content/Context;

.field private final mGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

.field progressBar:Landroid/widget/ProgressBar;

.field refreshView:Landroid/widget/ImageView;

.field selectedposition:I

.field svActityCount:I

.field tvCount:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 97
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->twoDForm:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/StaggeredItemsModel;",
            ">;)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 96
    new-instance v0, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->svActityCount:I

    .line 102
    iput v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->selectedposition:I

    .line 105
    sget-object v0, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->TRANSPARENT:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    .line 106
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    .line 108
    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 109
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 110
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 111
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 112
    invoke-virtual {p1, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 113
    iget p1, p2, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->deviceHeight:I

    return-void
.end method

.method private LaunchCapaignPage()V
    .locals 3

    .line 934
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 936
    const-string v1, "IsAppover"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 937
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 939
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pleaseCheckDataError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->showAlertDialog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->showAlertDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->loadChannelOrder()V

    return-void
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->LaunchCapaignPage()V

    return-void
.end method

.method static synthetic access$302(Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->dbllatitude:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$402(Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->dbllongitude:Ljava/lang/Double;

    return-object p1
.end method

.method private deg2rad(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p1, p1, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private loadChannelOrder()V
    .locals 8

    .line 699
    const-string v0, "test"

    .line 0
    const-string v1, "channelOrderPlayStoreUrl ::::::::::"

    .line 699
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 700
    const-string v3, ""

    .line 704
    :try_start_0
    const-string v4, "com.conceptglobal.channel_orders.OrdersHomePage"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 705
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    const-string v7, "channelordersurl"

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getItemValueFromConfigurableLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 706
    const-string v5, "channelOrderPackageName ::::::::::com.conceptglobal.channel_orders.OrdersHomePage"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v3

    .line 709
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v3

    move-object v3, v1

    .line 712
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    :cond_0
    :try_start_2
    const-string v0, "102650"

    .line 720
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->getPasswordQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    .line 722
    const-string v1, "Pass@12345"

    .line 723
    const-string v4, "username"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    const-string v0, "password"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 740
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 738
    :catch_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-string v1, "This App requires permission."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 728
    :catch_4
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 729
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 730
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 731
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 733
    :cond_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_2

    :catch_5
    move-exception v0

    .line 735
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
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

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 921
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 922
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$4;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$4;-><init>(Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 928
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 929
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public disPlaySVRadiusData()I
    .locals 13

    .line 819
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->dbllatitude:Ljava/lang/Double;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->dbllongitude:Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 820
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getSVToDoAssignmentIDs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSVActivityAssignmentIDs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 821
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 823
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getSVRadiusDataQry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSVRadiusData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 825
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    const/4 v3, 0x0

    .line 826
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 827
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivityassignmentid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/SVRadiusDataModel;

    if-eqz v4, :cond_0

    .line 829
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getRadius()Ljava/lang/Double;

    move-result-object v5

    .line 830
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/SVRadiusDataModel;->getLatitude()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/SVRadiusDataModel;->getLongitude()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NULL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/SVRadiusDataModel;->getLatitude()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 831
    iget-object v8, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->dbllatitude:Ljava/lang/Double;

    iget-object v9, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->dbllongitude:Ljava/lang/Double;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/SVRadiusDataModel;->getLatitude()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/SVRadiusDataModel;->getLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    const/16 v12, 0x4b

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->distance(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;C)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 832
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v8, v6, v4

    if-gtz v8, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    return v1
.end method

.method public disPlayToDoRadiusData()I
    .locals 13

    .line 847
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->dbllatitude:Ljava/lang/Double;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->dbllongitude:Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 848
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getToDoAssignmentIDs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSVActivityAssignmentIDs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 849
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 851
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getSVRadiusDataQry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSVRadiusData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 853
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    .line 854
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 855
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivityassignmentid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/SVRadiusDataModel;

    .line 867
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;

    .line 868
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentId()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 869
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentId()I

    move-result v5

    invoke-virtual {v7, v8, v5}, Lcom/conceptglobal/pmc/common/Queries;->getLotLongDetailsQry(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLongInfo(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/LatLongDetails;

    move-result-object v5

    goto/16 :goto_1

    .line 870
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentId()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 871
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentId()I

    move-result v5

    invoke-virtual {v7, v8, v5}, Lcom/conceptglobal/pmc/common/Queries;->getLotLongDetailsDealerQry(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLongInfo(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/LatLongDetails;

    move-result-object v5

    goto/16 :goto_1

    .line 872
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentId()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 873
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentId()I

    move-result v5

    invoke-virtual {v7, v8, v5}, Lcom/conceptglobal/pmc/common/Queries;->getLotLongDetailsDealerQry(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLongInfo(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/LatLongDetails;

    move-result-object v5

    goto :goto_1

    .line 874
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentId()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    .line 875
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentId()I

    move-result v5

    invoke-virtual {v7, v8, v5}, Lcom/conceptglobal/pmc/common/Queries;->getLotLongDetailsQry(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLongInfo(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/LatLongDetails;

    move-result-object v5

    goto :goto_1

    .line 876
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentId()I

    move-result v6

    const/16 v7, 0x12

    if-ne v6, v7, :cond_4

    .line 877
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->getActivitySegmentId()I

    move-result v5

    invoke-virtual {v7, v8, v5}, Lcom/conceptglobal/pmc/common/Queries;->getLotLongDetailsDealerQry(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLongInfo(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/LatLongDetails;

    move-result-object v5

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_5

    .line 879
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/LatLongDetails;->getLatitude()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/LatLongDetails;->getLongitude()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NULL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/LatLongDetails;->getLatitude()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 880
    iget-object v8, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->dbllatitude:Ljava/lang/Double;

    iget-object v9, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->dbllongitude:Ljava/lang/Double;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/LatLongDetails;->getLatitude()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/LatLongDetails;->getLongitude()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    const/16 v12, 0x4b

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->distance(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;C)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 881
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpg-double v9, v5, v7

    if-gtz v9, :cond_5

    add-int/lit8 v4, v4, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    move v1, v4

    :cond_7
    return v1
.end method

.method public distance(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;C)D
    .locals 6

    .line 895
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 896
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->deg2rad(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->deg2rad(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->deg2rad(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    invoke-direct {p0, p3, p4}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->deg2rad(D)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->deg2rad(D)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    add-double/2addr v2, p1

    .line 897
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    .line 898
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->rad2deg(D)D

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

    .line 907
    :cond_5
    sget-object p3, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->twoDForm:Ljava/text/DecimalFormat;

    invoke-virtual {p3, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    return-wide p1
.end method

.method public fetchLocation()V
    .locals 5

    .line 778
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->refreshView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 779
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 782
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 786
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$3;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$3;-><init>(Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;)V

    const-string v3, ""

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 812
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 85
    check-cast p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;I)V
    .locals 5

    .line 151
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getModuleid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setTag(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getModuleid()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 168
    const-string v3, "25"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "26"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "16"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "20"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "29"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "31"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "194"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const-string v3, "195"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "193"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "33"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "34"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->tvAlert:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 171
    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->tvAlert:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    :goto_1
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getDescription()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getDescription()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->description1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getDescription1()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getDescription1()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->description2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getDescription2()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getDescription2()Ljava/lang/String;

    move-result-object v4

    :cond_5
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->count:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->count1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getCount1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->count2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getCount2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getModuleid()Ljava/lang/String;

    move-result-object v0

    const-string v3, "27"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getModuleid()Ljava/lang/String;

    move-result-object v0

    const-string v3, "12"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    .line 185
    :cond_6
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->ivSVDataRefresh:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 183
    :cond_7
    :goto_4
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->ivSVDataRefresh:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    :goto_5
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 187
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->firstDiscription:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_6

    .line 189
    :cond_8
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->firstDiscription:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 191
    :goto_6
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->description1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 192
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->secondDiscription:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_7

    .line 194
    :cond_9
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->secondDiscription:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 196
    :goto_7
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->description2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 197
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->thirdDiscription:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_8

    .line 199
    :cond_a
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->thirdDiscription:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 201
    :goto_8
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->description1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->description2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 202
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->border:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 204
    :cond_b
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->border:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 206
    :goto_9
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getModuleid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "11"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 207
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, -0xa

    .line 208
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 209
    iget-object v1, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v1, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->description1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    :cond_c
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->imgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getDrawable()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    new-instance v1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;-><init>(Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;I)V

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->ivSVDataRefresh:Landroid/widget/ImageView;

    new-instance v1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$2;-><init>(Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;
    .locals 1

    .line 119
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0c0154

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 120
    new-instance p2, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
