.class public Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SelfAssignDraftAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;",
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

.field private itemPosition:I

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
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->lastPosition:I

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->searchString:Ljava/lang/String;

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->packageId:I

    .line 53
    iput v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->itemPosition:I

    .line 56
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->context:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->customerList:Ljava/util/List;

    .line 58
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->mOriginalNames:Ljava/util/List;

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->customerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->customerList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->mOriginalNames:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->searchString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->itemPosition:I

    return p0
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 173
    new-instance v0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$1;-><init>(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->customerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 43
    check-cast p1, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;I)V
    .locals 16

    move-object/from16 v1, p0

    .line 71
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->customerList:Ljava/util/List;

    move/from16 v2, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    .line 72
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 73
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$100(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v5, v1, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->searchString:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getTransId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$100(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->searchString:Ljava/lang/String;

    const v6, 0x7f060005

    const/4 v8, 0x3

    const/4 v9, 0x1

    const-string v10, ")"

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    .line 76
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v13, v1, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->searchString:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson1()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 79
    :cond_0
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 83
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v13

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Lcom/conceptglobal/pmc/common/Queries;->getCustomerNameBySegmentValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v13

    if-eq v13, v9, :cond_2

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v13

    if-eq v13, v11, :cond_2

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v13

    if-eq v13, v8, :cond_2

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v13

    if-ne v13, v5, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v13

    iget-object v14, v1, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->searchString:Ljava/lang/String;

    invoke-static {v14, v0}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 87
    :cond_2
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v13

    iget-object v14, v1, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->searchString:Ljava/lang/String;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 100
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$000(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :goto_1
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 104
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$200(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v13, v1, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->searchString:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 107
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$200(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    :goto_2
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageId()I

    move-result v0

    if-lez v0, :cond_5

    .line 110
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v14

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyName(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " ("

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 113
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v13, v1, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v14

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyName(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$300(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 117
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->searchString:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$400(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$500(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->searchString:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss.sss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getEndDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 124
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$600(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v15, "dd MMM yyyy"

    invoke-direct {v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 130
    :cond_6
    :goto_4
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v13, "("

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v13

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getIsTransactionDone()I

    move-result v0

    if-ne v0, v11, :cond_7

    .line 132
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$800(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 134
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$800(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$900(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 138
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$1000(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 139
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$1000(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$900(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$1000(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 143
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$1100(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 144
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$1100(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$1100(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 147
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$1100(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    :goto_6
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    if-ne v0, v9, :cond_9

    .line 151
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f060000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 152
    :cond_9
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    if-ne v0, v11, :cond_a

    .line 153
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 154
    :cond_a
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    if-ne v0, v8, :cond_b

    .line 155
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 156
    :cond_b
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_c

    .line 157
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 158
    :cond_c
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_d

    .line 159
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 160
    :cond_d
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    if-ne v0, v5, :cond_e

    .line 161
    invoke-static/range {p1 .. p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;->access$700(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 162
    :cond_e
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    :goto_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 243
    iput v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->itemPosition:I

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f090008

    if-eq p1, v1, :cond_4

    const v1, 0x7f09023c

    if-eq p1, v1, :cond_1

    const v0, 0x7f09026e

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 276
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 277
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_confirmDelActivityDialog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 279
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_yesText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$2;-><init>(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 299
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$3;-><init>(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 306
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 307
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 308
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    goto/16 :goto_1

    .line 266
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->customerList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->customerList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_2

    goto :goto_0

    .line 269
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 270
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->customerList:Ljava/util/List;

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

    .line 272
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 267
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->context:Landroid/content/Context;

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

    goto/16 :goto_1

    .line 247
    :cond_4
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->customerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->customerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->customerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->customerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v1

    const-string v2, "SEGMENTID"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->customerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTIVITYNAME"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->customerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getAssignmentId()I

    move-result v1

    const-string v2, "AssignmentId"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->customerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v1

    const-string v2, "ACTIVITYID"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    const-string v1, "ISSELFASSIGN"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->customerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPackageId()I

    move-result v1

    const-string v2, "PackageId"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->customerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getTransId()J

    move-result-wide v1

    const-string v3, "TRANSID"

    invoke-virtual {p1, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 259
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 260
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->customerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    const-string v2, "MODELCLASS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 261
    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 262
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 263
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->context:Landroid/content/Context;

    const/high16 v2, 0x20000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;
    .locals 3

    .line 64
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0162

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 65
    iput p2, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->lastPosition:I

    .line 66
    new-instance p2, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$SelectionTODOHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
