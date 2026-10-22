.class public Lcom/conceptglobal/pmc/promotions/activity/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;
    }
.end annotation


# static fields
.field public static final REQUEST_CODE:I = 0x1

.field public static final REQUEST_ID_MULTIPLE_PERMISSIONS:I = 0x7


# instance fields
.field private categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

.field private contentMasterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation
.end field

.field private contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

.field private context:Landroid/content/Context;

.field private contextId:I

.field private criteria:Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

.field private filteredCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isFiltered:Z

.field private items:[Ljava/lang/CharSequence;

.field private llActions:Landroid/widget/LinearLayout;

.field private llDownloads:Landroid/widget/LinearLayout;

.field private llFilter:Landroid/widget/LinearLayout;

.field private llReports:Landroid/widget/LinearLayout;

.field private llSort:Landroid/widget/LinearLayout;

.field private llm:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mTask:Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;

.field private mediaplayer:Landroid/media/MediaPlayer;

.field private noPromotionsAvailable:Landroid/widget/TextView;

.field reqPerms:[Ljava/lang/String;

.field private rvPromotions:Landroidx/recyclerview/widget/RecyclerView;

.field private searchMenuItem:Landroid/view/MenuItem;

.field private searchView:Landroid/widget/SearchView;

.field private sortedContentMasterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation
.end field

.field private testCompleationReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 52
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->isFiltered:Z

    .line 70
    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->reqPerms:[Ljava/lang/String;

    const/4 v1, 0x4

    .line 74
    new-array v1, v1, [Ljava/lang/CharSequence;

    const-string v2, "Name(A-Z)"

    aput-object v2, v1, v0

    const-string v0, "Name(Z-A)"

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string v3, "New Content"

    aput-object v3, v1, v0

    const/4 v0, 0x3

    const-string v3, "Older Content"

    aput-object v3, v1, v0

    iput-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->items:[Ljava/lang/CharSequence;

    .line 77
    iput v2, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->contextId:I

    .line 107
    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->testCompleationReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->showSortingOrder()V

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->showFilterOptions()V

    return-void
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->sortedContentMasterList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->sortedContentMasterList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->contentMasterList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->setSortedAdapter()V

    return-void
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->contextId:I

    return p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->refreshAdapter()V

    return-void
.end method

.method private init()V
    .locals 2

    const v0, 0x7f09004f

    .line 125
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->llActions:Landroid/widget/LinearLayout;

    const v0, 0x7f0902c3

    .line 126
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->llSort:Landroid/widget/LinearLayout;

    const v0, 0x7f0902b9

    .line 127
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->llDownloads:Landroid/widget/LinearLayout;

    const v0, 0x7f0902c1

    .line 128
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->llReports:Landroid/widget/LinearLayout;

    const v0, 0x7f0902bc

    .line 129
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->llFilter:Landroid/widget/LinearLayout;

    .line 130
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->llSort:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$2;-><init>(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->llFilter:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$3;-><init>(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->llDownloads:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$4;-><init>(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->llReports:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$5;-><init>(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    .line 159
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    const v0, 0x7f0903a8

    .line 160
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->rvPromotions:Landroidx/recyclerview/widget/RecyclerView;

    .line 161
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 162
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->rvPromotions:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 163
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->rvPromotions:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const v0, 0x7f0905b3

    .line 164
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->noPromotionsAvailable:Landroid/widget/TextView;

    return-void
.end method

.method private loadData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->mTask:Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v2, :cond_0

    .line 419
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->mTask:Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;->cancel(Z)Z

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->criteria:Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->setContentIds(Ljava/lang/String;)V

    .line 422
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->criteria:Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->setContentTypes(Ljava/lang/String;)V

    .line 423
    new-instance p1, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;Lcom/conceptglobal/pmc/promotions/activity/MainActivity$1;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->mTask:Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;

    .line 424
    new-array p2, v1, [Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->criteria:Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private refreshAdapter()V
    .locals 4

    .line 397
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->contentMasterList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 398
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->contentMasterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 399
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->contentMasterList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v2

    const/16 v3, 0x115

    if-ne v2, v3, :cond_0

    .line 400
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->contentMasterList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    .line 401
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->contentMasterList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 402
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->contentMasterList:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->notifyDataSetChanged()V

    .line 408
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->noPromotionsAvailable:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->rvPromotions:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_2

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->noPromotionsAvailable:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->rvPromotions:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private setAdapter()V
    .locals 4

    .line 216
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->contentMasterList:Ljava/util/List;

    .line 217
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->contentMasterList:Ljava/util/List;

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    .line 218
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->rvPromotions:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setSortedAdapter()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 226
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->sortedContentMasterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->sortedContentMasterList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v2

    const/16 v3, 0x115

    if-ne v2, v3, :cond_0

    .line 228
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->sortedContentMasterList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    .line 229
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->sortedContentMasterList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 230
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->sortedContentMasterList:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_1
    :goto_1
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->sortedContentMasterList:Ljava/util/List;

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    .line 236
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->rvPromotions:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 237
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->refreshAdapter()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private showFilterOptions()V
    .locals 2

    .line 300
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    .line 301
    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showSortingOrder()V
    .locals 4

    .line 251
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 252
    const-string v1, "Sort by"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 253
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->items:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6;-><init>(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 295
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public checkPermissions([Ljava/lang/String;)Z
    .locals 7

    .line 198
    const-string v0, "--Runtime permissions checking---"

    const-string v1, "SplshScreen"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    .line 201
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 203
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 206
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x7

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v3

    .line 210
    :cond_2
    const-string p1, "--Runtime permissions completed---"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    .line 429
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->isFiltered:Z

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 432
    const-string p1, "categories"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 433
    const-string p2, "contentType"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 435
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->loadData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 437
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->context:Landroid/content/Context;

    const-string p2, "No filters applied"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAudioActionPerformed(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->mediaplayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 310
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 312
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 314
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 315
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 318
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 320
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 322
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->mediaplayer:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$7;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$7;-><init>(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    goto :goto_1

    .line 332
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 333
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 334
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 338
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->reset()V

    .line 339
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 444
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 445
    const-string v0, "Back"

    const-string v1, "Pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 82
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0030

    .line 83
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->setContentView(I)V

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->filteredCategories:Ljava/util/ArrayList;

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->sortedContentMasterList:Ljava/util/List;

    .line 86
    iput-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->context:Landroid/content/Context;

    .line 87
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->mediaplayer:Landroid/media/MediaPlayer;

    const p1, 0x7f09045f

    .line 89
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 93
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 94
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 96
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 97
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->reqPerms:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->checkPermissions([Ljava/lang/String;)Z

    .line 99
    :cond_0
    new-instance p1, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    .line 100
    new-instance p1, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->criteria:Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    .line 101
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->init()V

    .line 102
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->setAdapter()V

    const/4 p1, 0x0

    .line 103
    invoke-direct {p0, p1, p1}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->loadData(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->testCompleationReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "TestStatus"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 171
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 172
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    const v1, 0x7f0903bc

    .line 173
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->searchMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    .line 174
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 175
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->searchMenuItem:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SearchView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->searchView:Landroid/widget/SearchView;

    .line 176
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 177
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->searchView:Landroid/widget/SearchView;

    invoke-virtual {p1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    return v1
.end method

.method public onDestroy()V
    .locals 1

    .line 354
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 355
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 460
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDetachedFromWindow()V

    .line 461
    const-string v0, "onDetachedFromWindow"

    const-string v1, "MA-activity dying"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 117
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->finish()V

    .line 121
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 345
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 346
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 348
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->getFilter()Landroid/widget/Filter;

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

.method protected onResume()V
    .locals 1

    .line 450
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 451
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->isFiltered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 452
    invoke-direct {p0, v0, v0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->loadData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 454
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->isFiltered:Z

    :goto_0
    return-void
.end method
