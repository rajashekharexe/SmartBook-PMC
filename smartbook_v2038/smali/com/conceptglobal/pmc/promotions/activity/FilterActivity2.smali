.class public Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FilterActivity2.java"

# interfaces
.implements Lcom/conceptglobal/pmc/promotions/interfaces/OnApplyFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;
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

.field private mAdapter:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

.field private mTask:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;

.field private nodataview:Landroid/widget/TextView;

.field private progress:Landroid/widget/ProgressBar;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field title:Ljava/lang/String;

.field private tvApplyFilter:Landroid/widget/TextView;

.field private tvClose:Landroid/widget/TextView;

.field private tvCloseDialog:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->categoryMasters:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->contentTypeMasters:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->listOfContentTypeFiltered:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 58
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->contextId:I

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->mAdapter:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->setAdapter()V

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)Ljava/util/ArrayList;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->listOfContentTypeFiltered:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->contextId:I

    return p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)Landroid/app/Activity;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->categoryMasters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)Landroid/widget/ProgressBar;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->progress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->refreshAdapter()V

    return-void
.end method

.method private buildLabel(Ljava/lang/String;I)Landroid/widget/TextView;
    .locals 2

    .line 317
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 318
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    const/high16 v1, 0x41600000    # 14.0f

    .line 319
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p1, 0xf

    const/16 v1, 0xc

    .line 320
    invoke-virtual {v0, p1, p1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const p1, 0x7f0800a0

    .line 321
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 322
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 323
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060031

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 324
    new-instance p1, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$4;

    invoke-direct {p1, p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$4;-><init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)V

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

    .line 307
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 308
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->removeAllViews()V

    .line 310
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

    .line 311
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentTypeMaster;->getContentTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentTypeMaster;->getContentTypeId()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->buildLabel(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 312
    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private loadData()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->mTask:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->mTask:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;->cancel(Z)Z

    .line 302
    :cond_0
    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->mTask:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;

    const/4 v1, 0x0

    .line 303
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private refreshAdapter()V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->mAdapter:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->notifyDataSetChanged()V

    .line 289
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->mAdapter:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->nodataview:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->nodataview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setAdapter()V
    .locals 5

    .line 214
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->categoryMasters:Ljava/util/List;

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    iget v4, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->contextId:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->mAdapter:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    .line 216
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 218
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

    .line 197
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 198
    const-string v1, "categories"

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->listOfContentTypeFiltered:Ljava/util/ArrayList;

    const-string v1, "contentType"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->listOfContentTypeFiltered:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 202
    :cond_0
    const-string p1, ""

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/4 p1, -0x1

    .line 205
    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->setResult(ILandroid/content/Intent;)V

    .line 206
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 64
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00d5

    .line 65
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->setContentView(I)V

    .line 66
    iput-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->activity:Landroid/app/Activity;

    .line 67
    iput-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->context:Landroid/content/Context;

    .line 68
    new-instance p1, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    .line 69
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ContextId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->contextId:I

    .line 74
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getContentTypeMasters()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->contentTypeMasters:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "title"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->title:Ljava/lang/String;

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    const p1, 0x7f090104

    .line 81
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->contentTypeChipsLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    .line 83
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    const p1, 0x7f0903a5

    .line 85
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f0900fc

    .line 86
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->tvCloseDialog:Landroid/widget/TextView;

    const p1, 0x7f090097

    .line 87
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->tvClose:Landroid/widget/TextView;

    const p1, 0x7f0904fd

    .line 88
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->tvApplyFilter:Landroid/widget/TextView;

    .line 89
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 90
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 91
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const p1, 0x7f0905b3

    .line 92
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->nodataview:Landroid/widget/TextView;

    const p1, 0x7f09035b

    .line 93
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->progress:Landroid/widget/ProgressBar;

    .line 94
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->setAdapter()V

    .line 95
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->loadData()V

    .line 97
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->tvCloseDialog:Landroid/widget/TextView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->tvClose:Landroid/widget/TextView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$2;-><init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->tvApplyFilter:Landroid/widget/TextView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$3;-><init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 277
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->finish()V

    .line 282
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
