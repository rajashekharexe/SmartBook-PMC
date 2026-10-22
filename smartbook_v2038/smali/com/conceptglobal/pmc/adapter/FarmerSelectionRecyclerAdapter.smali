.class public Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FarmerSelectionRecyclerAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;",
        ">;",
        "Landroid/widget/Filterable;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private lastPosition:I

.field private listFarmerNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation
.end field

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

.field private searchString:Ljava/lang/String;

.field private villageId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;I)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->searchString:Ljava/lang/String;

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->lastPosition:I

    .line 45
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->context:Landroid/content/Context;

    .line 46
    iput p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->villageId:I

    .line 47
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->listFarmerNames:Ljava/util/List;

    .line 48
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->mOriginalNames:Ljava/util/List;

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->listFarmerNames:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->listFarmerNames:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->mOriginalNames:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->searchString:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 94
    new-instance v0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$1;-><init>(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 32
    check-cast p1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;I)V
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;->tvFarmerName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->searchString:Ljava/lang/String;

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;->llView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;->tvFarmerNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->searchString:Ljava/lang/String;

    const-string v2, "NA"

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 66
    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;->llView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;->tvFarmerNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->searchString:Ljava/lang/String;

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;->tvActivityAssigned:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->searchString:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    const-string v4, " , "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getServerUpdatedStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getServerUpdatedStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 78
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;->ivSave:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 80
    :cond_4
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;->ivSave:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    :goto_2
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;->llView:Landroid/widget/LinearLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 84
    iget-object p1, p1, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;->llView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0902c7

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result p1

    const/4 v1, 0x1

    const/high16 v2, 0x20000

    const/high16 v3, 0x4000000

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->context:Landroid/content/Context;

    const-class v4, Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-direct {p1, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->villageId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 144
    :cond_2
    :goto_0
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->context:Landroid/content/Context;

    const-class v4, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-direct {p1, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->villageId:I

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivitySegmentId()I

    move-result v1

    const-string v4, "SEGMENTID"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyName(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "ACTIVITYNAME"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->listFarmerNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityAssignmentId()I

    move-result v0

    const-string v1, "AssignmentId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 152
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;
    .locals 3

    .line 54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c013e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 55
    iput p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->lastPosition:I

    .line 56
    new-instance p2, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$SelectionListViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
