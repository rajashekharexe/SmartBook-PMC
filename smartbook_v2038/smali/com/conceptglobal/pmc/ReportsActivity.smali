.class public Lcom/conceptglobal/pmc/ReportsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ReportsActivity.java"


# static fields
.field private static final GETCUSTOMER:I = 0x3

.field private static final GETNEWACTIVITY:I = 0x2


# instance fields
.field protected cardview:Landroidx/cardview/widget/CardView;

.field private context:Landroid/content/Context;

.field private customerList:Landroidx/recyclerview/widget/RecyclerView;

.field private farmerText:Landroid/widget/TextView;

.field private fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

.field private from:Ljava/lang/String;

.field private getdataDb:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

.field private mDrawableBuilder:Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

.field private marketText:Landroid/widget/TextView;

.field protected profTextView:Landroid/widget/TextView;

.field protected profile_image:Landroid/widget/ImageView;

.field private reportslist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ReportsActivityModel;",
            ">;"
        }
    .end annotation
.end field

.field private retailerText:Landroid/widget/TextView;

.field private rippleView:Lcom/conceptglobal/pmc/views/RippleView;

.field private selectText:Landroid/widget/TextView;

.field private selecttitle:Landroid/widget/TextView;

.field private tag:Ljava/lang/String;

.field private villageText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 43
    const-string v0, "SelfAssignActivity"

    iput-object v0, p0, Lcom/conceptglobal/pmc/ReportsActivity;->tag:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->MATERIAL:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ReportsActivity;->mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/ReportsActivity;->from:Ljava/lang/String;

    return-void
.end method

