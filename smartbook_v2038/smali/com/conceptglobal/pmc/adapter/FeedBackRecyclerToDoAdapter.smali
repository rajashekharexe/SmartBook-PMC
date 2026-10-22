.class public Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FeedBackRecyclerToDoAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;",
        ">;",
        "Landroid/widget/Filterable;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


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

.field itemView:Landroid/view/View;

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

.field mobile:Ljava/lang/String;

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

    .line 73
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->lastPosition:I

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->packageId:I

    .line 74
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->context:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    .line 76
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->mOriginalNames:Ljava/util/List;

    .line 77
    iput-boolean p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->isCalendarView:Z

    .line 78
    iput-object p4, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->isFrom:Ljava/lang/String;

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;Landroid/content/Context;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->showResolutionDailog(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;Landroid/content/Context;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->sendComplaint(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;)Ljava/util/List;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;)Ljava/util/List;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->mOriginalNames:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    return-object p1
.end method

.method private sendComplaint(Landroid/content/Context;I)V
    .locals 4

    .line 339
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 340
    const-string v1, "Are you sure,Do you want to Forward this Complaint ?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$4;

    invoke-direct {v3, p0, p2, p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$4;-><init>(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;ILandroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 370
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$5;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$5;-><init>(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;)V

    invoke-virtual {v0, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 377
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p2

    .line 378
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 379
    invoke-static {p2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showResolutionDailog(Landroid/content/Context;I)V
    .locals 9

    .line 597
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->itemView:Landroid/view/View;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 599
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 600
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v2, 0x7f0c009a

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 604
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 607
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 608
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 609
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    .line 610
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 611
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    .line 612
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getTransId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/conceptglobal/pmc/common/Queries;->getResolvedNameAndDetails(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 611
    invoke-virtual {v0, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getResolvedNameAndData(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;

    move-result-object p2

    const v0, 0x7f0905d3

    .line 613
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0905d4

    .line 614
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0905d2

    .line 615
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 616
    const-string v3, ""

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->getResolveName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->getResolveName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 617
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->getResolveName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz p2, :cond_1

    .line 621
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->getResolveRemarks()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->getResolveRemarks()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 622
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->getResolveRemarks()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v3

    :goto_1
    if-eqz p2, :cond_2

    .line 626
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->getCreatedDate()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 627
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->getCreatedDate()Ljava/lang/String;

    move-result-object p2

    .line 628
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm:ss.sss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 631
    :try_start_0
    invoke-virtual {v6, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 633
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x0

    .line 635
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Resolved Date :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "dd MMM yyyy"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    :cond_2
    new-instance p2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {p2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 641
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0900c7

    .line 650
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 651
    new-instance v0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$7;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$7;-><init>(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;Landroid/app/AlertDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 443
    new-instance v0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$6;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$6;-><init>(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 60
    check-cast p1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 91
    const-string v0, "3"

    const-string v4, ""

    iget-object v5, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    .line 92
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    const/4 v10, 0x1

    .line 94
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v11, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityAssignmentId()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v7, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->searchString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v8, "FeedBack"

    const-string v9, ")"

    const-string v11, "("

    if-eqz v7, :cond_10

    if-eqz v5, :cond_10

    .line 134
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v14

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v12

    invoke-virtual {v14, v15, v12}, Lcom/conceptglobal/pmc/common/Queries;->getCustomerNameBySegmentValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 135
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v12

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v14

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v13

    invoke-virtual {v14, v15, v13}, Lcom/conceptglobal/pmc/common/Queries;->getCustomerPhoneNUmber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->mobile:Ljava/lang/String;

    .line 137
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v12

    if-eq v12, v10, :cond_1

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_1

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_1

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v12

    iget-object v13, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-static {v13, v7}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 138
    :cond_1
    :goto_0
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    .line 139
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson1()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 140
    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->setPerson1(Ljava/lang/String;)V

    .line 142
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v12

    iget-object v13, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-static {v13, v7}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 143
    :cond_3
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_5

    .line 144
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v12

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/conceptglobal/pmc/common/Queries;->getNameDistributir(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 145
    invoke-static {v7}, Lcom/conceptglobal/pmc/utils/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 146
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson1()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_4

    .line 147
    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->setPerson1(Ljava/lang/String;)V

    .line 149
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v12

    iget-object v13, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-static {v13, v7}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 153
    :cond_5
    invoke-static {v7}, Lcom/conceptglobal/pmc/utils/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 154
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson1()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_6

    .line 155
    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->setPerson1(Ljava/lang/String;)V

    .line 157
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v12

    iget-object v13, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-static {v13, v7}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :goto_1
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getIsDone()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 166
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$200(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    const-string v7, "Status :Completed"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, v2, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->btnResloutionView:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    iget-object v0, v2, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->btn_forward:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 169
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$200(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v7, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v12, 0x7f060000

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 172
    :cond_7
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    iget-object v12, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getTransId()J

    move-result-wide v12

    iget-object v14, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getCreatedBy()I

    move-result v14

    invoke-virtual {v7, v12, v13, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFActivityResolveStatus(JI)Ljava/lang/String;

    move-result-object v7

    const-string v12, "0"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 173
    iget-object v7, v2, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->btn_forward:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 175
    :cond_8
    iget-object v7, v2, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->btn_forward:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    :goto_2
    iget-object v7, v2, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->btnResloutionView:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 181
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    iget-object v12, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getTransId()J

    move-result-wide v12

    iget-object v14, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getCreatedBy()I

    move-result v14

    invoke-virtual {v7, v12, v13, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFActivityResolveStatus(JI)Ljava/lang/String;

    move-result-object v7

    const-string v12, "2"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 182
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$200(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    const-string v7, "Status :Forward"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$200(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v7, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x7f060002

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 184
    :cond_9
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    iget-object v12, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getTransId()J

    move-result-wide v12

    iget-object v14, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getCreatedBy()I

    move-result v14

    invoke-virtual {v7, v12, v13, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFActivityResolveStatus(JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 185
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$200(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    const-string v7, "Status :Expired"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$200(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v7, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x7f060005

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 188
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$200(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    const-string v7, "Status :In Progress"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$200(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v7, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x7f060001

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    :goto_3
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 200
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v7, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 202
    :cond_b
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->mobile:Ljava/lang/String;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {v5, v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->setContactNumber(Ljava/lang/String;)V

    .line 204
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v12, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-static {v12, v0}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :goto_4
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageId()I

    move-result v0

    if-lez v0, :cond_d

    .line 207
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->isFrom:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v6, " (P - "

    if-eqz v0, :cond_c

    .line 208
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v13

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFActiviyName(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 210
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v13

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyName(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v6, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 214
    :cond_d
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->isFrom:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 215
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v7, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v12

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFActiviyName(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 218
    :cond_e
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v7, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v12

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyName(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :goto_6
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 224
    :goto_7
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$500(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v6, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLocation1()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLocation2()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getEndDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 231
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$600(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$600(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v6, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->searchString:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getEndDate()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :cond_f
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getIsDone()Ljava/lang/String;

    move-result-object v0

    const-string v6, "1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v0, :cond_10

    .line 236
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$600(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss.sss"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getCreateddate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 239
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$600(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v13, "dd MMM yyyy"

    invoke-direct {v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 241
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    :cond_10
    :goto_8
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->isFrom:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 251
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFSegmentName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 254
    :cond_11
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :goto_9
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLatitude()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLongitude()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 258
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$800(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    .line 260
    :cond_12
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$800(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    :goto_a
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getCreatedBy()I

    move-result v6

    if-lez v6, :cond_13

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getCreatedBy()I

    move-result v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v6, v0, :cond_13

    .line 265
    iget-object v0, v2, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->cardview:Landroidx/cardview/widget/CardView;

    iget-object v6, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060138

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    goto :goto_b

    .line 267
    :cond_13
    iget-object v0, v2, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->cardview:Landroidx/cardview/widget/CardView;

    iget-object v6, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06004b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    .line 271
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 272
    const-string v6, "FSRecyclerToDoAdapter"

    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    :goto_b
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$900(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getIsTransactionDone()I

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_14

    .line 276
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$900(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c

    .line 278
    :cond_14
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$900(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    :goto_c
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$1000(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 282
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$1000(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->mobile:Ljava/lang/String;

    if-eqz v0, :cond_15

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 284
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$1100(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 285
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$1100(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$1100(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_d

    :cond_15
    const/16 v4, 0x8

    .line 288
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$1100(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 291
    :goto_d
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    if-ne v0, v10, :cond_16

    .line 292
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v6, 0x7f060000

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_e

    .line 293
    :cond_16
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_17

    .line 294
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060001

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_e

    .line 295
    :cond_17
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_18

    .line 296
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060002

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_e

    .line 297
    :cond_18
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_19

    .line 298
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060003

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_e

    .line 299
    :cond_19
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_1a

    .line 300
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060004

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_e

    .line 301
    :cond_1a
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_1b

    .line 302
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060005

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_e

    .line 303
    :cond_1b
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    .line 307
    :goto_e
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->access$800(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v4, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$1;

    invoke-direct {v4, v1, v5}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$1;-><init>(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, v2, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->btnResloutionView:Landroid/widget/Button;

    new-instance v4, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$2;

    invoke-direct {v4, v1, v3}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$2;-><init>(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;I)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v0, v2, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->btn_forward:Landroid/widget/Button;

    new-instance v2, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$3;

    invoke-direct {v2, v1, v3}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$3;-><init>(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 503
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 504
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f090008

    if-eq p1, v1, :cond_4

    const v1, 0x7f09023c

    if-eq p1, v1, :cond_1

    const v1, 0x7f090282

    if-eq p1, v1, :cond_0

    goto/16 :goto_2

    .line 582
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLatitude()Ljava/lang/String;

    move-result-object p1

    .line 583
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLongitude()Ljava/lang/String;

    move-result-object v0

    .line 584
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

    .line 585
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 569
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->mobile:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 572
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 573
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 575
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 570
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->context:Landroid/content/Context;

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

    goto/16 :goto_2

    .line 525
    :cond_4
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentType(I)I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_6

    .line 526
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "start getSegmentType "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "timer"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->isFrom:Ljava/lang/String;

    if-eqz p1, :cond_5

    const-string v1, "FeedBack"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 529
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 530
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getTransId()J

    move-result-wide v1

    const-string v3, "TRANSID"

    invoke-virtual {p1, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 531
    const-string v1, "isCompleted"

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 533
    :goto_1
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 536
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v1

    const-string v2, "ACTIVITYID"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 537
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v1

    const-string v2, "SEGMENTID"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 538
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFActiviyName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTIVITYNAME"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result v1

    const-string v2, "AssignmentId"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 540
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityAssignmentId()I

    move-result v1

    const-string v2, "ActivityAssignmentId"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 541
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageId()I

    move-result v1

    const-string v2, "PackageId"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 542
    const-string v1, "isFromResolution"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 543
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 544
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    const-string v2, "MODELCLASS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 545
    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 547
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 548
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->context:Landroid/content/Context;

    const/high16 v2, 0x20000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;
    .locals 3

    .line 84
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0164

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->itemView:Landroid/view/View;

    .line 85
    iput p2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->lastPosition:I

    .line 86
    new-instance p1, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;

    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->itemView:Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;-><init>(Landroid/view/View;)V

    return-object p1
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

    .line 693
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->isCalendarView:Z

    .line 694
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->customerList:Ljava/util/List;

    .line 695
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->notifyDataSetChanged()V

    return-void
.end method
