.class public Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DownloadsActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/promotions/interfaces/OnVideoDelete;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;
    }
.end annotation


# instance fields
.field private categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

.field private contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

.field private context:Landroid/content/Context;

.field private contextId:I

.field private downloadsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation
.end field

.field private llm:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mTask:Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;

.field private mediaplayer:Landroid/media/MediaPlayer;

.field private noDownloadsAvailable:Landroid/widget/TextView;

.field private rvDownloads:Landroidx/recyclerview/widget/RecyclerView;

.field private searchMenuItem:Landroid/view/MenuItem;

.field private searchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->contextId:I

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->contextId:I

    return p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->downloadsList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;)Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->refreshAdapter()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 79
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    const v0, 0x7f0903a7

    .line 81
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->rvDownloads:Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 83
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->rvDownloads:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->rvDownloads:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const v0, 0x7f0905b9

    .line 85
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->noDownloadsAvailable:Landroid/widget/TextView;

    return-void
.end method

.method private loadData()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->mTask:Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->mTask:Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;->cancel(Z)Z

    .line 180
    :cond_0
    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->mTask:Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;

    const/4 v1, 0x0

    .line 181
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private refreshAdapter()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->notifyDataSetChanged()V

    .line 167
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->noDownloadsAvailable:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->rvDownloads:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->noDownloadsAvailable:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->rvDownloads:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setAdapter()V
    .locals 4

    .line 117
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->downloadsList:Ljava/util/List;

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/conceptglobal/pmc/promotions/interfaces/OnVideoDelete;Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    .line 118
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->rvDownloads:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0028

    .line 49
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->setContentView(I)V

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->downloadsList:Ljava/util/List;

    .line 51
    iput-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->context:Landroid/content/Context;

    const p1, 0x7f09045f

    .line 52
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 53
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 54
    const-string v0, "Downloads"

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ContextId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->contextId:I

    .line 61
    :cond_0
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    .line 62
    new-instance p1, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    .line 63
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->init()V

    .line 64
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->setAdapter()V

    .line 65
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->loadData()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 91
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 92
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    const v1, 0x7f0903bc

    .line 93
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->searchMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    .line 94
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 95
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->searchMenuItem:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SearchView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->searchView:Landroid/widget/SearchView;

    .line 96
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 97
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->searchView:Landroid/widget/SearchView;

    invoke-virtual {p1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    return v1
.end method

.method public onDestroy()V
    .locals 1

    .line 206
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 207
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 191
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDetachedFromWindow()V

    .line 192
    const-string v0, "onDetachedFromWindow"

    const-string v1, "DA-activity dying"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 70
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->finish()V

    .line 74
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 197
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 198
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 200
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onVideoDelete()V
    .locals 0

    .line 186
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->loadData()V

    return-void
.end method