.method private getData()V
    .locals 10

    .line 116
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportsActivity;->getIntent()Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportsActivity;->from:Ljava/lang/String;

    const-string v1, "Reports"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 123
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_reports_reguler()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_reports_farmertargets()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_reports_dayend()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_applyleave_report()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_attendance_report()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 128
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_tada_report()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 129
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/conceptglobal/pmc/ReportsActivity;->reportslist:Ljava/util/List;

    .line 130
    new-instance v9, Lcom/conceptglobal/pmc/model/ReportsActivityModel;

    invoke-direct {v9}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;-><init>()V

    .line 131
    invoke-virtual {v9, v3}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->setActivityID(I)V

    .line 132
    invoke-virtual {v9, v0}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->setActivityName(Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/conceptglobal/pmc/model/ReportsActivityModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;-><init>()V

    .line 135
    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->setActivityID(I)V

    .line 136
    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->setActivityName(Ljava/lang/String;)V

    .line 138
    new-instance v0, Lcom/conceptglobal/pmc/model/ReportsActivityModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;-><init>()V

    .line 139
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->setActivityID(I)V

    .line 140
    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->setActivityName(Ljava/lang/String;)V

    .line 142
    new-instance v4, Lcom/conceptglobal/pmc/model/ReportsActivityModel;

    invoke-direct {v4}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;-><init>()V

    const/4 v5, 0x4

    .line 143
    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->setActivityID(I)V

    .line 144
    invoke-virtual {v4, v7}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->setActivityName(Ljava/lang/String;)V

    .line 146
    new-instance v5, Lcom/conceptglobal/pmc/model/ReportsActivityModel;

    invoke-direct {v5}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;-><init>()V

    const/4 v7, 0x5

    .line 147
    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->setActivityID(I)V

    .line 148
    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->setActivityName(Ljava/lang/String;)V

    .line 150
    new-instance v6, Lcom/conceptglobal/pmc/model/ReportsActivityModel;

    invoke-direct {v6}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;-><init>()V

    const/4 v7, 0x6

    .line 151
    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->setActivityID(I)V

    .line 152
    invoke-virtual {v6, v8}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->setActivityName(Ljava/lang/String;)V

    .line 154
    iget-object v7, p0, Lcom/conceptglobal/pmc/ReportsActivity;->reportslist:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v7, p0, Lcom/conceptglobal/pmc/ReportsActivity;->reportslist:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "ResignationUserRoleId"

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getItemValuewithActiveCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/common/Queries;->getRoleIdFromuserRoleMapping()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 164
    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    .line 165
    :goto_0
    array-length v9, v0

    if-ge v8, v9, :cond_1

    .line 166
    aget-object v9, v0, v8

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v9, :cond_0

    .line 176
    :try_start_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportsActivity;->reportslist:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportsActivity;->reportslist:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportsActivity;->reportslist:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportsActivity;->from:Ljava/lang/String;

    const-string v4, "Planning"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/ReportsActivity;->reportslist:Ljava/util/List;

    .line 190
    new-instance v0, Lcom/conceptglobal/pmc/model/ReportsActivityModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;-><init>()V

    .line 191
    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->setActivityID(I)V

    .line 192
    const-string v4, "Demand Generation Plan"

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->setActivityName(Ljava/lang/String;)V

    .line 193
    new-instance v4, Lcom/conceptglobal/pmc/model/ReportsActivityModel;

    invoke-direct {v4}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;-><init>()V

    .line 194
    invoke-virtual {v4, v2}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->setActivityID(I)V

    .line 195
    const-string v5, "Product Wise Sales Plan"

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->setActivityName(Ljava/lang/String;)V

    .line 196
    new-instance v5, Lcom/conceptglobal/pmc/model/ReportsActivityModel;

    invoke-direct {v5}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;-><init>()V

    .line 197
    invoke-virtual {v5, v1}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->setActivityID(I)V

    .line 198
    const-string v1, "Distributor Sales Plan"

    invoke-virtual {v5, v1}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->setActivityName(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/conceptglobal/pmc/ReportsActivity;->reportslist:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :try_start_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getRoles()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getRoleIdFromuserRoleMapping()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportsActivity;->reportslist:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportsActivity;->reportslist:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportsActivity;->from:Ljava/lang/String;

    const-string v1, "HRPolicy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_hr_policy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_training_document()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/conceptglobal/pmc/ReportsActivity;->reportslist:Ljava/util/List;

    .line 214
    new-instance v4, Lcom/conceptglobal/pmc/model/ReportsActivityModel;

    invoke-direct {v4}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;-><init>()V

    .line 215
    invoke-virtual {v4, v3}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->setActivityID(I)V

    .line 216
    invoke-virtual {v4, v0}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->setActivityName(Ljava/lang/String;)V

    .line 217
    new-instance v0, Lcom/conceptglobal/pmc/model/ReportsActivityModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;-><init>()V

    .line 218
    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->setActivityID(I)V

    .line 219
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->setActivityName(Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/conceptglobal/pmc/ReportsActivity;->reportslist:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v1, p0, Lcom/conceptglobal/pmc/ReportsActivity;->reportslist:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private init()V
    .locals 3

    .line 230
    new-instance v0, Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/ReportsActivity;->getdataDb:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    const v0, 0x7f0903da

    .line 231
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ReportsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ReportsActivity;->selecttitle:Landroid/widget/TextView;

    .line 232
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectAsignTypeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09028f

    .line 233
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ReportsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ReportsActivity;->customerList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 234
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 235
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 237
    iget-object v1, p0, Lcom/conceptglobal/pmc/ReportsActivity;->customerList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 239
    invoke-static {}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable;->builder()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->round()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/ReportsActivity;->mDrawableBuilder:Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    const v0, 0x7f0901e9

    .line 240
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ReportsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/ifastscroll/FastScroller;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ReportsActivity;->fastScroller:Lcom/conceptglobal/ifastscroll/FastScroller;

    const/16 v1, 0x8

    .line 241
    invoke-virtual {v0, v1}, Lcom/conceptglobal/ifastscroll/FastScroller;->setVisibility(I)V

    return-void
.end method

.method private setAdapter()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportsActivity;->reportslist:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 106
    new-instance v0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/ReportsActivity;->reportslist:Ljava/util/List;

    iget-object v2, p0, Lcom/conceptglobal/pmc/ReportsActivity;->from:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/conceptglobal/pmc/ReportsActivity;->customerList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 108
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 269
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    new-instance p1, Lcom/conceptglobal/pmc/utils/ExceptionHandler;

    invoke-direct {p1, p0}, Lcom/conceptglobal/pmc/utils/ExceptionHandler;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const p1, 0x7f0c011d

    .line 64
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/ReportsActivity;->setContentView(I)V

    .line 65
    iput-object p0, p0, Lcom/conceptglobal/pmc/ReportsActivity;->context:Landroid/content/Context;

    .line 66
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportsActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 67
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/ReportsActivity;->from:Ljava/lang/String;

    .line 68
    const-string v0, "Planning"

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 71
    :cond_0
    const-string p1, "Reports"

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 76
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/ReportsActivity;->from:Ljava/lang/String;

    const-string v1, ")"

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Planning ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_1

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/ReportsActivity;->from:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v0, "HRPolicy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Policy ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_1

    .line 81
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Reports ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 98
    :goto_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/ReportsActivity;->init()V

    .line 99
    invoke-direct {p0}, Lcom/conceptglobal/pmc/ReportsActivity;->getData()V

    .line 100
    invoke-direct {p0}, Lcom/conceptglobal/pmc/ReportsActivity;->setAdapter()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 248
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 257
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 264
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportsActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method
