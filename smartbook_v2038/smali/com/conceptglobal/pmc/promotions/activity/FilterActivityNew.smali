.class public Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FilterActivityNew.java"

# interfaces
.implements Lcom/conceptglobal/pmc/promotions/interfaces/OnApplyFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;
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

.field private contextId:I

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

.field private mAdapter:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

.field private mTask:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;

.field private nodataview:Landroid/widget/TextView;

.field private progress:Landroid/widget/ProgressBar;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private tvApplyFilter:Landroid/widget/TextView;

.field private tvClose:Landroid/widget/TextView;

.field private tvCloseDialog:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->categoryMasters:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->contentTypeMasters:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->listOfContentTypeFiltered:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->contextId:I

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->mAdapter:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Ljava/util/ArrayList;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->listOfContentTypeFiltered:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Ljava/util/ArrayList;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Landroid/app/Activity;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->categoryMasters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->contextId:I

    return p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Landroid/widget/ProgressBar;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->progress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->refreshAdapter()V

    return-void
.end method

.method private buildLabel(Ljava/lang/String;I)Landroid/widget/TextView;
    .locals 2

    .line 277
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 278
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    const/high16 v1, 0x41600000    # 14.0f

    .line 279
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p1, 0xf

    const/16 v1, 0xc

    .line 280
    invoke-virtual {v0, p1, p1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const p1, 0x7f0800a0

    .line 281
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 282
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 283
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060031

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    new-instance p1, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$5;

    invoke-direct {p1, p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$5;-><init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)V

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

    .line 267
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 268
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->removeAllViews()V

    .line 270
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

    .line 271
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentTypeMaster;->getContentTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentTypeMaster;->getContentTypeId()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->buildLabel(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 272
    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private loadData()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->mTask:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->mTask:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;->cancel(Z)Z

    .line 262
    :cond_0
    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->mTask:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;

    const/4 v1, 0x0

    .line 263
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private refreshAdapter()V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->mAdapter:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->notifyDataSetChanged()V

    .line 249
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->mAdapter:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->nodataview:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->nodataview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setAdapter()V
    .locals 7

    .line 166
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->contentTypeChipsLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->contentTypeMasters:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/List;)V

    .line 169
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->categoryMasters:Ljava/util/List;

    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget v6, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->contextId:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/HashMap;I)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->mAdapter:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    .line 171
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 173
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

    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 153
    const-string v1, "categories"

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->listOfContentTypeFiltered:Ljava/util/ArrayList;

    const-string v1, "contentType"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->listOfContentTypeFiltered:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 157
    :cond_0
    const-string p1, ""

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/4 p1, -0x1

    .line 160
    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->setResult(ILandroid/content/Intent;)V

    .line 161
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00d5

    .line 59
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->setContentView(I)V

    .line 60
    iput-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->activity:Landroid/app/Activity;

    .line 61
    iput-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->context:Landroid/content/Context;

    .line 62
    new-instance p1, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    .line 63
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ContextId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->contextId:I

    .line 68
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getContentTypeMasters()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->contentTypeMasters:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const p1, 0x7f090104

    .line 73
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->contentTypeChipsLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    .line 75
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    const p1, 0x7f0903a5

    .line 77
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f0900fc

    .line 78
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->tvCloseDialog:Landroid/widget/TextView;

    const p1, 0x7f090097

    .line 79
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->tvClose:Landroid/widget/TextView;

    const p1, 0x7f0904fd

    .line 80
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->tvApplyFilter:Landroid/widget/TextView;

    .line 81
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 82
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 83
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const p1, 0x7f0905b3

    .line 84
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->nodataview:Landroid/widget/TextView;

    const p1, 0x7f09035b

    .line 85
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->progress:Landroid/widget/ProgressBar;

    .line 86
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->setAdapter()V

    .line 87
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->loadData()V

    .line 89
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->tvCloseDialog:Landroid/widget/TextView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->tvClose:Landroid/widget/TextView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$2;-><init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->tvApplyFilter:Landroid/widget/TextView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$3;-><init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 229
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0900f7

    .line 230
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 231
    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$4;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$4;-><init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method
