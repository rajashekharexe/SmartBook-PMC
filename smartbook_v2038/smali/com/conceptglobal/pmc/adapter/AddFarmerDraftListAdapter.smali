.class public Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AddFarmerDraftListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/conceptglobal/ifastscroll/SectionTitleProvider;
.implements Lcom/conceptglobal/pmc/interfaces/OnVerifyOTPListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$LoaderViewHolder;,
        Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;,
        Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$OTPAsync;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Landroid/widget/Filterable;",
        "Lcom/conceptglobal/ifastscroll/SectionTitleProvider;",
        "Lcom/conceptglobal/pmc/interfaces/OnVerifyOTPListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AFDraftListAdapter"

.field private static final VIEWTYPE_ITEM:I = 0x1

.field private static final VIEWTYPE_ITEM_DISTRIBUTOR:I = 0x3

.field private static final VIEWTYPE_LOADER:I = 0x2


# instance fields
.field private final context:Landroid/content/Context;

.field private draftStatus:Ljava/lang/String;

.field private dynamicColumns:Ljava/lang/String;

.field private filterDraftListOriginalData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;"
        }
    .end annotation
.end field

.field private fragment:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

.field private from:Ljava/lang/String;

.field private getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field isDistributerEligibletoUpdate:Z

.field isEligibletoUpdate:Z

.field private isFrom:Ljava/lang/String;

.field private isFromFeedBack:Z

.field private isFromSelfAssignment:Z

.field private isFromSurvey:Z

.field private isFromTestmonial:Z

.field private isFromTodo:I

.field private lastPosition:I

.field private mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

.field private mDrawableBuilder:Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

.field private mOTP:Ljava/lang/String;

.field private mSelectedMobile:Ljava/lang/String;

.field private mSelectedName:Ljava/lang/String;

.field private mSelectedPosition:I

.field private mSelectedRespondentNo:Ljava/lang/String;

.field model:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private originalDraftList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;"
        }
    .end annotation
.end field

.field private otpVerificationDialog:Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

.field private searchString:Ljava/lang/String;

.field private segmentId:I

.field protected showLoader:Z

