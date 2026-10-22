.class public Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ContentCategoryDetailsActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity$LoadDataTask;
    }
.end annotation


# instance fields
.field private categoryAdapter:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

.field private categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

.field private contentMasterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private contextId:I

.field private llItems:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private llm:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mTask:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity$LoadDataTask;

.field private rvItems:Landroidx/recyclerview/widget/RecyclerView;

.field private rvRelated:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->contextId:I

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->contextId:I

    return p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->setAdapter()V

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f0903a0

    .line 112
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->rvRelated:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f09039c

    .line 113
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->rvItems:Landroidx/recyclerview/widget/RecyclerView;

    .line 114
    new-instance v0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    .line 115
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->context:Landroid/content/Context;

    return-void
.end method

.method private loadData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 65
    new-instance p1, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity$LoadDataTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity$1;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->mTask:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity$LoadDataTask;

    const/4 p2, 0x0

    .line 66
    new-array p2, p2, [Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setAdapter()V
    .locals 4

    .line 104
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->contentMasterList:Ljava/util/ArrayList;

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->categoryAdapter:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    .line 105
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->rvItems:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setData()V
    .locals 3

    .line 49
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 52
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->llItems:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    .line 53
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 55
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->rvRelated:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 56
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->rvRelated:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 57
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->rvRelated:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 59
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->rvItems:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->llItems:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 60
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->rvItems:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 61
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->rvItems:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0, v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->loadData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAudioActionPerformed(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0023

    .line 40
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ContextId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->contextId:I

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->init()V

    .line 45
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->setData()V

    return-void
.end method
