.class public Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FarmerSelectionRecyclerToDoAdapter_Expenses.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;,
        Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$GetPDFUrlTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;",
        ">;",
        "Landroid/widget/Filterable;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final DOWNLOAD_THREAD_POOL_SIZE:I = 0x4

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

.field private downloadManager:Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

.field private isCalendarView:Z

.field private isFrom:Ljava/lang/String;

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

.field private packageId:I

.field private searchString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 1
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

    .line 77
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->lastPosition:I

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->packageId:I

    .line 78
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    .line 80
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->mOriginalNames:Ljava/util/List;

    .line 81
    iput-boolean p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->isCalendarView:Z

    .line 82
    iput-object p4, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->isFrom:Ljava/lang/String;

    .line 83
    new-instance p2, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;-><init>(I)V

    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->downloadManager:Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;)Landroid/content/Context;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;)Ljava/util/List;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;)Ljava/util/List;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->mOriginalNames:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;Landroid/net/Uri;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->viewpdf(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;Ljava/lang/String;J)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->downloadContent(Ljava/lang/String;J)V

    return-void
.end method

.method private callSegmentTypeList(II)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/16 v2, 0xa

    if-ne p1, v2, :cond_3

    .line 624
    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    const-class v4, Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 625
    const-string v3, "segmentId"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 628
    const-string v3, "FromSelfAssignment"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 629
    const-string v3, "FromTestmonial"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 630
    const-string v3, "FromFeedBack"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 631
    const-string v3, "FromSurvey"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 633
    const-string v3, "isFromOrders"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 634
    const-string v3, "isFromComplaints"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 635
    const-string v3, "farmerType"

    if-ne p1, v1, :cond_1

    .line 636
    const-string p1, "Farmer"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 638
    const-string p1, "Retailer"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    :cond_2
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v1

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 641
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result p1

    const-string v1, "SEGMENTID"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 642
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSurveyActiviyName(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ACTIVITYNAME"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result p1

    const-string v1, "AssignmentId"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 644
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityAssignmentId()I

    move-result p1

    const-string v1, "ActivityAssignmentId"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 645
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageId()I

    move-result p1

    const-string v1, "PackageId"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 647
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    const-string v1, "MODELCLASS"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 648
    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 651
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    return-void
.end method

.method private downloadContent(Ljava/lang/String;J)V
    .locals 3

    .line 716
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getPdfStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 721
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 722
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 723
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ".pdf"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 724
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_2

    .line 725
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 730
    new-instance p2, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;-><init>(Landroid/net/Uri;)V

    new-instance p1, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;-><init>()V

    .line 732
    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setRetryPolicy(Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryPolicy;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object p1

    .line 733
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setDestinationURI(Landroid/net/Uri;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object p1

    sget-object p2, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;->HIGH:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setPriority(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object p1

    new-instance p2, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$3;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$3;-><init>(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;)V

    .line 735
    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setStatusListener(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListenerV1;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object p1

    .line 756
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->downloadManager:Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->add(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)I

    goto :goto_0

    .line 762
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    const-string p2, "Please enable data connection"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method private viewpdf(Landroid/net/Uri;)V
    .locals 2

    .line 768
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 769
    const-string v1, "application/pdf"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 772
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public callSurvey(Ljava/lang/String;)V
    .locals 3

    .line 660
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 661
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    sget v2, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->pos1:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 663
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    sget v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->pos1:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result p1

    const-string v1, "SEGMENTID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 664
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    sget v2, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->pos1:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSurveyActiviyName(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ACTIVITYNAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    sget v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->pos1:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result p1

    const-string v1, "AssignmentId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 666
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    sget v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->pos1:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityAssignmentId()I

    move-result p1

    const-string v1, "ActivityAssignmentId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 667
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    sget v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->pos1:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageId()I

    move-result p1

    const-string v1, "PackageId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 668
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 669
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    sget v2, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->pos1:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "MODELCLASS"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 670
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    .line 672
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 673
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

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

    .line 371
    new-instance v0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$2;-><init>(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 62
    check-cast p1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->onBindViewHolder(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;I)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 96
    const-string v3, ""

    .line 0
    const-string v4, "Activity Assignment ID :"

    const-string v5, "Expenses Assignment ID : "

    .line 96
    iget-object v6, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    move/from16 v7, p2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    .line 97
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v8

    const/4 v13, 0x1

    .line 99
    :try_start_0
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getStartDate()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getNoOfDaysDiff(Ljava/lang/String;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 100
    invoke-virtual {v15}, Ljava/lang/Long;->intValue()I

    .line 102
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getIsExpensesSubmited()I

    move-result v15

    if-ne v15, v13, :cond_9

    .line 105
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getExpType()Ljava/lang/String;

    move-result-object v15

    const-string v10, "TODO"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v15, "Rejected"

    const-string v14, "Approval Pending"

    const-string v9, "Approved"

    if-eqz v10, :cond_2

    .line 106
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v10

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v11

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityAssignmentId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/common/Queries;->getExpApprovalToDO(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v13, :cond_0

    .line 108
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06004a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_0
    if-nez v10, :cond_1

    .line 111
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06010c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_1
    const/4 v9, 0x2

    if-ne v10, v9, :cond_8

    .line 114
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06010c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 117
    :cond_2
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getExpType()Ljava/lang/String;

    move-result-object v10

    const-string v11, "SELF"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 118
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v10

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v11

    move-object/from16 v17, v14

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getTransId()J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Lcom/conceptglobal/pmc/common/Queries;->getExpApprovalSelf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 120
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06004a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_3
    if-nez v10, :cond_4

    .line 123
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v9

    move-object/from16 v10, v17

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06010c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_4
    const/4 v9, 0x2

    if-ne v10, v9, :cond_8

    .line 126
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06010c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_5
    move-object v10, v14

    .line 129
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getExpType()Ljava/lang/String;

    move-result-object v11

    const-string v13, "EXP"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 130
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v11

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v13

    move-object v14, v8

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getTransId()J

    move-result-wide v7

    invoke-virtual {v13, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getExpApproval(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 132
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06004a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_6
    if-nez v7, :cond_7

    .line 135
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06010c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_7
    const/4 v8, 0x2

    if-ne v7, v8, :cond_a

    .line 138
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06010c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_8
    :goto_0
    move-object v14, v8

    goto :goto_1

    :cond_9
    move-object v14, v8

    .line 143
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, "Not Submitted"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060032

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    :cond_a
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$200(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityAssignmentId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "Survey"

    const-string v9, "FeedBack"

    const-string v10, " (P - "

    const-string v11, ")"

    const-string v13, "("

    const/4 v15, 0x2

    if-eq v7, v15, :cond_15

    :try_start_2
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v7

    const/4 v12, 0x1

    if-eq v7, v12, :cond_15

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v7

    const/4 v15, 0x3

    if-eq v7, v15, :cond_15

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v7

    const/16 v15, 0x8

    if-eq v7, v15, :cond_15

    .line 160
    iget-object v7, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    if-eqz v7, :cond_14

    if-eqz v6, :cond_14

    .line 161
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson1()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 162
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v15, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson1()Ljava/lang/String;

    move-result-object v12

    invoke-static {v15, v12}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :cond_b
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 165
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v12, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v15}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v7

    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLocation1()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLocation1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_d

    .line 169
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v12, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLocation1()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v15}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :cond_d
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageId()I

    move-result v7

    if-lez v7, :cond_10

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 173
    iget-object v7, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->isFrom:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 174
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v15

    move-object/from16 v17, v4

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v4

    invoke-virtual {v15, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFActiviyName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_e
    move-object/from16 v17, v4

    .line 175
    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->isFrom:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 176
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v14

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSurveyActiviyName(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 178
    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v14

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyName(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v7, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f060005

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_10
    move-object/from16 v17, v4

    .line 182
    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->isFrom:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 183
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v7, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v10

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFActiviyName(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 184
    :cond_11
    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->isFrom:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 185
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v7, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v10

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSurveyActiviyName(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 187
    :cond_12
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v7, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v10

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyName(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    move-object v7, v14

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 191
    :goto_4
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLocation2()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLocation2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_13

    .line 192
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$500(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v7, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLocation2()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_13
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getStartDate()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 195
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$600(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v7, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getStartDate()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_14
    move-object/from16 v17, v4

    goto/16 :goto_a

    :cond_15
    move-object/from16 v17, v4

    move-object v7, v14

    .line 202
    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    if-eqz v4, :cond_1e

    if-eqz v6, :cond_1e

    .line 203
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v12

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v15

    invoke-virtual {v12, v14, v15}, Lcom/conceptglobal/pmc/common/Queries;->getCustomerNameBySegmentValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson1()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 206
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v12, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson1()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 209
    :cond_16
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    :goto_5
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 213
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v12, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 215
    :cond_17
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    :goto_6
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageId()I

    move-result v4

    if-lez v4, :cond_1a

    .line 218
    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->isFrom:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 219
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v14

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFActiviyName(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 220
    :cond_18
    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->isFrom:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 221
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v14

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSurveyActiviyName(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 223
    :cond_19
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v14

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyName(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :goto_7
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v7, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f060005

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    .line 227
    :cond_1a
    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->isFrom:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 228
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v10, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v12

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v14

    invoke-virtual {v12, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFActiviyName(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 230
    :cond_1b
    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->isFrom:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 231
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v10, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v12

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v14

    invoke-virtual {v12, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSurveyActiviyName(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 234
    :cond_1c
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v10, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v12

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v14

    invoke-virtual {v12, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyName(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :goto_8
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 240
    :goto_9
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$500(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v7, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLocation1()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLocation2()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getStartDate()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1d

    .line 243
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$600(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v7, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getStartDate()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :cond_1d
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getEndDate()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 246
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v7, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getEndDate()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :cond_1e
    :goto_a
    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->isFrom:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 251
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$800(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$800(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFSegmentName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 255
    :cond_1f
    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->isFrom:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->isFrom:Ljava/lang/String;

    const-string v7, "ExpensesToDo"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    goto :goto_b

    .line 276
    :cond_20
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$800(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$800(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 256
    :cond_21
    :goto_b
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$800(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getCreateddate()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 258
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$600(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getCreateddate()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->convertDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :cond_22
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result v4

    if-lez v4, :cond_23

    .line 261
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$200(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityAssignmentId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :cond_23
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getTransId()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-lez v4, :cond_24

    .line 264
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$200(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getTransId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :cond_24
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getTransId()J

    move-result-wide v4

    cmp-long v7, v4, v9

    if-lez v7, :cond_25

    .line 267
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getCustomerNameBySegmentValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 269
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v7, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->searchString:Ljava/lang/String;

    invoke-static {v7, v4}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    const-string v5, "n/a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 271
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    :cond_25
    :goto_c
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLatitude()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_26

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLongitude()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_26

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 283
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$900(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d

    .line 285
    :cond_26
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$900(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    :goto_d
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    .line 289
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getIsExpensesSubmited()I

    move-result v4

    if-lez v4, :cond_27

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getIsExpensesSubmited()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_27

    .line 290
    iget-object v4, v2, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->cardview:Landroidx/cardview/widget/CardView;

    iget-object v5, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f06004a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    .line 291
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$1000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/RelativeLayout;

    move-result-object v4

    iget-object v5, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f060096

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 292
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$1100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e

    .line 296
    :cond_27
    iget-object v4, v2, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->cardview:Landroidx/cardview/widget/CardView;

    iget-object v5, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f060138

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    .line 297
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$1000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/RelativeLayout;

    move-result-object v4

    iget-object v5, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 298
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$1100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    :goto_e
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$1200(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v7, v17

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_f

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 307
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 308
    const-string v5, "FSRecyclerToDoAdapter"

    invoke-static {v5, v4}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    :goto_f
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$1000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 318
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$1000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$1100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$1100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 321
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    if-eqz v4, :cond_28

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    .line 325
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 326
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$1300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 327
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$1300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 328
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$1300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_10

    .line 330
    :cond_28
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$1300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 333
    :goto_10
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_29

    .line 334
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$800(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f060000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_11

    .line 335
    :cond_29
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 336
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$800(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_11

    .line 337
    :cond_2a
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2b

    .line 338
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$800(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_11

    .line 339
    :cond_2b
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v3

    if-ne v3, v5, :cond_2c

    .line 340
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$800(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_11

    .line 341
    :cond_2c
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2d

    .line 342
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$800(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_11

    .line 343
    :cond_2d
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2e

    .line 344
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$800(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_11

    .line 345
    :cond_2e
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    .line 349
    :goto_11
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->access$900(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$1;

    invoke-direct {v3, v1, v6}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$1;-><init>(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 431
    const-string v0, "Expenses"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 432
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_3

    .line 535
    :sswitch_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLatitude()Ljava/lang/String;

    move-result-object p1

    .line 536
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLongitude()Ljava/lang/String;

    move-result-object v0

    .line 537
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://maps.google.com/maps?daddr="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&saddr=Current%20Location"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 538
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 546
    :sswitch_1
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    .line 548
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getExpType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TODO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityAssignmentId()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/conceptglobal/pmc/common/Queries;->getExpanceAssignList(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 550
    :cond_0
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getExpType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SELF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getTransId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getExpanceTranList(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 552
    :cond_1
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getExpType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v2, ""

    if-eqz v1, :cond_2

    .line 553
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getTransId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v2

    .line 555
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCServicePdf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 557
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/ReportViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 558
    const-string v2, "from"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const-string v2, "activityID"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 560
    const-string v2, "activityName"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    const-string v0, "ExpensesUrl"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_3

    .line 522
    :sswitch_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_3

    goto :goto_1

    .line 525
    :cond_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 526
    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 528
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 523
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_mobileNumNAToast()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 454
    :sswitch_3
    :try_start_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v0, 0x61f

    if-ne p1, v0, :cond_5

    return-void

    :catch_0
    move-exception p1

    .line 458
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 460
    :cond_5
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentType(I)I

    move-result p1

    const/4 v0, 0x3

    const/high16 v2, 0x20000

    const-string v3, "MODELCLASS"

    const-string v4, "PackageId"

    const-string v5, "ActivityAssignmentId"

    const-string v6, "AssignmentId"

    const-string v7, "ACTIVITYNAME"

    const-string v8, "SEGMENTID"

    const/high16 v9, 0x4000000

    if-ne p1, v0, :cond_a

    .line 464
    :try_start_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->isFrom:Ljava/lang/String;

    if-eqz p1, :cond_6

    const-string v0, "Survey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 465
    sput v1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->pos1:I

    .line 466
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->callSegmentTypeList(II)V

    goto/16 :goto_3

    .line 469
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->isFrom:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v0, "TRANSID"

    if-eqz p1, :cond_7

    :try_start_4
    const-string v10, "FeedBack"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 471
    new-instance p1, Landroid/content/Intent;

    iget-object v10, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    const-class v11, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-direct {p1, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 472
    iget-object v10, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getTransId()J

    move-result-wide v10

    invoke-virtual {p1, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 473
    const-string v10, "isCompleted"

    const-string v11, "1"

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 474
    :cond_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->isFrom:Ljava/lang/String;

    if-eqz p1, :cond_8

    const-string v10, "ExpensesToDo"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 475
    new-instance p1, Landroid/content/Intent;

    iget-object v10, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    const-class v11, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-direct {p1, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    iget-object v10, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getIsExpensesSubmited()I

    move-result v10

    if-lez v10, :cond_9

    iget-object v10, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getIsExpensesSubmited()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    return-void

    .line 480
    :cond_8
    new-instance p1, Landroid/content/Intent;

    iget-object v10, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    const-class v11, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-direct {p1, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 482
    :cond_9
    :goto_2
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v11

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 485
    iget-object v10, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v10

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 486
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    iget-object v10, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFActiviyName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    iget-object v7, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 488
    iget-object v6, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityAssignmentId()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 489
    iget-object v5, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageId()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 490
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getTransId()J

    move-result-wide v4

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 491
    const-string v0, "ExpensesSubmited"

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getIsExpensesSubmited()I

    move-result v4

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 492
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 493
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 494
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 496
    invoke-virtual {p1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 497
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    .line 501
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 503
    :cond_a
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentType(I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 504
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    const-class v10, Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-direct {p1, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 505
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v0

    iget-object v10, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v0

    iget-object v10, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v0

    iget-object v10, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v10

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 508
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    invoke-virtual {p1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 509
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iget-object v8, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result v0

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 511
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityAssignmentId()I

    move-result v0

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 512
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageId()I

    move-result v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 513
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 514
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 515
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 516
    invoke-virtual {p1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 517
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->context:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :catch_2
    :cond_b
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090008 -> :sswitch_3
        0x7f09023c -> :sswitch_2
        0x7f09027a -> :sswitch_1
        0x7f090282 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;
    .locals 3

    .line 89
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0163

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 90
    iput p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->lastPosition:I

    .line 91
    new-instance p2, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;-><init>(Landroid/view/View;)V

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

    .line 710
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->isCalendarView:Z

    .line 711
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->customerList:Ljava/util/List;

    .line 712
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->notifyDataSetChanged()V

    return-void
.end method