.field private strVal:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZZZZ)V"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->searchString:Ljava/lang/String;

    const/4 v0, -0x1

    .line 110
    iput v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->lastPosition:I

    .line 112
    sget-object v0, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->MATERIAL:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isEligibletoUpdate:Z

    .line 131
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isDistributerEligibletoUpdate:Z

    .line 136
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->originalDraftList:Ljava/util/List;

    .line 138
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    .line 139
    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    .line 140
    iput-object p4, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->draftStatus:Ljava/lang/String;

    .line 141
    iput-object p5, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFrom:Ljava/lang/String;

    .line 142
    iput p6, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->segmentId:I

    .line 143
    iput-boolean p7, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFromSelfAssignment:Z

    .line 144
    iput-boolean p8, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFromTestmonial:Z

    .line 145
    iput-boolean p9, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFromFeedBack:Z

    .line 146
    iput-boolean p10, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFromSurvey:Z

    .line 147
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 148
    invoke-static {}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable;->builder()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->round()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mDrawableBuilder:Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    const/4 p1, 0x2

    if-ne p6, p1, :cond_0

    .line 155
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p2

    const-string p3, "Dealer"

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/common/Queries;->getDynamicColumnNamesQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getModuleMandatoryColumns(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->dynamicColumns:Ljava/lang/String;

    :cond_0
    if-ne p6, v0, :cond_1

    .line 158
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p2

    const-string p3, "Farmer"

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/common/Queries;->getDynamicColumnNamesQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getModuleMandatoryColumns(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->dynamicColumns:Ljava/lang/String;

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    const-string p2, "Retailer"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 161
    invoke-direct {p0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->validateRetailerUpdateStatus()V

    .line 163
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    const-string p2, "Distributor"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 164
    invoke-direct {p0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->validateDistributerUpdateStatus()V

    :cond_3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZILcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZZZZI",
            "Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;",
            ")V"
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 91
    new-instance p12, Ljava/util/ArrayList;

    invoke-direct {p12}, Ljava/util/ArrayList;-><init>()V

    iput-object p12, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    .line 106
    const-string p12, ""

    iput-object p12, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->searchString:Ljava/lang/String;

    const/4 p12, -0x1

    .line 110
    iput p12, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->lastPosition:I

    .line 112
    sget-object p12, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->MATERIAL:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    iput-object p12, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    const/4 p12, 0x1

    .line 130
    iput-boolean p12, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isEligibletoUpdate:Z

    .line 131
    iput-boolean p12, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isDistributerEligibletoUpdate:Z

    .line 169
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    .line 170
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->originalDraftList:Ljava/util/List;

    .line 171
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    .line 172
    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    .line 173
    iput-object p4, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->draftStatus:Ljava/lang/String;

    .line 174
    iput-object p5, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFrom:Ljava/lang/String;

    .line 175
    iput p6, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->segmentId:I

    .line 176
    iput-boolean p7, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFromSelfAssignment:Z

    .line 177
    iput-boolean p8, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFromTestmonial:Z

    .line 178
    iput-boolean p9, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFromFeedBack:Z

    .line 179
    iput-boolean p10, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFromSurvey:Z

    .line 180
    iput p11, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFromTodo:I

    .line 181
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 182
    invoke-static {}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable;->builder()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->round()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mDrawableBuilder:Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    const/4 p1, 0x2

    if-ne p6, p1, :cond_0

    .line 189
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p2

    const-string p3, "Dealer"

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/common/Queries;->getDynamicColumnNamesQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getModuleMandatoryColumns(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->dynamicColumns:Ljava/lang/String;

    :cond_0
    if-ne p6, p12, :cond_1

    .line 192
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p2

    const-string p3, "Farmer"

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/common/Queries;->getDynamicColumnNamesQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getModuleMandatoryColumns(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->dynamicColumns:Ljava/lang/String;

    .line 194
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    const-string p2, "Retailer"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 195
    invoke-direct {p0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->validateRetailerUpdateStatus()V

    .line 197
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    const-string p2, "Distributor"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 198
    invoke-direct {p0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->validateDistributerUpdateStatus()V

    :cond_3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZLcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZZZZ",
            "Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;",
            ")V"
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->searchString:Ljava/lang/String;

    const/4 v0, -0x1

    .line 110
    iput v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->lastPosition:I

    .line 112
    sget-object v0, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->MATERIAL:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isEligibletoUpdate:Z

    .line 131
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isDistributerEligibletoUpdate:Z

    .line 203
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    .line 204
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->originalDraftList:Ljava/util/List;

    .line 205
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    .line 206
    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    .line 207
    iput-object p4, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->draftStatus:Ljava/lang/String;

    .line 208
    iput-object p5, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFrom:Ljava/lang/String;

    .line 209
    iput p6, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->segmentId:I

    .line 210
    iput-boolean p7, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFromSelfAssignment:Z

    .line 211
    iput-boolean p8, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFromTestmonial:Z

    .line 212
    iput-boolean p9, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFromFeedBack:Z

    .line 213
    iput-boolean p10, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFromSurvey:Z

    .line 214
    iput-object p11, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->fragment:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    .line 215
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 216
    invoke-static {}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable;->builder()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->round()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mDrawableBuilder:Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    const/4 p1, 0x2

    if-ne p6, p1, :cond_0

    .line 223
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p2

    const-string p3, "Dealer"

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/common/Queries;->getDynamicColumnNamesQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getModuleMandatoryColumns(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->dynamicColumns:Ljava/lang/String;

    :cond_0
    if-ne p6, v0, :cond_1

    .line 226
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p2

    const-string p3, "Farmer"

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/common/Queries;->getDynamicColumnNamesQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getModuleMandatoryColumns(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->dynamicColumns:Ljava/lang/String;

    .line 228
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    const-string p2, "Retailer"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 229
    invoke-direct {p0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->validateRetailerUpdateStatus()V

    .line 231
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    const-string p2, "Distributor"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 232
    invoke-direct {p0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->validateDistributerUpdateStatus()V

    :cond_3
    return-void
.end method

.method private SyncData()V
    .locals 2

    .line 1283
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1285
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 1286
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->otpVerificationDialog:Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;)Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->otpVerificationDialog:Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Landroid/content/Context;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->showOTPVerifyDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)I
    .locals 0

    .line 81
    iget p0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFromTodo:I

    return p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)I
    .locals 0

    .line 81
    iget p0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->segmentId:I

    return p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFromSelfAssignment:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->dynamicColumns:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Landroid/content/Context;Lcom/conceptglobal/pmc/model/DashboardListModel;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->showMandatoryDataEmptyMsg(Landroid/content/Context;Lcom/conceptglobal/pmc/model/DashboardListModel;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Landroid/content/Context;Lcom/conceptglobal/pmc/model/DashboardListModel;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->showMandatoryDataEmptyMsgFarmer(Landroid/content/Context;Lcom/conceptglobal/pmc/model/DashboardListModel;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Ljava/lang/String;Lcom/conceptglobal/pmc/model/DashboardListModel;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->showUpdateRetailerAlertDialog(Ljava/lang/String;Lcom/conceptglobal/pmc/model/DashboardListModel;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->showAlertDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Lcom/conceptglobal/pmc/model/DashboardListModel;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->showProfileUpdateDeniedDialog(Lcom/conceptglobal/pmc/model/DashboardListModel;)V

    return-void
.end method

.method static synthetic access$202(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFromTestmonial:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFromSurvey:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFromFeedBack:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->draftStatus:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFrom:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->showAccessDeniedDialog()V

    return-void
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->originalDraftList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->searchString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->searchString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->fragment:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->getOTPDetails()V

    return-void
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->SyncData()V

    return-void
.end method

.method static synthetic access$502(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;I)I
    .locals 0

    .line 81
    iput p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mSelectedName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mSelectedName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mSelectedMobile:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mSelectedMobile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mSelectedRespondentNo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->callOTPAsync()V

    return-void
.end method

.method private callOTPAsync()V
    .locals 3

    .line 1294
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$OTPAsync;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$OTPAsync;-><init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$OTPAsync;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1298
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getOTPDetails()V
    .locals 9

    .line 1322
    const-string v0, "getOTPDetails"

    const-string v1, "AFDraftListAdapter"

    .line 0
    const-string v2, "mOTP ::::::::::::: "

    const-string v3, "OTP Request jsonObj ::::::::::::: "

    const/4 v4, 0x0

    .line 1324
    :try_start_0
    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    new-instance v5, Lcom/conceptglobal/pmc/model/otp/GetOTP;

    invoke-direct {v5}, Lcom/conceptglobal/pmc/model/otp/GetOTP;-><init>()V

    .line 1331
    iget-object v6, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mSelectedRespondentNo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/model/otp/GetOTP;->setRespondentNo(Ljava/lang/String;)V

    .line 1332
    iget-object v6, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mSelectedMobile:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/model/otp/GetOTP;->setMobileNo(Ljava/lang/String;)V

    .line 1333
    iget-object v6, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mSelectedName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/model/otp/GetOTP;->setFarmerName(Ljava/lang/String;)V

    .line 1334
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/model/otp/GetOTP;->setPdaid(Ljava/lang/String;)V

    .line 1335
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    .line 1336
    invoke-virtual {v6, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1337
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodSendFarmerOTP()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1339
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v7

    invoke-virtual {v7, v5, v3}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1340
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    const-class v3, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;

    invoke-virtual {v6, v4, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;

    .line 1343
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;->getStatus()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Success"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1344
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;->getData()Lcom/conceptglobal/pmc/model/otp/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/otp/Data;->getOTP()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mOTP:Ljava/lang/String;

    .line 1345
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mOTP:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1347
    :cond_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1351
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, v4}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showAccessDeniedDialog()V
    .locals 4

    .line 1487
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1489
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_accessDeniedDialog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

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

    new-instance v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$14;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$14;-><init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1494
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1495
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1496
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 1502
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1504
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

    new-instance v2, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$15;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$15;-><init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1509
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1510
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1511
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showMandatoryDataEmptyMsg(Landroid/content/Context;Lcom/conceptglobal/pmc/model/DashboardListModel;)V
    .locals 2

    .line 1408
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 1409
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1410
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_missedretailerprofiledata()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1411
    new-instance v0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$12;

    invoke-direct {v0, p0, p2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$12;-><init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Lcom/conceptglobal/pmc/model/DashboardListModel;)V

    const/4 p2, -0x1

    const-string v1, "Ok"

    invoke-virtual {p1, p2, v1, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1425
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showMandatoryDataEmptyMsgFarmer(Landroid/content/Context;Lcom/conceptglobal/pmc/model/DashboardListModel;)V
    .locals 2

    .line 1429
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 1430
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1431
    const-string v0, "To perform activity, Please fill all mandatory information of the farmer from Add Farmer Module. "

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1432
    new-instance v0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$13;

    invoke-direct {v0, p0, p2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$13;-><init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Lcom/conceptglobal/pmc/model/DashboardListModel;)V

    const/4 p2, -0x1

    const-string v1, "Ok"

    invoke-virtual {p1, p2, v1, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1446
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showOTPVerifyDialog(Landroid/content/Context;)V
    .locals 3

    .line 1396
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 1397
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1398
    const-string v0, "As you don\'t have internet connection now. Please verify the farmer later."

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1399
    new-instance v0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$11;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$11;-><init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)V

    const/4 v1, -0x1

    const-string v2, "Ok"

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1404
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showProfileUpdateDeniedDialog(Lcom/conceptglobal/pmc/model/DashboardListModel;)V
    .locals 4

    .line 1541
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1543
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_updateVilageDialog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

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

    new-instance v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$17;

    invoke-direct {v3, p0, p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$17;-><init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Lcom/conceptglobal/pmc/model/DashboardListModel;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1561
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1562
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1563
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showUpdateRetailerAlertDialog(Ljava/lang/String;Lcom/conceptglobal/pmc/model/DashboardListModel;)V
    .locals 3

    .line 1517
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1519
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

    new-instance v2, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$16;

    invoke-direct {v2, p0, p2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$16;-><init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Lcom/conceptglobal/pmc/model/DashboardListModel;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1533
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1534
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1535
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private startService()V
    .locals 3

    .line 1216
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    const-string v1, "Service initiated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1219
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 1220
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    :cond_0
    return-void
.end method

.method private validateDistributerUpdateStatus()V
    .locals 5

    return-void

    .line 1469
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "DistributerNonUpdateRoleIDs"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getItemValuewithActiveCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1470
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getRoleIdFromuserRoleMapping()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 1471
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1472
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1473
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 1474
    aget-object v4, v0, v3

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1475
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isDistributerEligibletoUpdate:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1481
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private validateFarmerWithOTP()Z
    .locals 5

    const/4 v0, 0x0

    .line 1358
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

    .line 1359
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getRoleIdFromuserRoleMapping()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 1360
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1361
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 1362
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 1363
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

    .line 1370
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return v0
.end method

.method private validateRetailerUpdateStatus()V
    .locals 5

    return-void

    .line 1451
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "RetailerNonUpdateRoleIDs"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getItemValuewithActiveCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1452
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getRoleIdFromuserRoleMapping()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 1453
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1454
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1455
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 1456
    aget-object v4, v0, v3

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1457
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isEligibletoUpdate:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1463
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private validateRetailerWithOTP()Z
    .locals 5

    const/4 v0, 0x0

    .line 1378
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

    .line 1379
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getRoleIdFromuserRoleMapping()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 1380
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1381
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 1382
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 1383
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

    .line 1390
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 1071
    new-instance v0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$10;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$10;-><init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getData()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_0

    const/4 p1, 0x2

    return p1

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    const-string v1, "Distributor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    const-string v1, "Dealer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x3

    return p1
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1132
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    .line 1133
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/DashboardListModel;

    .line 1134
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getData()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1135
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1136
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1140
    const-string v1, "AddFarmerDraftListAdapter"

    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1141
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    .line 272
    instance-of v3, v0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$LoaderViewHolder;

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_1

    .line 273
    check-cast v0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$LoaderViewHolder;

    .line 274
    iget-boolean v2, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->showLoader:Z

    if-eqz v2, :cond_0

    .line 275
    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$LoaderViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 277
    :cond_0
    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$LoaderViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void

    .line 283
    :cond_1
    move-object v3, v0

    check-cast v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;

    .line 284
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/conceptglobal/pmc/model/DashboardListModel;

    .line 286
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFrom:Ljava/lang/String;

    const-string v7, "ALL"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v7, "Retailer"

    const-string v8, "Farmer"

    const v9, 0x7f060138

    const/4 v10, 0x1

    if-eqz v0, :cond_12

    .line 287
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->lloutstand:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 289
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->llbalance:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getBalance_Points()D

    move-result-wide v11

    .line 291
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v0, v11, v4

    const-string v0, "%.2f"

    invoke-static {v0, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 293
    iget-object v11, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvblncpnts:Landroid/widget/TextView;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->llRstr:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 296
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->llRstr:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 297
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->iv_web:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->iv_web:Landroid/widget/ImageView;

    const v11, 0x7f080210

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->ivRaisingstar:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    :cond_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    const-string v11, "Distributor"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    const-string v11, "Dealer"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 302
    :cond_3
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->lloutstand:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 303
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->llbalance:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 304
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getOutStandingValue()D

    move-result-wide v11

    .line 305
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v13}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const/16 v13, 0x2c

    .line 306
    invoke-virtual {v0, v13}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 307
    new-instance v13, Ljava/text/DecimalFormat;

    const-string v14, "##,##,##0.00"

    invoke-direct {v13, v14, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 308
    invoke-virtual {v13, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 309
    iget-object v11, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvoutstnd:Landroid/widget/TextView;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->llRstr:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->llRstr:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 314
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->iv_web:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->iv_web:Landroid/widget/ImageView;

    const v11, 0x7f080178

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->ivRaisingstar:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 317
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->isRisingStar()Z

    move-result v0

    if-ne v0, v10, :cond_4

    .line 318
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->ivRaisingstar:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 320
    :cond_4
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->ivRaisingstar:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    :cond_5
    :goto_1
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getLangitude()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getLangitude()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getLatitude()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 323
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->gps:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 325
    :cond_6
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->gps:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    :goto_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const v11, 0x7f060137

    const-string v12, "0"

    const-string v13, "UnVerifiedFarmer"

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 328
    :cond_7
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getField3()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 329
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getField3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 330
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvUnverifiedLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->verifyWithOTP:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->validateFarmerWithOTP()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 333
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    .line 337
    :cond_8
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->cardview:Landroidx/cardview/widget/CardView;

    iget-object v13, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v0, v13}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 338
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvVerify:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 334
    :cond_9
    :goto_3
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->cardview:Landroidx/cardview/widget/CardView;

    iget-object v13, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v0, v13}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 335
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvVerify:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 341
    :cond_a
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvVerify:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 345
    :cond_b
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->cardview:Landroidx/cardview/widget/CardView;

    iget-object v13, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v0, v13}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 346
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvUnverifiedLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->verifyWithOTP:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 348
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvVerify:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    :cond_c
    :goto_4
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v13, "UnVerifiedRetailer"

    if-nez v0, :cond_d

    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 359
    :cond_d
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getField3()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 360
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getField3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 361
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvUnverifiedLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->verifyWithOTP:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->validateRetailerWithOTP()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 364
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_5

    .line 368
    :cond_e
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->cardview:Landroidx/cardview/widget/CardView;

    iget-object v11, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v0, v11}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 369
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvVerify:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 365
    :cond_f
    :goto_5
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->cardview:Landroidx/cardview/widget/CardView;

    iget-object v12, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v0, v11}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 366
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvVerify:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 372
    :cond_10
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvVerify:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 376
    :cond_11
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->cardview:Landroidx/cardview/widget/CardView;

    iget-object v11, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v0, v11}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 377
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvUnverifiedLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->verifyWithOTP:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvVerify:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    :cond_12
    :goto_6
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 394
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getIsSaarthie()Ljava/lang/String;

    move-result-object v0

    const-string v11, "YES"

    if-eqz v0, :cond_13

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getIsSaarthie()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 396
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvRightView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvRightView:Landroid/widget/TextView;

    const-string v12, "S\nA\nA\nR\nT\nH\nI\nE"

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->llFellowFarmerDetails:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 401
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v12

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getSaarthieFarmerID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/common/Queries;->getFelloFarmerCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    iget-object v12, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvFellowCount:Landroid/widget/TextView;

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 404
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 408
    :cond_13
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getIsFellowFarmer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getIsFellowFarmer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getIsFellowFarmer()Ljava/lang/String;

    move-result-object v0

    const-string v12, "1"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 410
    :cond_14
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvRightView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvRightView:Landroid/widget/TextView;

    const-string v12, "F\nE\nL\nL\nO\nW"

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->llFellowFarmerDetails:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7

    .line 415
    :cond_15
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getSegmentationValue()I

    move-result v0

    if-ne v0, v10, :cond_16

    .line 417
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvRightView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvRightView:Landroid/widget/TextView;

    const-string v12, "T\nG\n"

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->llFellowFarmerDetails:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7

    .line 424
    :cond_16
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvRightView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->llFellowFarmerDetails:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 427
    :goto_7
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getIsCropHero()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getIsCropHero()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 428
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->ivHNF:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 430
    :cond_17
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->ivHNF:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 433
    :cond_18
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvRightView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->ivHNF:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 436
    :goto_8
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    const-string v11, "Village"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 437
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->phonedail:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->sms:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 439
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->llFellowFarmerDetails:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 443
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getData()Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 446
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_1a

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1a

    .line 447
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    .line 448
    iget-object v15, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mDrawableBuilder:Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    iget-object v10, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->getRandomColor()I

    move-result v10

    invoke-interface {v15, v14, v10}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;->build(Ljava/lang/String;I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;

    move-result-object v10

    .line 449
    iget-object v14, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->profile_image:Landroid/widget/ImageView;

    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 451
    :cond_1a
    iget-object v10, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->profile_image:Landroid/widget/ImageView;

    iget-object v14, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f08018d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 454
    :goto_9
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 455
    :goto_a
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v4, 0x2

    if-ge v14, v15, :cond_1e

    .line 456
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    iput-object v15, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->strVal:Ljava/lang/String;

    if-eqz v15, :cond_1d

    .line 457
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_1d

    .line 459
    const-string v15, "<br>"

    if-eqz v14, :cond_1c

    if-ne v14, v4, :cond_1b

    goto :goto_b

    .line 463
    :cond_1b
    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->strVal:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 460
    :cond_1c
    :goto_b
    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->strVal:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    :goto_c
    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->strVal:Ljava/lang/String;

    const/4 v15, 0x7

    invoke-static {v4, v15}, Lcom/conceptglobal/pmc/utils/StringUtils;->getNumbersFromString(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1d
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    goto :goto_a

    .line 478
    :cond_1e
    iget-object v13, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFrom:Ljava/lang/String;

    const-string v14, "DRAFT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1f

    iget-object v13, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFrom:Ljava/lang/String;

    const-string v14, "Sent"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_20

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getUpdatedDate()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_20

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getUpdatedDate()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_20

    .line 479
    :cond_1f
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Draft since \""

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getUpdatedDate()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getNoOfDaysDiff(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "\" days"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    :cond_20
    :try_start_1
    iget-object v13, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getLastVisitedDate()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const v14, 0x7f06010f

    if-nez v13, :cond_21

    iget-object v13, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getLastVisitedDate()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v13, v4, :cond_22

    :cond_21
    iget-boolean v4, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFromSelfAssignment:Z

    if-eqz v4, :cond_22

    .line 483
    iget-object v4, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->rlBorderVoew:Landroid/widget/RelativeLayout;

    iget-object v9, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_d

    .line 484
    :cond_22
    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getLastVisitedDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24

    iget-boolean v4, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isFromSelfAssignment:Z

    if-eqz v4, :cond_24

    .line 485
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v13

    const-string v15, "OutletVisitDuration"

    invoke-virtual {v13, v15}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v16

    .line 486
    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getLastVisitedDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->findDifference(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v18

    .line 487
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Last Visited Date "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getLastVisitedDate()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v4, v18, v16

    if-lez v4, :cond_23

    .line 489
    iget-object v4, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->rlBorderVoew:Landroid/widget/RelativeLayout;

    iget-object v9, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_d

    .line 491
    :cond_23
    iget-object v4, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->rlBorderVoew:Landroid/widget/RelativeLayout;

    iget-object v13, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 498
    :catch_1
    :cond_24
    :goto_d
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v12, v4, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v0, v4, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_e

    :catch_2
    nop

    .line 502
    :goto_e
    iget-object v4, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->profTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v4, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->profTextView2:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getDraftId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->id:Ljava/lang/String;

    .line 508
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->ivFavourite:Landroid/widget/ImageView;

    if-eqz v0, :cond_25

    .line 509
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->ivFavourite:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 511
    :cond_25
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 512
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->ivFavourite:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 513
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->ivFavourite:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 516
    :cond_26
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 517
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getFavouriteStatus()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_27

    .line 518
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->ivFavourite:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    .line 520
    :cond_27
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->ivFavourite:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08008a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 524
    :cond_28
    :goto_f
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->delete:Landroid/widget/ImageView;

    new-instance v4, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$1;

    invoke-direct {v4, v1, v2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$1;-><init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;I)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->gps:Landroid/widget/ImageView;

    new-instance v4, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$2;

    invoke-direct {v4, v1, v2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$2;-><init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;I)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvFellowCount:Landroid/widget/TextView;

    new-instance v4, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$3;

    invoke-direct {v4, v1, v6}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$3;-><init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Lcom/conceptglobal/pmc/model/DashboardListModel;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->cardview:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v3}, Landroidx/cardview/widget/CardView;->setTag(Ljava/lang/Object;)V

    .line 598
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->phonedail:Landroid/widget/ImageView;

    new-instance v4, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$4;

    invoke-direct {v4, v1, v10}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$4;-><init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Ljava/util/List;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->iv_web:Landroid/widget/ImageView;

    new-instance v4, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$5;

    invoke-direct {v4, v1, v6}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$5;-><init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Lcom/conceptglobal/pmc/model/DashboardListModel;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->sms:Landroid/widget/ImageView;

    new-instance v4, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$6;

    invoke-direct {v4, v1, v10}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$6;-><init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Ljava/util/List;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 645
    :cond_29
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->ivFavourite:Landroid/widget/ImageView;

    new-instance v4, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;

    invoke-direct {v4, v1, v2, v6, v3}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;-><init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;ILcom/conceptglobal/pmc/model/DashboardListModel;Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    :cond_2a
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvVerify:Landroid/widget/TextView;

    new-instance v4, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$8;

    invoke-direct {v4, v1, v2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$8;-><init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;I)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    iget-object v0, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->cardview:Landroidx/cardview/widget/CardView;

    new-instance v4, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;

    invoke-direct {v4, v1, v6, v2, v3}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;-><init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Lcom/conceptglobal/pmc/model/DashboardListModel;ILcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;)V

    invoke-virtual {v0, v4}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClose()V
    .locals 4

    .line 1204
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    const-string v1, "Retailer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "0"

    if-eqz v0, :cond_0

    .line 1205
    :try_start_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mSelectedRespondentNo:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateRetailerOTPVerificationQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    goto :goto_0

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mSelectedRespondentNo:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateFarmerOTPVerificationQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 1208
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mSelectedRespondentNo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateFarmerServerStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1211
    const-string v1, "AFDraftListAdapter"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 1049
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00d1

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1050
    new-instance p2, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$LoaderViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$LoaderViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v0, 0x1

    const v2, 0x7f0c00a1

    if-ne p2, v0, :cond_1

    .line 1052
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1056
    iput p2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->lastPosition:I

    .line 1057
    new-instance p2, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 1059
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1063
    iput p2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->lastPosition:I

    .line 1064
    new-instance p2, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 1066
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid ViewType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onResendOTP()V
    .locals 3

    .line 1178
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mOTP:Ljava/lang/String;

    .line 1179
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    const-string v1, "Verification code  has been sent to your mobile number."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1181
    invoke-direct {p0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->callOTPAsync()V

    goto :goto_0

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->showOTPVerifyDialog(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public onSortItemSelected(ILjava/lang/String;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1594
    :pswitch_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    new-instance p2, Lcom/conceptglobal/pmc/model/ZToASorter;

    invoke-direct {p2}, Lcom/conceptglobal/pmc/model/ZToASorter;-><init>()V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 1591
    :pswitch_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    new-instance p2, Lcom/conceptglobal/pmc/model/AToZSorter;

    invoke-direct {p2}, Lcom/conceptglobal/pmc/model/AToZSorter;-><init>()V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 1587
    :pswitch_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    new-instance v0, Lcom/conceptglobal/pmc/model/FarmerTotalSalesLowToHighSorter;

    invoke-direct {v0, p2}, Lcom/conceptglobal/pmc/model/FarmerTotalSalesLowToHighSorter;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 1584
    :pswitch_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    new-instance v0, Lcom/conceptglobal/pmc/model/FarmerTotalSalesSorter;

    invoke-direct {v0, p2}, Lcom/conceptglobal/pmc/model/FarmerTotalSalesSorter;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 1581
    :pswitch_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    new-instance v0, Lcom/conceptglobal/pmc/model/FarmerTotalSalesSorter;

    invoke-direct {v0, p2}, Lcom/conceptglobal/pmc/model/FarmerTotalSalesSorter;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 1577
    :pswitch_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    new-instance v0, Lcom/conceptglobal/pmc/model/FarmerTotalSalesLowToHighSorter;

    invoke-direct {v0, p2}, Lcom/conceptglobal/pmc/model/FarmerTotalSalesLowToHighSorter;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 1574
    :pswitch_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    new-instance v0, Lcom/conceptglobal/pmc/model/SegmentSorter;

    invoke-direct {v0, p2}, Lcom/conceptglobal/pmc/model/SegmentSorter;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 1570
    :pswitch_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    new-instance v0, Lcom/conceptglobal/pmc/model/SegmentLowToHighSorter;

    invoke-direct {v0, p2}, Lcom/conceptglobal/pmc/model/SegmentLowToHighSorter;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1597
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->notifyDataSetChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSubmitOTP(Ljava/lang/String;)V
    .locals 5

    .line 1148
    const-string v0, "UnVerifiedRetailer"

    const-string v1, "1"

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mOTP:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 1150
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    const-string v3, "Retailer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1153
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mSelectedRespondentNo:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateFarmerOTPVerificationQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 1154
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mSelectedRespondentNo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateFarmerServerStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 1155
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mSelectedRespondentNo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateFarmerStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    goto :goto_1

    .line 1151
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mSelectedRespondentNo:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateRetailerOTPVerificationQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1158
    const-string v3, "AFDraftListAdapter"

    invoke-static {v3, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1160
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    const-string v3, "Verification is done successfully."

    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1161
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1162
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->otpVerificationDialog:Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->dismissDialog()V

    .line 1163
    invoke-direct {p0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->startService()V

    .line 1164
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    const-string v2, "UnVerifiedFarmer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 1167
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    iget v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mSelectedPosition:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/model/DashboardListModel;->setField3(Ljava/lang/String;)V

    goto :goto_3

    .line 1165
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    iget v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mSelectedPosition:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1169
    :goto_3
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->notifyDataSetChanged()V

    goto :goto_4

    .line 1171
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->context:Landroid/content/Context;

    const-string v0, "Invalid Verification Code. Please try again!"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1172
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_4
    return-void
.end method

.method public onVerifyLater()V
    .locals 4

    .line 1190
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->from:Ljava/lang/String;

    const-string v1, "Retailer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "0"

    if-eqz v0, :cond_0

    .line 1191
    :try_start_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mSelectedRespondentNo:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateRetailerOTPVerificationQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    goto :goto_0

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mSelectedRespondentNo:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateFarmerOTPVerificationQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 1194
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->mSelectedRespondentNo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateFarmerServerStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1197
    const-string v1, "AFDraftListAdapter"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public showLoading(Z)V
    .locals 0

    .line 265
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->showLoader:Z

    return-void
.end method
