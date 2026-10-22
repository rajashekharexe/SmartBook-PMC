.class public Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;
.super Landroidx/fragment/app/Fragment;
.source "FilterFragment.java"

# interfaces
.implements Lcom/conceptglobal/pmc/promotions/interfaces/OnApplyFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/activity/FilterFragment$LoadDataTask;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

.field private categoryMasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;",
            ">;"
        }
    .end annotation
.end field

.field private contentTypeChipsLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

.field private contentTypeMasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentTypeMaster;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private listOfCategoriesFiltered:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private listOfContentTypeFiltered:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private llm:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mAdapter:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

.field private mTask:Lcom/conceptglobal/pmc/promotions/activity/FilterFragment$LoadDataTask;

.field private nodataview:Landroid/widget/TextView;

.field private progress:Landroid/widget/ProgressBar;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private rootView:Landroid/view/View;

.field private tvApplyFilter:Landroid/widget/TextView;

.field private tvCloseDialog:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->categoryMasters:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->contentTypeMasters:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->listOfContentTypeFiltered:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;)Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->mAdapter:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->listOfContentTypeFiltered:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;)Landroid/app/Activity;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->categoryMasters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->progress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->refreshAdapter()V

    return-void
.end method

.method private buildLabel(Ljava/lang/String;I)Landroid/widget/TextView;
    .locals 2

    .line 250
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 251
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    const/high16 v1, 0x41600000    # 14.0f

    .line 252
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p1, 0xf

    const/16 v1, 0xc

    .line 253
    invoke-virtual {v0, p1, p1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const p1, 0x7f0800a0

    .line 254
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 255
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 256
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060031

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    new-instance p1, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment$3;

    invoke-direct {p1, p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment$3;-><init>(Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentTypeMaster;",
            ">;)V"
        }
    .end annotation

    .line 240
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 241
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->removeAllViews()V

    .line 243
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/ContentTypeMaster;

    .line 244
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentTypeMaster;->getContentTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentTypeMaster;->getContentTypeId()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->buildLabel(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 245
    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private init()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090104

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->contentTypeChipsLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    .line 87
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 89
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0903a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 90
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0900fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->tvCloseDialog:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0904fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->tvApplyFilter:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 93
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 95
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0905b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->nodataview:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->rootView:Landroid/view/View;

    const v1, 0x7f09035b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->progress:Landroid/widget/ProgressBar;

    .line 97
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->tvCloseDialog:Landroid/widget/TextView;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->tvApplyFilter:Landroid/widget/TextView;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment$2;-><init>(Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private loadData()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->mTask:Lcom/conceptglobal/pmc/promotions/activity/FilterFragment$LoadDataTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment$LoadDataTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->mTask:Lcom/conceptglobal/pmc/promotions/activity/FilterFragment$LoadDataTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment$LoadDataTask;->cancel(Z)Z

    .line 235
    :cond_0
    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment$LoadDataTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;Lcom/conceptglobal/pmc/promotions/activity/FilterFragment$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->mTask:Lcom/conceptglobal/pmc/promotions/activity/FilterFragment$LoadDataTask;

    const/4 v1, 0x0

    .line 236
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private refreshAdapter()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->mAdapter:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->notifyDataSetChanged()V

    .line 222
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->mAdapter:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->nodataview:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->nodataview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setAdapter()V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->contentTypeChipsLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->contentTypeMasters:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/List;)V

    .line 153
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->categoryMasters:Ljava/util/List;

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->mAdapter:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    .line 155
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onApplyFilter(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 137
    const-string v1, "categories"

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->listOfContentTypeFiltered:Ljava/util/ArrayList;

    const-string v1, "contentType"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->listOfContentTypeFiltered:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 141
    :cond_0
    const-string p1, ""

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 145
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->activity:Landroid/app/Activity;

    .line 60
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->context:Landroid/content/Context;

    .line 61
    new-instance p1, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    .line 64
    :try_start_0
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getContentTypeMasters()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->contentTypeMasters:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 75
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->rootView:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c00d5

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->rootView:Landroid/view/View;

    .line 77
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->init()V

    .line 78
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->setAdapter()V

    .line 79
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->loadData()V

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->rootView:Landroid/view/View;

    return-object p1
.end method
