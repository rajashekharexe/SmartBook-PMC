.class public Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActivityDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final PLANNED_DONE:I = 0x1

.field private static final PLANNED_NOT_DONE:I = 0x0

.field private static final RESULT_DONE:I = 0x1

.field private static final RESULT_NOT_DONE:I = 0x2

.field private static final RESULT_NOT_SELECTED:I = 0x3


# instance fields
.field private context:Landroid/content/Context;

.field private farmerID:Ljava/lang/String;

.field private holder:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;

.field private isSelfAssign:I

.field private ismba:I

.field private listActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ActivityModel;",
            ">;"
        }
    .end annotation
.end field

.field private lvActivity:Landroid/widget/ListView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private segmentId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ILandroid/widget/ListView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ActivityModel;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Landroid/widget/ListView;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    new-instance v0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->segmentId:I

    iput v0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->isSelfAssign:I

    .line 54
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->context:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->farmerID:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->listActivities:Ljava/util/List;

    .line 57
    iput-object p5, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->lvActivity:Landroid/widget/ListView;

    .line 58
    iput p4, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->ismba:I

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ILandroid/widget/ListView;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ActivityModel;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Landroid/widget/ListView;",
            "II)V"
        }
    .end annotation

    .line 220
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    new-instance v0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;

    .line 221
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->context:Landroid/content/Context;

    .line 222
    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->farmerID:Ljava/lang/String;

    .line 223
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->listActivities:Ljava/util/List;

    .line 224
    iput-object p5, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->lvActivity:Landroid/widget/ListView;

    .line 225
    iput p4, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->ismba:I

    .line 226
    iput p6, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->segmentId:I

    .line 227
    iput p7, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->isSelfAssign:I

    .line 228
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->farmerID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->ismba:I

    return p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->segmentId:I

    return p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->listActivities:Ljava/util/List;

    return-object p0
.end method

.method private init(Landroid/view/View;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;

    const v1, 0x7f0904f8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;->access$102(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;

    const v1, 0x7f09026b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;->access$202(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 138
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;

    const v1, 0x7f0902b6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;->access$402(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 139
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;

    const v1, 0x7f090270

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;->access$302(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->listActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->listActivities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 81
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c002d

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 82
    new-instance p3, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$1;)V

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;

    .line 83
    invoke-direct {p0, p2}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->init(Landroid/view/View;)V

    .line 84
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;

    .line 89
    :goto_0
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->listActivities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/ActivityModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ActivityModel;->getActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->listActivities:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/ActivityModel;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/ActivityModel;->getIsPlanned()I

    move-result p3

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 91
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;->access$200(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;->access$300(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 93
    :cond_1
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->listActivities:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/ActivityModel;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/ActivityModel;->getIsPlanned()I

    move-result p3

    if-nez p3, :cond_2

    .line 94
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;->access$300(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;->access$200(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    :cond_2
    :goto_1
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->listActivities:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/ActivityModel;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/ActivityModel;->getIsDone()I

    move-result p3

    if-ne p3, v2, :cond_3

    .line 98
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;->access$400(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p3

    const v0, 0x7f08009a

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 100
    :cond_3
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->listActivities:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/ActivityModel;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/ActivityModel;->getIsDone()I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_4

    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->listActivities:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/ActivityModel;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/ActivityModel;->getIsDone()I

    move-result p3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_5

    .line 101
    :cond_4
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;->access$400(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p3

    const v0, 0x7f08009b

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 105
    :cond_5
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    new-instance v0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$1;-><init>(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;I)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;->access$300(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p3

    new-instance v0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$2;-><init>(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;I)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method showActivityDeleteDilag(Ljava/lang/String;II)V
    .locals 3

    .line 184
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 185
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_confirmDelActivityDialog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$4;

    invoke-direct {v2, p0, p2, p3}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$4;-><init>(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 204
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$3;-><init>(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;)V

    invoke-virtual {p2, p3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 210
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 211
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 212
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method public swapItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ActivityModel;",
            ">;)V"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->listActivities:Ljava/util/List;

    .line 174
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->notifyDataSetChanged()V

    return-void
.end method
