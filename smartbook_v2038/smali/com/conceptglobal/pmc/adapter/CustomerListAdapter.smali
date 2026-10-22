.class public Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CustomerListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Filterable;
.implements Lcom/conceptglobal/ifastscroll/SectionTitleProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$LoaderViewHolder;,
        Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/Filterable;",
        "Lcom/conceptglobal/ifastscroll/SectionTitleProvider;"
    }
.end annotation


# static fields
.field private static final GETCUSTOMER:I = 0x3

.field private static final VIEWTYPE_ITEM:I = 0x1

.field private static final VIEWTYPE_LOADER:I = 0x2


# instance fields
.field private TAG:Ljava/lang/String;

.field private activityType:I

.field private context:Landroid/content/Context;

.field private d_language:Landroid/app/Dialog;

.field private farmerId:Ljava/lang/String;

.field private getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private isFromAssignment:I

.field private isFromOrders:I

.field private isFromTestimonial:I

.field private isFromcomplaint:I

.field private lastPosition:I

.field private listFarmerNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/CustomListDisplayModel;",
            ">;"
        }
    .end annotation
.end field

.field private mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

.field private mDrawableBuilder:Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOriginalNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/CustomListDisplayModel;",
            ">;"
        }
    .end annotation
.end field

.field private searchString:Ljava/lang/String;

.field private segmentId:I

.field protected showLoader:Z

.field private strVal:Ljava/lang/String;

.field private textStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IIIIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/CustomListDisplayModel;",
            ">;IIIIII)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 48
    const-string v0, "CustomerListAdapter"

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->TAG:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->textStr:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->searchString:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->farmerId:Ljava/lang/String;

    const/4 v0, -0x1

    .line 70
    iput v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->lastPosition:I

    .line 72
    sget-object v0, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->MATERIAL:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    .line 89
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->context:Landroid/content/Context;

    .line 90
    iput p3, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->activityType:I

    .line 91
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->listFarmerNames:Ljava/util/List;

    .line 92
    iput p4, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->segmentId:I

    .line 93
    iput p5, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->isFromAssignment:I

    .line 94
    iput p8, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->isFromTestimonial:I

    .line 95
    iput p6, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->isFromOrders:I

    .line 96
    iput p7, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->isFromcomplaint:I

    .line 97
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 98
    invoke-static {}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable;->builder()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->round()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->mDrawableBuilder:Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    .line 99
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->farmerId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->farmerId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->listFarmerNames:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->listFarmerNames:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->isFromAssignment:I

    return p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->segmentId:I

    return p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->isFromTestimonial:I

    return p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->mOriginalNames:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$702(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->mOriginalNames:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->searchString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->searchString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->activityType:I

    return p0
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 336
    new-instance v0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$2;-><init>(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->listFarmerNames:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->listFarmerNames:Ljava/util/List;

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

    .line 116
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    .line 270
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getTypeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 272
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 275
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 131
    instance-of v0, p1, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$LoaderViewHolder;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 132
    check-cast p1, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$LoaderViewHolder;

    .line 133
    iget-boolean p2, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->showLoader:Z

    if-eqz p2, :cond_0

    .line 134
    iget-object p1, p1, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$LoaderViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p1, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$LoaderViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void

    .line 143
    :cond_1
    check-cast p1, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$ViewHolder;

    .line 144
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    iget v4, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->segmentId:I

    const v5, 0x7f08018d

    const/4 v6, 0x1

    const-string v7, "<br>"

    const-string v8, ""

    if-eq v4, v6, :cond_7

    const/4 v6, 0x2

    if-eq v4, v6, :cond_7

    const/4 v6, 0x3

    if-eq v4, v6, :cond_7

    if-ne v4, v1, :cond_2

    goto/16 :goto_2

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getTypeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getField1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getField1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 177
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getField1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getField2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getField2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 181
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getField2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 185
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->mDrawableBuilder:Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->getRandomColor()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;->build(Ljava/lang/String;I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;

    move-result-object v0

    .line 186
    iget-object v1, p1, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$ViewHolder;->profile_image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 188
    :cond_6
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$ViewHolder;->profile_image:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    :goto_1
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$ViewHolder;->tvFarmerName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->searchString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 148
    :cond_7
    :goto_2
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getData()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 149
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 150
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 151
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 152
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->mDrawableBuilder:Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    iget-object v5, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->getRandomColor()I

    move-result v5

    invoke-interface {v4, v1, v5}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;->build(Ljava/lang/String;I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;

    move-result-object v1

    .line 153
    iget-object v4, p1, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$ViewHolder;->profile_image:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 155
    :cond_8
    iget-object v1, p1, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$ViewHolder;->profile_image:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    :cond_9
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    .line 160
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->strVal:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 161
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    .line 162
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->strVal:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->strVal:Ljava/lang/String;

    const/4 v5, 0x7

    invoke-static {v4, v5}, Lcom/conceptglobal/pmc/utils/StringUtils;->getNumbersFromString(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 167
    :cond_b
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getVillageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getVillageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 168
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getVillageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_c
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$ViewHolder;->tvFarmerName:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :goto_5
    iget-object p1, p1, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$ViewHolder;->cardview:Landroidx/cardview/widget/CardView;

    new-instance v0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$1;-><init>(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;I)V

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 252
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00d1

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 253
    new-instance p2, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$LoaderViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$LoaderViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 255
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c013d

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 258
    iput p2, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->lastPosition:I

    .line 259
    new-instance p2, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 261
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

    .line 124
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->showLoader:Z

    return-void
.end method

.method public swapItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/CustomListDisplayModel;",
            ">;)V"
        }
    .end annotation

    .line 395
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->listFarmerNames:Ljava/util/List;

    return-void
.end method
