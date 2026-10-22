.class public Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SearchActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;
    }
.end annotation


# instance fields
.field private SUGGESTIONS:[Ljava/lang/String;

.field private categoryAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

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

.field isLoading:Z

.field private limit:I

.field private llm:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mAdapter:Landroidx/cursoradapter/widget/SimpleCursorAdapter;

.field private mTask:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;

.field private offset:I

.field private rvSearchItems:Landroidx/recyclerview/widget/RecyclerView;

.field private searchMenuItem:Landroid/view/MenuItem;

.field private searchString:Ljava/lang/String;

.field private searchView:Landroidx/appcompat/widget/SearchView;

.field private tvNoData:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->contentMasterList:Ljava/util/ArrayList;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->searchString:Ljava/lang/String;

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->SUGGESTIONS:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 56
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->contextId:I

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->isLoading:Z

    const/16 v1, 0x32

    .line 63
    iput v1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->limit:I

    .line 64
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->offset:I

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)Landroidx/cursoradapter/widget/SimpleCursorAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->mAdapter:Landroidx/cursoradapter/widget/SimpleCursorAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)Landroidx/appcompat/widget/SearchView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->contentMasterList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->categoryAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->setAdapter()V

    return-void
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->loadMore()V

    return-void
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->searchString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->searchString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->offset:I

    return p0
.end method

.method static synthetic access$402(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->offset:I

    return p1
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->loadData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->populateAdapter(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->limit:I

    return p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->contextId:I

    return p0
.end method

.method private init()V
    .locals 2

    const v0, 0x7f0903a1

    .line 178
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->rvSearchItems:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f09055f

    .line 179
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->tvNoData:Landroid/widget/TextView;

    .line 180
    new-instance v0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    .line 181
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->context:Landroid/content/Context;

    return-void
.end method

.method private initScrollListener()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->rvSearchItems:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$3;-><init>(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private loadData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 220
    new-instance v0, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;-><init>()V

    .line 221
    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->setContentIds(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, p2}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->setContentTypes(Ljava/lang/String;)V

    .line 223
    new-instance p1, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$1;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->mTask:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;

    const/4 p2, 0x1

    .line 224
    new-array p2, p2, [Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private loadMore()V
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->contentMasterList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->categoryAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->contentMasterList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->notifyItemInserted(I)V

    .line 303
    invoke-direct {p0, v1, v1}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->loadData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private populateAdapter(Ljava/lang/String;)V
    .locals 6

    .line 101
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "_id"

    const-string v2, "cityName"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 102
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->SUGGESTIONS:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 103
    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->SUGGESTIONS:[Ljava/lang/String;

    aget-object v4, v4, v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    const/4 v3, 0x1

    aput-object v4, v5, v3

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->mAdapter:Landroidx/cursoradapter/widget/SimpleCursorAdapter;

    invoke-virtual {p1, v0}, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private setAdapter()V
    .locals 10

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->contentMasterList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 186
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->contentMasterList:Ljava/util/ArrayList;

    new-instance v8, Landroid/media/MediaPlayer;

    invoke-direct {v8}, Landroid/media/MediaPlayer;-><init>()V

    const/4 v9, 0x0

    move-object v3, v0

    move-object v5, p0

    move-object v7, p0

    invoke-direct/range {v3 .. v9}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;-><init>(Landroid/content/Context;Landroid/app/Activity;Ljava/util/ArrayList;Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;Landroid/media/MediaPlayer;Z)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->categoryAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    .line 187
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->rvSearchItems:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 188
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->rvSearchItems:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->rvSearchItems:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setData()V
    .locals 5

    .line 200
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    .line 201
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 204
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->rvSearchItems:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 205
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->rvSearchItems:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 206
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->rvSearchItems:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 208
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->contextId:I

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getSearckKeysSuggestionsList(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 209
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getSuggestionsList()Ljava/util/ArrayList;

    move-result-object v2

    .line 210
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget v4, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->contextId:I

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getContentNamesSuggestionsList(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 211
    iget v4, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->contextId:I

    if-ne v4, v1, :cond_0

    .line 212
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 214
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 215
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->SUGGESTIONS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 217
    invoke-direct {p0, v0, v0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->loadData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAudioActionPerformed(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 71
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003e

    .line 72
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->setContentView(I)V

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "PMC ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 74
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ContextId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->contextId:I

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->init()V

    .line 78
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->setData()V

    .line 79
    const-string p1, "cityName"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const p1, 0x1020014

    .line 80
    filled-new-array {p1}, [I

    move-result-object v5

    .line 81
    new-instance p1, Landroidx/cursoradapter/widget/SimpleCursorAdapter;

    const/4 v3, 0x0

    const/4 v6, 0x2

    const v2, 0x7f0c0120

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroidx/cursoradapter/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->mAdapter:Landroidx/cursoradapter/widget/SimpleCursorAdapter;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 111
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 112
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    const v1, 0x7f0903bc

    .line 113
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->searchMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    .line 114
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 115
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->searchMenuItem:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    .line 116
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 118
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->mAdapter:Landroidx/cursoradapter/widget/SimpleCursorAdapter;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setSuggestionsAdapter(Landroidx/cursoradapter/widget/CursorAdapter;)V

    .line 119
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 122
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setOnSuggestionListener(Landroidx/appcompat/widget/SearchView$OnSuggestionListener;)V

    .line 139
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$2;-><init>(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->finish()V

    .line 95
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
