.class public Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FarmerSelectionRecyclerToDoAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;",
        ">;",
        "Landroid/widget/Filterable;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static pos1:I


# instance fields
.field private context:Landroid/content/Context;

.field private customerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation
.end field

.field private isCalendarView:Z

.field private isFrom:Ljava/lang/String;

.field isRaiusCheckRequired:J

.field private lastPosition:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOriginalNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation
.end field

.field private outOfDateMsg:Ljava/lang/String;

.field private outOfRangeMsg:Ljava/lang/String;

.field private packageId:I

.field private searchString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->lastPosition:I

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    const/4 v1, 0x0

    .line 58
    iput v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->packageId:I

    .line 61
    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->outOfRangeMsg:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->outOfDateMsg:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 63
    iput-wide v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->isRaiusCheckRequired:J

    .line 67
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    .line 69
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->mOriginalNames:Ljava/util/List;

    .line 70
    iput-boolean p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->isCalendarView:Z

    .line 71
    iput-object p4, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->isFrom:Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object p3

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_outSideRadiusAlert()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->outOfRangeMsg:Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object p3

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_dateRangeAlert()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->outOfDateMsg:Ljava/lang/String;

    .line 75
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p3

    const-string p4, "TODORadiusCheckRequired"

    invoke-virtual {p3, p4}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->isRaiusCheckRequired:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void

    :catch_0
    move-exception p1

    .line 77
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->mOriginalNames:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    return-object p1
.end method

