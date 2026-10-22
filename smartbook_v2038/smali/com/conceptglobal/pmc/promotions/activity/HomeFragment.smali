.class public Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;
.super Landroidx/fragment/app/Fragment;
.source "HomeFragment.java"

# interfaces
.implements Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;,
        Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadRecentViewdDataTask;
    }
.end annotation


# static fields
.field public static final REQUEST_CODE:I = 0x1

.field public static final REQUEST_ID_MULTIPLE_PERMISSIONS:I = 0x7


# instance fields
.field final DELAY_MS:J

.field final PERIOD_MS:J

.field private categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

.field private contenBannerstMasterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation
.end field

.field private contentMasterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation
.end field

.field private contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

.field private context:Landroid/content/Context;

.field private contextId:I

.field private criteria:Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

.field currentPage:I

.field private dots:[Landroid/widget/ImageView;

.field private dotscount:I

.field private filteredCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ibHome:Landroid/widget/ImageButton;

.field private isFiltered:Z

.field private items:[Ljava/lang/CharSequence;

.field private llActions:Landroid/widget/LinearLayout;

.field private llDotsView:Landroid/widget/LinearLayout;

.field private llDownloads:Landroid/widget/LinearLayout;

.field private llFilter:Landroid/widget/LinearLayout;

.field private llReports:Landroid/widget/LinearLayout;

.field private llSort:Landroid/widget/LinearLayout;

.field private llm:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private llmRecent:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mTask:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;

.field private mediaplayer:Landroid/media/MediaPlayer;

.field private noPromotionsAvailable:Landroid/widget/TextView;

.field private recentViewdAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

.field reqPerms:[Ljava/lang/String;

.field private rootView:Landroid/view/View;

.field private rvRecentlyPublished:Landroidx/recyclerview/widget/RecyclerView;

.field private rvRecentlyViewd:Landroidx/recyclerview/widget/RecyclerView;

.field private searchMenuItem:Landroid/view/MenuItem;

.field private searchView:Landroid/widget/SearchView;

.field private sortedContentMasterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation
.end field

.field private testCompleationReceiver:Landroid/content/BroadcastReceiver;

.field timer:Ljava/util/Timer;

.field private tvBanner:Landroid/widget/TextView;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;

.field viewPagerAdapter:Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 71
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->isFiltered:Z

    .line 94
    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->reqPerms:[Ljava/lang/String;

    const/4 v1, 0x4

    .line 98
    new-array v1, v1, [Ljava/lang/CharSequence;

    const-string v2, "Name(A-Z)"

    aput-object v2, v1, v0

    const-string v2, "Name(Z-A)"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v4, "New Content"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "Older Content"

    aput-object v4, v1, v2

    iput-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->items:[Ljava/lang/CharSequence;

    .line 109
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->currentPage:I

    const-wide/16 v0, 0x1f4

    .line 111
    iput-wide v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->DELAY_MS:J

    const-wide/16 v0, 0xbb8

    .line 112
    iput-wide v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->PERIOD_MS:J

    .line 114
    iput v3, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->contextId:I

    .line 209
    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$2;-><init>(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->testCompleationReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->dotscount:I

    return p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)Landroid/content/Context;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->refreshAdapter()V

    return-void
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->setBannersAdapter()V

    return-void
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->setRecentViewedAdapter(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)[Landroid/widget/ImageView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->dots:[Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->sortedContentMasterList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$302(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->sortedContentMasterList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->contentMasterList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->setSortedAdapter()V

    return-void
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->contextId:I

    return p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->contenBannerstMasterList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    return-object p0
.end method

.method private getLoginStatus()Z
    .locals 4

    .line 674
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 675
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, -0x1

    .line 676
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 677
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 678
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/common/Queries;->getLoginTimeStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIsRecordExists(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private init()V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f09004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->llActions:Landroid/widget/LinearLayout;

    .line 228
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0905f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 229
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f09047a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->tvBanner:Landroid/widget/TextView;

    .line 230
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->llDotsView:Landroid/widget/LinearLayout;

    .line 234
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0902b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->llDownloads:Landroid/widget/LinearLayout;

    .line 267
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    .line 268
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 270
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->llmRecent:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 271
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 273
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->rootView:Landroid/view/View;

    const v2, 0x7f090374

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->rvRecentlyPublished:Landroidx/recyclerview/widget/RecyclerView;

    .line 274
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 275
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->rvRecentlyPublished:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 276
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->rvRecentlyPublished:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 278
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->rootView:Landroid/view/View;

    const v2, 0x7f090375

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->rvRecentlyViewd:Landroidx/recyclerview/widget/RecyclerView;

    .line 279
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->llmRecent:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 280
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->rvRecentlyViewd:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 281
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->rvRecentlyViewd:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 282
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0905b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->noPromotionsAvailable:Landroid/widget/TextView;

    return-void
.end method

.method private loadData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->mTask:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v2, :cond_0

    .line 622
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->mTask:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->cancel(Z)Z

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->criteria:Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->setContentIds(Ljava/lang/String;)V

    .line 625
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->criteria:Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->setContentTypes(Ljava/lang/String;)V

    .line 626
    new-instance p1, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$1;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->mTask:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;

    .line 627
    new-array v0, v1, [Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->criteria:Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 628
    new-instance p1, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadRecentViewdDataTask;

    invoke-direct {p1, p0, p2}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadRecentViewdDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$1;)V

    .line 629
    new-array p2, v2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadRecentViewdDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private refreshAdapter()V
    .locals 4

    .line 569
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->contentMasterList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 570
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->contentMasterList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 571
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->contentMasterList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v2

    const/16 v3, 0x115

    if-ne v2, v3, :cond_0

    .line 572
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->contentMasterList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    .line 573
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->contentMasterList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 574
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->contentMasterList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 579
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->notifyDataSetChanged()V

    .line 580
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 581
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->noPromotionsAvailable:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->rvRecentlyPublished:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->rvRecentlyViewd:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_2

    .line 585
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->noPromotionsAvailable:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->rvRecentlyPublished:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->rvRecentlyViewd:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private setAdapter()V
    .locals 4

    .line 334
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->contentMasterList:Ljava/util/ArrayList;

    .line 335
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->contentMasterList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    .line 336
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->rvRecentlyPublished:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setBannersAdapter()V
    .locals 9

    .line 536
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->contenBannerstMasterList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->viewPagerAdapter:Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;

    .line 537
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 538
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->setDots()V

    .line 539
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->contenBannerstMasterList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->tvBanner:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    goto :goto_0

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->tvBanner:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 546
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 547
    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$5;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$5;-><init>(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)V

    .line 556
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->timer:Ljava/util/Timer;

    if-eqz v2, :cond_1

    .line 557
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 558
    :cond_1
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->timer:Ljava/util/Timer;

    .line 559
    new-instance v4, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$6;

    invoke-direct {v4, p0, v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$6;-><init>(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;Landroid/os/Handler;Ljava/lang/Runnable;)V

    const-wide/16 v5, 0x1f4

    const-wide/16 v7, 0xbb8

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :goto_0
    return-void
.end method

.method private setDots()V
    .locals 5

    .line 164
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->viewPagerAdapter:Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->dotscount:I

    .line 165
    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->dots:[Landroid/widget/ImageView;

    .line 166
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->llDotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 168
    :goto_0
    iget v2, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->dotscount:I

    if-ge v1, v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->dots:[Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v1

    .line 171
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->dots:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->context:Landroid/content/Context;

    const v4, 0x7f0801bc

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x8

    .line 175
    invoke-virtual {v2, v3, v0, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 177
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->llDotsView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->dots:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->dots:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->context:Landroid/content/Context;

    const v4, 0x7f080060

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private setRecentViewedAdapter(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;)V"
        }
    .end annotation

    .line 345
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->recentViewdAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    .line 346
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->rvRecentlyViewd:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 348
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setSortedAdapter()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 354
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->sortedContentMasterList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 355
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->sortedContentMasterList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v2

    const/16 v3, 0x115

    if-ne v2, v3, :cond_0

    .line 356
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->sortedContentMasterList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    .line 357
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->sortedContentMasterList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 358
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->sortedContentMasterList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    :cond_1
    :goto_1
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->sortedContentMasterList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    .line 364
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->rvRecentlyPublished:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 366
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->refreshAdapter()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 368
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private showAlertDialogLogout(Ljava/lang/String;)V
    .locals 3

    .line 686
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 687
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$7;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$7;-><init>(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 699
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 700
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showSortingOrder()V
    .locals 4

    .line 380
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 381
    const-string v1, "Sort by"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 382
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->items:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$3;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$3;-><init>(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 424
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    .line 634
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->isFiltered:Z

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 637
    const-string p1, "categories"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 638
    const-string p2, "contentType"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 640
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->loadData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 642
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->context:Landroid/content/Context;

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

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->mediaplayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 438
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 439
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 440
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 442
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 443
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 446
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 448
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 450
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->mediaplayer:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$4;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$4;-><init>(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    goto :goto_1

    .line 458
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 459
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 460
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 464
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->reset()V

    .line 465
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 119
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->filteredCategories:Ljava/util/ArrayList;

    .line 121
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->sortedContentMasterList:Ljava/util/ArrayList;

    .line 122
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->contenBannerstMasterList:Ljava/util/ArrayList;

    .line 123
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->context:Landroid/content/Context;

    .line 124
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->mediaplayer:Landroid/media/MediaPlayer;

    .line 125
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 126
    const-string v0, "ContextId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->contextId:I

    .line 139
    new-instance p1, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    .line 140
    new-instance p1, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->criteria:Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    .line 141
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->context:Landroid/content/Context;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->testCompleationReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "TestStatus"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 148
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->rootView:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c0026

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->rootView:Landroid/view/View;

    .line 150
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->init()V

    .line 151
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->setAdapter()V

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 480
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 481
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 471
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 472
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 474
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 306
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->getFilter()Landroid/widget/Filter;

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

.method public onResume()V
    .locals 1

    .line 655
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 661
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->getLoginStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    const-string v0, "You are not login from last few days please re-login again."

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->showAlertDialogLogout(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 159
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 160
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->criteria:Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->getContentIds()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->loadData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
