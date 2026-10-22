.class public Lcom/conceptglobal/pmc/fo/SelfAssignActivity;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "SelfAssignActivity.java"


# static fields
.field private static final GETCUSTOMER:I = 0x3

.field private static final GETNEWACTIVITY:I = 0x2


# instance fields
.field private activityId:I

.field private assignTypeText:Landroid/widget/TextView;

.field protected cardview:Landroidx/cardview/widget/CardView;

.field private context:Landroid/content/Context;

.field private customerList:Landroidx/recyclerview/widget/RecyclerView;

.field private farmerId:Ljava/lang/String;

.field private farmerText:Landroid/widget/TextView;

.field private fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

.field private getdataDb:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private isFromComplaint:I

.field private isFromFeedBack:I

.field private isFromOrders:I

.field private isFromSurvey:I

.field private isFromTestimonial:I

.field private isFromTodo:I

.field private isFromassignment:I

.field private mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

.field private mDrawableBuilder:Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

.field private marketText:Landroid/widget/TextView;

.field protected phonedail:Landroid/widget/ImageView;

.field protected profTextView:Landroid/widget/TextView;

.field protected profile_image:Landroid/widget/ImageView;

.field private retailerText:Landroid/widget/TextView;

.field private rippleView:Lcom/conceptglobal/pmc/views/RippleView;

.field private segmentId:I

.field private segmentlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/CustomListDisplayModel;",
            ">;"
        }
    .end annotation
.end field

.field private selectText:Landroid/widget/TextView;

.field private selecttitle:Landroid/widget/TextView;

.field private tag:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private villageText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 60
    const-string v0, "SelfAssignActivity"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->tag:Ljava/lang/String;

    .line 63
    const-string v0, "0"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->farmerId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromassignment:I

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromComplaint:I

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromOrders:I

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromTestimonial:I

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromFeedBack:I

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromSurvey:I

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromTodo:I

    .line 71
    sget-object v0, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->MATERIAL:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    return-void
.end method

