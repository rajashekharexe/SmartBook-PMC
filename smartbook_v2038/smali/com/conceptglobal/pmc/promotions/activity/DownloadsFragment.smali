.class public Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;
.super Landroidx/fragment/app/Fragment;
.source "DownloadsFragment.java"

# interfaces
.implements Lcom/conceptglobal/pmc/promotions/interfaces/OnVideoDelete;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;
    }
.end annotation


# instance fields
.field private categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

.field private context:Landroid/content/Context;

.field private contextId:I

.field private htmlAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

.field private html_downloadsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation
.end field

.field private html_llm:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private images_downloadsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation
.end field

.field private images_llm:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private imagessAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

.field private mTask:Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;

.field private mediaplayer:Landroid/media/MediaPlayer;

.field private noDownloadsAvailable:Landroid/widget/TextView;

.field private pdfAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

.field private pdf_downloadsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation
.end field

.field private pdf_llm:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private rootView:Landroid/view/View;

.field private rvDownloads:Landroidx/recyclerview/widget/RecyclerView;

.field private rvHtml:Landroidx/recyclerview/widget/RecyclerView;

.field private rvImages:Landroidx/recyclerview/widget/RecyclerView;

.field private rvPdf:Landroidx/recyclerview/widget/RecyclerView;

.field private rvVideos:Landroidx/recyclerview/widget/RecyclerView;

.field private searchMenuItem:Landroid/view/MenuItem;

.field private searchView:Landroid/widget/SearchView;

.field private videosAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

.field private videos_downloadsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation
.end field

.field private videos_llm:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 57
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->contextId:I

    return-void
.end method

.method static synthetic access$002(Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->videos_downloadsList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->contextId:I

    return p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    return-object p0
.end method

.method static synthetic access$302(Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->images_downloadsList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$402(Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->html_downloadsList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$502(Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->pdf_downloadsList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->setAdapter()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 97
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->videos_llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    .line 98
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 99
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0903a2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->rvVideos:Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->videos_llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 101
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->rvVideos:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->rvVideos:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 104
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->images_llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 105
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 106
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0903a4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->rvImages:Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->images_llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 108
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->rvImages:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->rvImages:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 111
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->html_llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 112
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 113
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0903a3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->rvHtml:Landroidx/recyclerview/widget/RecyclerView;

    .line 114
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->html_llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 115
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->rvHtml:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->rvHtml:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 118
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->pdf_llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 119
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 120
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0903ab

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->rvPdf:Landroidx/recyclerview/widget/RecyclerView;

    .line 121
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->pdf_llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 122
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->rvPdf:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->rvPdf:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 125
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0905b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->noDownloadsAvailable:Landroid/widget/TextView;

    return-void
.end method

.method private loadData()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->mTask:Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->mTask:Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;->cancel(Z)Z

    .line 235
    :cond_0
    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->mTask:Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;

    const/4 v1, 0x0

    .line 236
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setAdapter()V
    .locals 4

    .line 157
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->videos_downloadsList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->videosAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    .line 158
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->rvVideos:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 159
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->images_downloadsList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->imagessAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    .line 160
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->rvImages:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 161
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->html_downloadsList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->htmlAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    .line 162
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->rvHtml:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 163
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->pdf_downloadsList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->pdfAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    .line 164
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->rvPdf:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onAudioActionPerformed(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->videos_downloadsList:Ljava/util/ArrayList;

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->images_downloadsList:Ljava/util/ArrayList;

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->html_downloadsList:Ljava/util/ArrayList;

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->pdf_downloadsList:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->context:Landroid/content/Context;

    .line 67
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->mediaplayer:Landroid/media/MediaPlayer;

    .line 68
    new-instance p1, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    .line 69
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 70
    const-string v0, "ContextId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->contextId:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 77
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->rootView:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c009d

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->rootView:Landroid/view/View;

    .line 79
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->init()V

    .line 81
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->loadData()V

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 261
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 262
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 252
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 253
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 255
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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

    .line 241
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->loadData()V

    return-void
.end method
