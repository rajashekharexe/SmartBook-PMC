.class public Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "AsymmetricGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/StaggeredItemsModel;",
            ">;"
        }
    .end annotation
.end field

.field private deviceHeight:I

.field mContext:Landroid/content/Context;

.field private final mGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/StaggeredItemsModel;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    sget-object v0, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->TRANSPARENT:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    .line 43
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->data:Ljava/util/List;

    .line 45
    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mContext:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 47
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 48
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 50
    iget p1, p2, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->deviceHeight:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 60
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0152

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;

    invoke-direct {p3}, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;-><init>()V

    const v0, 0x7f090109

    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->contentrl:Landroid/widget/RelativeLayout;

    const v0, 0x7f090457

    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f090123

    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->description:Landroid/widget/TextView;

    const v0, 0x7f090124

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->description1:Landroid/widget/TextView;

    const v0, 0x7f090125

    .line 66
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->description2:Landroid/widget/TextView;

    const v0, 0x7f09010c

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->count:Landroid/widget/TextView;

    const v0, 0x7f09010d

    .line 68
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->count1:Landroid/widget/TextView;

    const v0, 0x7f09010e

    .line 69
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->count2:Landroid/widget/TextView;

    const v0, 0x7f090075

    .line 70
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->imgView:Landroid/widget/ImageView;

    .line 71
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;

    .line 76
    rem-int/lit8 v0, p1, 0x2

    const/16 v1, 0xb4

    const/16 v2, 0x1e0

    if-nez v0, :cond_2

    .line 77
    iget v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->deviceHeight:I

    if-le v0, v2, :cond_1

    .line 78
    iget-object v0, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->contentrl:Landroid/widget/RelativeLayout;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->contentrl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    goto :goto_0

    .line 83
    :cond_2
    iget v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->deviceHeight:I

    if-le v0, v2, :cond_3

    .line 84
    iget-object v0, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->contentrl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    goto :goto_0

    .line 86
    :cond_3
    iget-object v0, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->contentrl:Landroid/widget/RelativeLayout;

    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_4

    .line 91
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 93
    iget-object v2, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->contentrl:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v0, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->contentrl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFitsSystemWindows(Z)V

    .line 96
    :cond_4
    iget-object v0, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->contentrl:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->getColor(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 97
    iget-object v0, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->contentrl:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getModuleid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 99
    iget-object v0, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->description1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getDescription1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->description2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getDescription2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->count:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->count1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getCount1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->count2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getCount2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->imgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->data:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getDrawable()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object p1, p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$ViewHolder;->contentrl:Landroid/widget/RelativeLayout;

    new-instance p3, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$1;

    invoke-direct {p3, p0}, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$1;-><init>(Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;)V

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
