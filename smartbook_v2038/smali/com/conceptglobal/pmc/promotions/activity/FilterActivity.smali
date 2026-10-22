.class public Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FilterActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/promotions/interfaces/OnApplyFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;
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

.field private mTask:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;

.field private nodataview:Landroid/widget/TextView;

.field private progress:Landroid/widget/ProgressBar;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private tvApplyFilter:Landroid/widget/TextView;

.field private tvCloseDialog:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->categoryMasters:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->contentTypeMasters:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->listOfContentTypeFiltered:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->mAdapter:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->listOfContentTypeFiltered:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Landroid/app/Activity;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->categoryMasters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->progress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->refreshAdapter()V

    return-void
.end method

.method private buildLabel(Ljava/lang/String;I)Landroid/widget/TextView;
    .locals 2

    .line 234
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 235
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    const/high16 v1, 0x41600000    # 14.0f

    .line 236
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p1, 0xf

    const/16 v1, 0xc

    .line 237
    invoke-virtual {v0, p1, p1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const p1, 0x7f0800a0

    .line 238
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 239
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 240
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060031

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    new-instance p1, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$4;

    invoke-direct {p1, p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$4;-><init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)V

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

    .line 224
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 225
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->removeAllViews()V

    .line 227
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

    .line 228
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentTypeMaster;->getContentTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentTypeMaster;->getContentTypeId()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->buildLabel(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 229
    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private loadData()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->mTask:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->mTask:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;->cancel(Z)Z

    .line 219
    :cond_0
    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->mTask:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;

    const/4 v1, 0x0

    .line 220
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private refreshAdapter()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->mAdapter:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->notifyDataSetChanged()V

    .line 206
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->mAdapter:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->nodataview:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->nodataview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setAdapter()V
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->contentTypeChipsLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->contentTypeMasters:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/List;)V

    .line 137
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->categoryMasters:Ljava/util/List;

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->mAdapter:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    .line 139
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 141
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

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    const-string v1, "categories"

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->listOfContentTypeFiltered:Ljava/util/ArrayList;

    const-string v1, "contentType"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->listOfContentTypeFiltered:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 125
    :cond_0
    const-string p1, ""

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/4 p1, -0x1

    .line 128
    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->setResult(ILandroid/content/Intent;)V

    .line 129
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00d5

    .line 54
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->setContentView(I)V

    .line 55
    iput-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->activity:Landroid/app/Activity;

    .line 56
    iput-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->context:Landroid/content/Context;

    .line 57
    new-instance p1, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    .line 60
    :try_start_0
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getContentTypeMasters()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->contentTypeMasters:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const p1, 0x7f090104

    .line 65
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->contentTypeChipsLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    .line 67
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    const p1, 0x7f0903a5

    .line 69
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f0900fc

    .line 70
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->tvCloseDialog:Landroid/widget/TextView;

    const p1, 0x7f0904fd

    .line 71
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->tvApplyFilter:Landroid/widget/TextView;

    .line 72
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 73
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 74
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const p1, 0x7f0905b3

    .line 75
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->nodataview:Landroid/widget/TextView;

    const p1, 0x7f09035b

    .line 76
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->progress:Landroid/widget/ProgressBar;

    .line 77
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->setAdapter()V

    .line 78
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->loadData()V

    .line 80
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->tvCloseDialog:Landroid/widget/TextView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->tvApplyFilter:Landroid/widget/TextView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$2;-><init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 186
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0900f7

    .line 187
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 188
    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$3;-><init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method
