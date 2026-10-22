.class public Lcom/conceptglobal/pmc/adapter/ReportsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ReportsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/ReportsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/conceptglobal/pmc/adapter/ReportsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final GETCUSTOMER:I = 0x3


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ReportsActivityModel;",
            ">;"
        }
    .end annotation
.end field

.field private isFromOrders:I

.field private isFromReports:Ljava/lang/String;

.field private isFromcomplaint:I

.field private mActivity:Landroid/app/Activity;

.field private mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

.field private mDrawableBuilder:Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

.field private onTapListener:Lcom/conceptglobal/pmc/interfaces/OnTapListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ReportsActivityModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    sget-object v0, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->MATERIAL:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    .line 38
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->mActivity:Landroid/app/Activity;

    .line 39
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->data:Ljava/util/List;

    .line 40
    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->isFromReports:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable;->builder()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->round()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->mDrawableBuilder:Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->isFromReports:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;)Landroid/app/Activity;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->data:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 26
    check-cast p1, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/adapter/ReportsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/conceptglobal/pmc/adapter/ReportsAdapter$ViewHolder;I)V
    .locals 2

    .line 54
    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$ViewHolder;->access$300(Lcom/conceptglobal/pmc/adapter/ReportsAdapter$ViewHolder;)Lcom/conceptglobal/pmc/views/RippleView;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;-><init>(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;I)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/views/RippleView;->setOnRippleCompleteListener(Lcom/conceptglobal/pmc/views/RippleView$OnRippleCompleteListener;)V

    .line 81
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$ViewHolder;->profileimage:Lcom/conceptglobal/pmc/utils/CircleImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/CircleImageView;->setVisibility(I)V

    .line 82
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$ViewHolder;->profTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/ReportsActivityModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->getActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$ViewHolder;->profTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 85
    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$ViewHolder;->access$300(Lcom/conceptglobal/pmc/adapter/ReportsAdapter$ViewHolder;)Lcom/conceptglobal/pmc/views/RippleView;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/views/RippleView;->setTag(Ljava/lang/Object;)V

    .line 86
    iget-object p1, p1, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/ReportsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/ReportsAdapter$ViewHolder;
    .locals 1

    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0125

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 47
    new-instance p2, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setOnTapListener(Lcom/conceptglobal/pmc/interfaces/OnTapListener;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->onTapListener:Lcom/conceptglobal/pmc/interfaces/OnTapListener;

    return-void
.end method