.method private checkDraftValidity()V
    .locals 5

    .line 386
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "DeleteSADrafts_Days"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 388
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    .line 390
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    neg-int v4, v0

    .line 391
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    const/16 v3, 0xb

    const/4 v4, 0x0

    .line 392
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 393
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    .line 394
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    .line 395
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 396
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 397
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->getdataDb:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteDraftQueryCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v2

    .line 398
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->getdataDb:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteDraftQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    if-lez v2, :cond_0

    .line 400
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->showDetailsToUser(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 405
    const-string v1, "Self Assign"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private getData()V
    .locals 5

    .line 167
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 170
    const-string v1, "isFromAssignment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "ACTIVITYID"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromassignment:I

    .line 172
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->activityId:I

    .line 174
    :cond_0
    const-string v1, "isFromOrders"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromOrders:I

    .line 176
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->activityId:I

    .line 178
    :cond_1
    const-string v1, "isFromComplaints"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromComplaint:I

    .line 180
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->activityId:I

    .line 182
    :cond_2
    const-string v1, "isFromTestimonial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 183
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromTestimonial:I

    .line 184
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->activityId:I

    .line 186
    :cond_3
    const-string v1, "isFromFeedBack"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 187
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromFeedBack:I

    .line 188
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->activityId:I

    .line 190
    :cond_4
    const-string v1, "isFromSurvey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 191
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromSurvey:I

    .line 192
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->activityId:I

    .line 194
    :cond_5
    const-string v1, "isFromTodo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 195
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromTodo:I

    :cond_6
    return-void
.end method

.method private init()V
    .locals 11

    .line 207
    new-instance v0, Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->getdataDb:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    const v0, 0x7f0903da

    .line 208
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->selecttitle:Landroid/widget/TextView;

    .line 209
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectAsignTypeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromTestimonial:I

    const/16 v1, 0xde

    const/16 v2, 0x6f

    if-ne v0, v2, :cond_0

    .line 211
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->selecttitle:Landroid/widget/TextView;

    const-string v3, "Select Testimonial Type"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 212
    :cond_0
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromFeedBack:I

    if-ne v0, v1, :cond_1

    .line 213
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->selecttitle:Landroid/widget/TextView;

    const-string v3, "Select Complaint Segment Type"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const v0, 0x7f09028f

    .line 217
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->customerList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x1

    .line 218
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 219
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 221
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->customerList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 223
    invoke-static {}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable;->builder()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->round()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->mDrawableBuilder:Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    .line 227
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromassignment:I

    if-ne v0, v3, :cond_2

    .line 228
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->getdataDb:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->activityId:I

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getSegmentDataUserWise(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getCustomTypeList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->segmentlist:Ljava/util/List;

    goto/16 :goto_1

    .line 229
    :cond_2
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromOrders:I

    if-ne v0, v3, :cond_3

    .line 230
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->getdataDb:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getSegmentDataOrders()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getCustomTypeList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->segmentlist:Ljava/util/List;

    goto :goto_1

    .line 231
    :cond_3
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromComplaint:I

    if-ne v0, v3, :cond_4

    .line 232
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->getdataDb:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getSegmentDataComplaints()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getCustomTypeList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->segmentlist:Ljava/util/List;

    goto :goto_1

    .line 233
    :cond_4
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromTestimonial:I

    if-ne v0, v2, :cond_5

    .line 234
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->getdataDb:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/utils/SharedPrefManager;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->getPMCLanguage(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getTSTSegmentData(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getCustomTypeList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->segmentlist:Ljava/util/List;

    goto :goto_1

    .line 235
    :cond_5
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromFeedBack:I

    if-ne v0, v1, :cond_6

    .line 236
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->getdataDb:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/utils/SharedPrefManager;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->getPMCLanguage(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getFBFSegmentData(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getCustomTypeList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->segmentlist:Ljava/util/List;

    goto :goto_1

    .line 238
    :cond_6
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->getdataDb:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/utils/SharedPrefManager;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->getPMCLanguage(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getSegmentData(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getCustomTypeList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->segmentlist:Ljava/util/List;

    :goto_1
    const v0, 0x7f0901e9

    .line 240
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/ifastscroll/FastScroller;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    const/16 v1, 0x8

    .line 241
    invoke-virtual {v0, v1}, Lcom/conceptglobal/ifastscroll/FastScroller;->setVisibility(I)V

    .line 243
    new-instance v0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->segmentlist:Ljava/util/List;

    iget v5, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromassignment:I

    iget v6, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromOrders:I

    iget v7, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromComplaint:I

    iget v8, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromTestimonial:I

    iget v9, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromFeedBack:I

    iget v10, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromTodo:I

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;IIIIII)V

    .line 244
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->customerList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 245
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private showDetailsToUser(I)V
    .locals 4

    .line 413
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Drafts which are older than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " days are deleted from mobile"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v2, Lcom/conceptglobal/pmc/fo/SelfAssignActivity$1;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SelfAssignActivity$1;-><init>(Lcom/conceptglobal/pmc/fo/SelfAssignActivity;)V

    .line 416
    const-string v3, "OK"

    invoke-virtual {p1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 422
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 423
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 424
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 201
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

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12

    .line 251
    invoke-super {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const/4 p1, -0x1

    .line 257
    invoke-virtual {p0, p1, p3}, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->setResult(ILandroid/content/Intent;)V

    .line 258
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->finish()V

    :cond_1
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 265
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 266
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 267
    const-string p2, "FarmerId"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->farmerId:Ljava/lang/String;

    .line 268
    const-string p2, "SegmentId"

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->segmentId:I

    .line 269
    const-string p2, "isfrom"

    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    if-eqz p1, :cond_2

    .line 275
    :try_start_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 276
    aget-object p2, p1, v0

    .line 277
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->getdataDb:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/conceptglobal/pmc/common/Queries;->getListOfAttributesUpdate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 278
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 279
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 281
    :try_start_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->farmerId:Ljava/lang/String;

    iget v4, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->segmentId:I

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v2, p2

    move-wide v6, v9

    invoke-static/range {v1 .. v8}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertCustomerAttributeDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 283
    :try_start_2
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->tag:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 288
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->tag:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const/high16 p2, 0x20000

    .line 291
    const-string v1, "ASSIGNMENTID"

    const-string v2, "TRANSID"

    const-string v3, "SEGMENTID"

    const-string v4, "ACTIVITYNAME"

    const-string v5, "ACTIVITYID"

    const/high16 v6, 0x4000000

    const/4 v7, 0x1

    if-ne p3, v7, :cond_3

    .line 292
    new-instance p3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const-class v11, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-direct {p3, v8, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 293
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v8

    iget-object v11, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->farmerId:Ljava/lang/String;

    invoke-virtual {p3, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    aget-object v8, p1, v0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    aget-object p1, p1, v7

    invoke-virtual {p3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    iget p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->segmentId:I

    invoke-virtual {p3, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    invoke-virtual {p3, v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 299
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    invoke-virtual {p3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 301
    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 304
    :cond_3
    new-instance p3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const-class v11, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-direct {p3, v8, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v8

    iget-object v11, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->farmerId:Ljava/lang/String;

    invoke-virtual {p3, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    aget-object v8, p1, v0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    aget-object p1, p1, v7

    invoke-virtual {p3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    iget p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->segmentId:I

    invoke-virtual {p3, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    const-string p1, "ISSELFASSIGN"

    invoke-virtual {p3, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    invoke-virtual {p3, v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 311
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    invoke-virtual {p3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 313
    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 380
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 81
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0124

    .line 85
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->setContentView(I)V

    .line 86
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->context:Landroid/content/Context;

    .line 87
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 89
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    const-string v0, "Self Assignment("

    const-string v1, "("

    const-string v2, ")"

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    .line 90
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selfAssignText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_0

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selfAssignText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 95
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selfAssignText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 98
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selfAssignText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 101
    :goto_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->getData()V

    .line 102
    iget p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromassignment:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 105
    :try_start_0
    const-string p1, "Select Customer Type"

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 107
    :catch_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selfAssignText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 110
    :cond_3
    :goto_1
    iget p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromTestimonial:I

    const/16 v4, 0x6f

    if-ne p1, v4, :cond_5

    .line 112
    :try_start_1
    const-string v5, "Testimonials Screen"

    const-string v6, ""

    iget p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->activityId:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const-string v9, ""

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    :goto_2
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    const-string v4, "Testimonials("

    if-eq p1, v3, :cond_4

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_3

    .line 119
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 122
    :cond_5
    :goto_3
    iget p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromFeedBack:I

    const/16 v4, 0xde

    if-ne p1, v4, :cond_8

    .line 123
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v4, "Title"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 124
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->title:Ljava/lang/String;

    .line 126
    :cond_6
    :try_start_2
    const-string v4, "FeedBack Form Screen"

    const-string v5, ""

    iget p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->activityId:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    :goto_4
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    if-eq p1, v3, :cond_7

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->title:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_5

    .line 134
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->title:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 137
    :cond_8
    :goto_5
    iget p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromSurvey:I

    if-ne p1, v0, :cond_a

    .line 139
    :try_start_3
    const-string v4, "FeedBack Form Screen"

    const-string v5, ""

    iget p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->activityId:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    :goto_6
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    const-string v0, "Survey("

    if-eq p1, v3, :cond_9

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_7

    .line 147
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_7

    .line 151
    :cond_a
    :try_start_4
    const-string v0, "SelfAssign Screen"

    const-string v1, ""

    iget p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->activityId:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    :catch_4
    move-exception p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    :goto_7
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->init()V

    .line 160
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->checkDraftValidity()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 339
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09024c

    .line 340
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    iget v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromFeedBack:I

    const/16 v2, 0xde

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 342
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 347
    :cond_0
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 356
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_2

    const v1, 0x7f09024c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->isFromTestimonial:I

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_1

    .line 364
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/fo/SelfAssignDraftActivityCopy;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 365
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 367
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/fo/SelfAssignDraftActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 368
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->startActivity(Landroid/content/Intent;)V

    .line 375
    :goto_0
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 358
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method
