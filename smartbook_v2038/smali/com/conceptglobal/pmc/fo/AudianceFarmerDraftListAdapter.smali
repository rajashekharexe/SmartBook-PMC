.class public Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AudianceFarmerDraftListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/conceptglobal/ifastscroll/SectionTitleProvider;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$LoaderViewHolder;,
        Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$DraftListViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Landroid/widget/Filterable;",
        "Lcom/conceptglobal/ifastscroll/SectionTitleProvider;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AFDraftListAdapter"

.field private static final VIEWTYPE_ITEM:I = 0x1

.field private static final VIEWTYPE_LOADER:I = 0x2


# instance fields
.field private final context:Landroid/content/Context;

.field private draftStatus:Ljava/lang/String;

.field private filterDraftListOriginalData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;"
        }
    .end annotation
.end field

.field private from:Ljava/lang/String;

.field private isFrom:Ljava/lang/String;

.field private isFromSelfAssignment:Z

.field private lastPosition:I

.field private mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

.field private mDrawableBuilder:Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

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

.field private searchString:Ljava/lang/String;

.field private segmentId:I

.field private selectedFarmers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;"
        }
    .end annotation
.end field

.field protected showLoader:Z

.field private strVal:Ljava/lang/String;

.field private updateFarmersCount:Lcom/conceptglobal/pmc/fo/IUpdateFarmersCount;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/conceptglobal/pmc/fo/IUpdateFarmersCount;)V
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
            "IZ",
            "Lcom/conceptglobal/pmc/fo/IUpdateFarmersCount;",
            ")V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->searchString:Ljava/lang/String;

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->lastPosition:I

    .line 67
    sget-object v0, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->MATERIAL:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->selectedFarmers:Ljava/util/HashMap;

    .line 82
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->context:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->originalDraftList:Ljava/util/List;

    .line 84
    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    .line 85
    iput-object p3, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->from:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->draftStatus:Ljava/lang/String;

    .line 87
    iput-object p5, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->isFrom:Ljava/lang/String;

    .line 88
    iput p6, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->segmentId:I

    .line 89
    iput-boolean p7, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->isFromSelfAssignment:Z

    .line 90
    invoke-static {}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable;->builder()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->round()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->mDrawableBuilder:Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    .line 91
    iput-object p8, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->updateFarmersCount:Lcom/conceptglobal/pmc/fo/IUpdateFarmersCount;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->selectedFarmers:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;)Lcom/conceptglobal/pmc/fo/IUpdateFarmersCount;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->updateFarmersCount:Lcom/conceptglobal/pmc/fo/IUpdateFarmersCount;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->originalDraftList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->searchString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->searchString:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 427
    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$2;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

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

    .line 106
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

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

    .line 121
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 488
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/DashboardListModel;

    .line 489
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getData()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 490
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

    .line 491
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

    .line 494
    const-string v1, "AddFarmerDraftListAdapter"

    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 495
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getSelectedFarmerData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->selectedFarmers:Ljava/util/HashMap;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 136
    instance-of v0, p1, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$LoaderViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 137
    check-cast p1, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$LoaderViewHolder;

    .line 138
    iget-boolean p2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->showLoader:Z

    if-eqz p2, :cond_0

    .line 139
    iget-object p1, p1, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$LoaderViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p1, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$LoaderViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void

    .line 147
    :cond_1
    check-cast p1, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$DraftListViewHolder;

    .line 148
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DashboardListModel;

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getData()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 181
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 182
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 183
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->mDrawableBuilder:Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->getRandomColor()I

    move-result v7

    invoke-interface {v6, v5, v7}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;->build(Ljava/lang/String;I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;

    move-result-object v5

    .line 184
    iget-object v6, p1, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$DraftListViewHolder;->profile_image:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 186
    :cond_2
    iget-object v5, p1, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$DraftListViewHolder;->profile_image:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08018d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 190
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 191
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->strVal:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 192
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 194
    const-string v7, "<br>"

    if-eqz v6, :cond_4

    const/4 v8, 0x2

    if-ne v6, v8, :cond_3

    goto :goto_3

    .line 198
    :cond_3
    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->strVal:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 195
    :cond_4
    :goto_3
    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->strVal:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :goto_4
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->strVal:Ljava/lang/String;

    const/4 v8, 0x5

    invoke-static {v7, v8}, Lcom/conceptglobal/pmc/utils/StringUtils;->getNumbersFromString(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 213
    :cond_6
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->isFrom:Ljava/lang/String;

    const-string v5, "DRAFT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->isFrom:Ljava/lang/String;

    const-string v5, "Sent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getUpdatedDate()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getUpdatedDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    .line 214
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Draft since \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getUpdatedDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getNoOfDaysDiff(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "\" days"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_8
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    nop

    .line 221
    :goto_5
    iget-object v4, p1, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$DraftListViewHolder;->profTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v3, p1, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$DraftListViewHolder;->profTextView2:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->filterDraftListOriginalData:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getDraftId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$DraftListViewHolder;->id:Ljava/lang/String;

    .line 226
    iget-object v2, p1, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$DraftListViewHolder;->cbAudianceFarmerSelect:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 227
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->selectedFarmers:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getDraftId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 228
    iget-object v0, p1, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$DraftListViewHolder;->cbAudianceFarmerSelect:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_6

    .line 230
    :cond_9
    iget-object v0, p1, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$DraftListViewHolder;->cbAudianceFarmerSelect:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 232
    :goto_6
    iget-object v0, p1, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$DraftListViewHolder;->cbAudianceFarmerSelect:Landroid/widget/CheckBox;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$1;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 310
    iget-object p2, p1, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$DraftListViewHolder;->cardview:Landroidx/cardview/widget/CardView;

    invoke-virtual {p2, p1}, Landroidx/cardview/widget/CardView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 412
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00d1

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 413
    new-instance p2, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$LoaderViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$LoaderViewHolder;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 415
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0065

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 419
    iput p2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->lastPosition:I

    .line 420
    new-instance p2, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$DraftListViewHolder;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$DraftListViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 422
    :cond_1
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

.method public showLoading(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->showLoader:Z

    return-void
.end method
