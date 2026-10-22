.class public Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListSelectionAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static mDuplicate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FieldTypes;",
            ">;"
        }
    .end annotation
.end field

.field public static mOriginalNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FieldTypes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private arrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FieldTypes;",
            ">;"
        }
    .end annotation
.end field

.field private ctx:Landroid/content/Context;

.field private farmerID:Ljava/lang/String;

.field private inflater:Landroid/view/LayoutInflater;

.field isFisFromFeedback:Z

.field private searchString:Ljava/lang/String;

.field private segmentId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->mDuplicate:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FieldTypes;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->searchString:Ljava/lang/String;

    .line 32
    const-string v0, "0"

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->farmerID:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->segmentId:I

    .line 38
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->arrayList:Ljava/util/List;

    .line 39
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    sput-object p2, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->mDuplicate:Ljava/util/List;

    const/4 p2, 0x0

    .line 40
    sput-object p2, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->mOriginalNames:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->ctx:Landroid/content/Context;

    .line 42
    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->farmerID:Ljava/lang/String;

    .line 43
    iput p4, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->segmentId:I

    .line 44
    iput-boolean p5, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->isFisFromFeedback:Z

    .line 45
    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->arrayList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->arrayList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$102(Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->searchString:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->arrayList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 105
    new-instance v0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter$1;-><init>(Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/FieldTypes;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 52
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c00ca

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 54
    :cond_0
    new-instance p3, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;)V

    const v0, 0x7f090252

    .line 55
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 56
    iget-object p3, p3, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->searchString:Ljava/lang/String;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/FieldTypes;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/FieldTypes;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->arrayList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/FieldTypes;

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 88
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/FieldTypes;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/FieldTypes;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string p1, "FarmerId"

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->farmerID:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string p1, "SegmentId"

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->segmentId:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    const-string p1, "isfrom"

    iget-boolean v1, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->isFisFromFeedback:Z

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->ctx:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 93
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->ctx:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