.method private callSegmentTypeList(II)V
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/16 v3, 0xa

    if-ne p1, v3, :cond_4

    .line 466
    :cond_0
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    const-class v5, Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 467
    const-string v4, "segmentId"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 470
    const-string v4, "FromSelfAssignment"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 471
    const-string v4, "FromTestmonial"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 472
    const-string v4, "FromFeedBack"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 473
    const-string v4, "FromSurvey"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 475
    const-string v4, "isFromOrders"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 476
    const-string v4, "isFromComplaints"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    const-string v4, "farmerType"

    if-ne p1, v2, :cond_1

    .line 478
    const-string p1, "Farmer"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 480
    const-string p1, "Retailer"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    .line 482
    const-string p1, "Distributor"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    :cond_3
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v0

    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 485
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result p1

    const-string v0, "SEGMENTID"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 486
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSurveyActiviyName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ACTIVITYNAME"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result p1

    const-string v0, "AssignmentId"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 488
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityAssignmentId()I

    move-result p1

    const-string v0, "ActivityAssignmentId"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 489
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageId()I

    move-result p1

    const-string v0, "PackageId"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 490
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 491
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    const-string v0, "MODELCLASS"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 492
    invoke-virtual {v3, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 495
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v3, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_4
    return-void
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 3

    .line 555
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 556
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

    new-instance v2, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$3;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$3;-><init>(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 563
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 564
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public callSurvey(Ljava/lang/String;)V
    .locals 3

    .line 504
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 505
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    sget v2, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->pos1:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 507
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    sget v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->pos1:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result p1

    const-string v1, "SEGMENTID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 508
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    sget v2, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->pos1:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSurveyActiviyName(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ACTIVITYNAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    sget v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->pos1:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result p1

    const-string v1, "AssignmentId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 510
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    sget v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->pos1:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityAssignmentId()I

    move-result p1

    const-string v1, "ActivityAssignmentId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 511
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    sget v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->pos1:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageId()I

    move-result p1

    const-string v1, "PackageId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 512
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 513
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    sget v2, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->pos1:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "MODELCLASS"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 514
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    .line 516
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 517
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    const/high16 v2, 0x20000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 277
    new-instance v0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;-><init>(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 50
    check-cast p1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 91
    const-string v3, ""

    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    move/from16 v4, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    .line 92
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/16 v11, 0x8

    .line 94
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v12

    iget-object v13, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityAssignmentId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, "Survey"

    const-string v14, "FeedBack"

    const-string v15, " (P - "

    const-string v10, ")"

    const-string v7, "("

    if-eq v12, v9, :cond_8

    :try_start_1
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v12

    if-eq v12, v8, :cond_8

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v12

    if-eq v12, v6, :cond_8

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v12

    if-eq v12, v11, :cond_8

    .line 96
    iget-object v12, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    if-eqz v12, :cond_11

    if-eqz v5, :cond_11

    .line 97
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson1()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 98
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v12

    iget-object v6, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson1()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 101
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$200(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v9, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$200(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v9, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLocation1()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageId()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 107
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->isFrom:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v12

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v8

    invoke-virtual {v12, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFActiviyName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 109
    :cond_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->isFrom:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v9

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSurveyActiviyName(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 112
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v9

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyName(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v6, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f060005

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 116
    :cond_4
    iget-object v6, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->isFrom:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 117
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v8, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v9

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFActiviyName(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 118
    :cond_5
    iget-object v6, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->isFrom:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 119
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v8, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v9

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSurveyActiviyName(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 121
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v8, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v9

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFActiviyName(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 126
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v6, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLocation2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getStartDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 129
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$500(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v6, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getStartDate()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_7
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getEndDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 132
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$600(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v6, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getEndDate()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 136
    :cond_8
    iget-object v6, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    if-eqz v6, :cond_11

    if-eqz v5, :cond_11

    .line 137
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v12

    invoke-virtual {v8, v9, v12}, Lcom/conceptglobal/pmc/common/Queries;->getCustomerNameBySegmentValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson1()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 140
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v8, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson1()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 143
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    :goto_3
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 147
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$200(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v8, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 149
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$200(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :goto_4
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageId()I

    move-result v6

    if-lez v6, :cond_d

    .line 152
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->isFrom:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 153
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v9

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFActiviyName(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 154
    :cond_b
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->isFrom:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 155
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v9

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSurveyActiviyName(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 157
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v9

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyName(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v6, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f060005

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 161
    :cond_d
    iget-object v6, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->isFrom:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 162
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v8, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v9

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFActiviyName(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 164
    :cond_e
    iget-object v6, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->isFrom:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 165
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v8, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v9

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSurveyActiviyName(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 168
    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v8, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v9

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyName(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_6
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 174
    :goto_7
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v6, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLocation1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLocation2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getStartDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 177
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$500(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v6, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getStartDate()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :cond_10
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getEndDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 180
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$600(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v6, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getEndDate()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_11
    :goto_8
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->isFrom:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 185
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFSegmentName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 189
    :cond_12
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->isFrom:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 190
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 192
    :cond_13
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :goto_9
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLatitude()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLongitude()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 200
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->isFrom:Ljava/lang/String;

    const-string v6, "ToDo"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 201
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$800(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    .line 203
    :cond_14
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$800(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    .line 205
    :cond_15
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$800(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    :goto_a
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getCreatedBy()I

    move-result v6

    if-lez v6, :cond_16

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getCreatedBy()I

    move-result v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v6, v0, :cond_16

    .line 210
    iget-object v0, v2, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->cardview:Landroidx/cardview/widget/CardView;

    iget-object v6, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060138

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    goto :goto_b

    .line 212
    :cond_16
    iget-object v0, v2, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->cardview:Landroidx/cardview/widget/CardView;

    iget-object v6, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06004b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    .line 214
    :goto_b
    iget-wide v6, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->isRaiusCheckRequired:J

    const-wide/16 v8, 0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_17

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getIsInsideRadius()I

    move-result v0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_17

    .line 215
    iget-object v0, v2, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->cardview:Landroidx/cardview/widget/CardView;

    iget-object v6, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060097

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    const-string v6, "FSRecyclerToDoAdapter"

    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    :cond_17
    :goto_c
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$900(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getIsTransactionDone()I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_18

    .line 224
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$900(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d

    .line 226
    :cond_18
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$900(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    :goto_d
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$1000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 230
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$1000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 232
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$1100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 233
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$1100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$1100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_e

    .line 236
    :cond_19
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$1100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    :goto_e
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1a

    .line 240
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f060000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_f

    .line 241
    :cond_1a
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1b

    .line 242
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_f

    .line 243
    :cond_1b
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1c

    .line 244
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_f

    .line 245
    :cond_1c
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1d

    .line 246
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_f

    .line 247
    :cond_1d
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1e

    .line 248
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_f

    .line 249
    :cond_1e
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    if-ne v0, v11, :cond_1f

    .line 250
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_f

    .line 251
    :cond_1f
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    .line 255
    :goto_f
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;->access$800(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v2, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$1;

    invoke-direct {v2, v1, v5}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$1;-><init>(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v1, p0

    .line 337
    const-string v2, "yyyy-MM-dd"

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 338
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v0

    const v4, 0x7f090008

    if-eq v0, v4, :cond_4

    const v2, 0x7f09023c

    if-eq v0, v2, :cond_1

    const v2, 0x7f090282

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 452
    :cond_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLatitude()Ljava/lang/String;

    move-result-object v0

    .line 453
    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLongitude()Ljava/lang/String;

    move-result-object v2

    .line 454
    new-instance v3, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://maps.google.com/maps?daddr="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&saddr=Current%20Location"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v3, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 455
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 439
    :cond_1
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_0

    .line 442
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 443
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "tel:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 445
    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 440
    :cond_3
    :goto_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_mobileNumNAToast()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 359
    :cond_4
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentType(I)I

    move-result v0

    const/4 v4, 0x3

    const/high16 v5, 0x20000

    const-string v6, "MODELCLASS"

    const-string v7, "PackageId"

    const-string v8, "ActivityAssignmentId"

    const-string v9, "AssignmentId"

    const-string v10, "SEGMENTID"

    const-string v11, "ACTIVITYNAME"

    const/high16 v12, 0x4000000

    if-ne v0, v4, :cond_a

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "start getSegmentType "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "timer"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->isFrom:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v4, "Survey"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 363
    sput v3, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->pos1:I

    .line 364
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    invoke-direct {v1, v0, v3}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->callSegmentTypeList(II)V

    goto/16 :goto_2

    .line 367
    :cond_5
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->isFrom:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v4, "FeedBack"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 369
    new-instance v0, Landroid/content/Intent;

    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    const-class v4, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getTransId()J

    move-result-wide v13

    const-string v2, "TRANSID"

    invoke-virtual {v0, v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 371
    const-string v2, "isCompleted"

    const-string v4, "1"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFActiviyName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_6
    const-wide/16 v13, 0x1

    .line 375
    :try_start_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    const/16 v4, 0xa

    if-eq v0, v4, :cond_7

    .line 376
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    const-string v15, "TODORadiusCheckRequired"

    invoke-virtual {v4, v15}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v15

    cmp-long v0, v15, v13

    if-nez v0, :cond_7

    .line 377
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getIsInsideRadius()I

    move-result v0

    const/4 v4, 0x1

    goto :cond_7

    .line 378
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->outOfRangeMsg:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->showAlert(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 383
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 388
    :cond_7
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    const-string v15, "IsTodoDateValidationRequired"

    invoke-virtual {v4, v15}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v15

    .line 389
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getStartDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    cmp-long v0, v15, v13

    if-nez v0, :cond_9

    .line 390
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getStartDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->diffDaysForTodo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getEndDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->diffDaysForTodo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 393
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_9

    .line 394
    :cond_8
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->outOfDateMsg:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->showAlert(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 400
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 402
    :cond_9
    new-instance v0, Landroid/content/Intent;

    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    const-class v4, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    :goto_1
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 408
    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v2

    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result v2

    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityAssignmentId()I

    move-result v2

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 412
    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageId()I

    move-result v2

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 414
    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 415
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 417
    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 418
    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 420
    :cond_a
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentType(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    .line 421
    new-instance v0, Landroid/content/Intent;

    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    const-class v4, Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 422
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 425
    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v2

    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 426
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result v2

    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 428
    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityAssignmentId()I

    move-result v2

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 429
    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageId()I

    move-result v2

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 430
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 431
    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 432
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 433
    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 434
    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_b
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;
    .locals 3

    .line 84
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0162

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 85
    iput p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->lastPosition:I

    .line 86
    new-instance p2, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setIsCalenderView(ZLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;)V"
        }
    .end annotation

    .line 549
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->isCalendarView:Z

    .line 550
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->customerList:Ljava/util/List;

    .line 551
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->notifyDataSetChanged()V

    return-void
.end method
