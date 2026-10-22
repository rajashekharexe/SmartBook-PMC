.class public Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DisplayContentsActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/Filterable;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$LoadDataTask;
    }
.end annotation


# static fields
.field public static final REQUEST_CODE:I = 0x1

.field public static final REQUEST_ID_MULTIPLE_PERMISSIONS:I = 0x7


# instance fields
.field private bottomTab:I

.field private btnBottomHome:Landroid/widget/ImageButton;

.field private btnDownloads:Landroid/widget/ImageButton;

.field private btnFavourites:Landroid/widget/ImageButton;

.field private btnHome:Landroid/widget/RadioButton;

.field private btnHtml:Landroid/widget/RadioButton;

.field private btnImages:Landroid/widget/RadioButton;

.field private btnPDF:Landroid/widget/RadioButton;

.field private btnSearch:Landroid/widget/ImageButton;

.field private btnSettings:Landroid/widget/ImageButton;

.field private btnVideos:Landroid/widget/RadioButton;

.field private categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

.field private clearFilterReceiver:Landroid/content/BroadcastReceiver;

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

.field public criteria:Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

.field private dots:[Landroid/widget/ImageView;

.field private dotscount:I

.field private fab:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

.field filterItem:Landroid/view/MenuItem;

.field private filteredCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field fragmentManager:Landroidx/fragment/app/FragmentManager;

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

.field mCartItemCount:I

.field private mTask:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$LoadDataTask;

.field private mediaplayer:Landroid/media/MediaPlayer;

.field private noPromotionsAvailable:Landroid/widget/TextView;

.field private rbTop:Landroid/widget/RadioGroup;

.field reqPerms:[Ljava/lang/String;

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

.field textCartItemCount:Landroid/widget/TextView;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;

.field viewPagerAdapter:Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 75
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->isFiltered:Z

    .line 96
    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->reqPerms:[Ljava/lang/String;

    const/4 v1, 0x4

    .line 100
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

    iput-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->items:[Ljava/lang/CharSequence;

    .line 111
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->bottomTab:I

    .line 113
    iput v3, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contextId:I

    .line 117
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mCartItemCount:I

    .line 226
    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$3;-><init>(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->clearFilterReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->dotscount:I

    return p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;)[Landroid/widget/ImageView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->dots:[Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->setupBadge()V

    return-void
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->sortedContentMasterList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$302(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->sortedContentMasterList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contentMasterList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->setSortedAdapter()V

    return-void
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contextId:I

    return p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;)Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->refreshAdapter()V

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f0900bf

    .line 261
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnHome:Landroid/widget/RadioButton;

    .line 262
    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900be

    .line 263
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnVideos:Landroid/widget/RadioButton;

    .line 264
    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900c1

    .line 265
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnImages:Landroid/widget/RadioButton;

    .line 266
    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900c0

    .line 267
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnHtml:Landroid/widget/RadioButton;

    .line 268
    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900c2

    .line 269
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnPDF:Landroid/widget/RadioButton;

    .line 270
    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090272

    .line 271
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnDownloads:Landroid/widget/ImageButton;

    .line 272
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09026c

    .line 273
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnBottomHome:Landroid/widget/ImageButton;

    .line 274
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090277

    .line 275
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnSearch:Landroid/widget/ImageButton;

    .line 276
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090273

    .line 277
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnFavourites:Landroid/widget/ImageButton;

    .line 278
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090278

    .line 279
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnSettings:Landroid/widget/ImageButton;

    .line 280
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902b2

    .line 281
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->rbTop:Landroid/widget/RadioGroup;

    return-void
.end method

.method private launchSearchScreen()V
    .locals 4

    .line 522
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 523
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 524
    const-string v2, "ContextId"

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contextId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 525
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 526
    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private loadData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 801
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mTask:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$LoadDataTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$LoadDataTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 802
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mTask:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$LoadDataTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$LoadDataTask;->cancel(Z)Z

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->criteria:Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->setContentIds(Ljava/lang/String;)V

    .line 805
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->criteria:Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->setContentTypes(Ljava/lang/String;)V

    return-void
.end method

.method private refreshAdapter()V
    .locals 4

    .line 778
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contentMasterList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 779
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contentMasterList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 780
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contentMasterList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v2

    const/16 v3, 0x115

    if-ne v2, v3, :cond_0

    .line 781
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contentMasterList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    .line 782
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contentMasterList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 783
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contentMasterList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 788
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->notifyDataSetChanged()V

    .line 789
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 790
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->noPromotionsAvailable:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 791
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->rvRecentlyPublished:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 792
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->rvRecentlyViewd:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_2

    .line 794
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->noPromotionsAvailable:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 795
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->rvRecentlyPublished:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 796
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->rvRecentlyViewd:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private setAdapter()V
    .locals 4

    .line 428
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contentMasterList:Ljava/util/ArrayList;

    .line 429
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contentMasterList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    .line 430
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->rvRecentlyPublished:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 431
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->rvRecentlyViewd:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 433
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setBottomSelectedBG(I)V
    .locals 3

    .line 851
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnBottomHome:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 852
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnDownloads:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 853
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnFavourites:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 854
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnSearch:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 855
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnSettings:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    const v0, 0x7f060052

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 870
    :sswitch_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnSettings:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    goto :goto_0

    .line 867
    :sswitch_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnSearch:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    goto :goto_0

    .line 864
    :sswitch_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnFavourites:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    goto :goto_0

    .line 861
    :sswitch_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnDownloads:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    goto :goto_0

    .line 858
    :sswitch_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnBottomHome:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09026c -> :sswitch_4
        0x7f090272 -> :sswitch_3
        0x7f090273 -> :sswitch_2
        0x7f090277 -> :sswitch_1
        0x7f090278 -> :sswitch_0
    .end sparse-switch
.end method

.method private setDots()V
    .locals 5

    .line 182
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->viewPagerAdapter:Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->dotscount:I

    .line 183
    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->dots:[Landroid/widget/ImageView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 185
    :goto_0
    iget v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->dotscount:I

    if-ge v1, v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->dots:[Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v1

    .line 188
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->dots:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801bc

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x8

    .line 192
    invoke-virtual {v2, v3, v0, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 194
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->llDotsView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->dots:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->dots:[Landroid/widget/ImageView;

    aget-object v0, v1, v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080060

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$2;-><init>(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private setSortedAdapter()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 439
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->sortedContentMasterList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 440
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->sortedContentMasterList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v2

    const/16 v3, 0x115

    if-ne v2, v3, :cond_0

    .line 441
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->sortedContentMasterList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    .line 442
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->sortedContentMasterList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 443
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->sortedContentMasterList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    :cond_1
    :goto_1
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->sortedContentMasterList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    .line 449
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->rvRecentlyPublished:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 450
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->rvRecentlyViewd:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 451
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->refreshAdapter()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 453
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private setupBadge()V
    .locals 4

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->textCartItemCount:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->criteria:Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->getContentIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->criteria:Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->getContentIds()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mCartItemCount:I

    goto :goto_0

    .line 374
    :cond_0
    iput v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mCartItemCount:I

    .line 377
    :cond_1
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mCartItemCount:I

    if-nez v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->textCartItemCount:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 379
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->textCartItemCount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 382
    :cond_2
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->textCartItemCount:Landroid/widget/TextView;

    const/16 v3, 0x63

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->textCartItemCount:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 384
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->textCartItemCount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 388
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method private showFilterOptions()V
    .locals 4

    .line 514
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 515
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 516
    const-string v2, "ContextId"

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contextId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 517
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 518
    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showSortingOrder()V
    .locals 4

    .line 465
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 466
    const-string v1, "Sort by"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 467
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->items:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$5;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$5;-><init>(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 509
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public checkPermissions([Ljava/lang/String;)Z
    .locals 7

    .line 410
    const-string v0, "--Runtime permissions checking---"

    const-string v1, "SplshScreen"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    .line 413
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 415
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 418
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 419
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x7

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v3

    .line 422
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

    .line 813
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    .line 814
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->isFiltered:Z

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 817
    const-string p1, "categories"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 818
    const-string p2, "contentType"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 820
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->loadData(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->setupBadge()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 823
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->context:Landroid/content/Context;

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

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 534
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 535
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 536
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 538
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 539
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 542
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 544
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 546
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$6;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$6;-><init>(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    goto :goto_1

    .line 554
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 555
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 556
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 560
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->reset()V

    .line 561
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 830
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 831
    const-string v0, "Back"

    const-string v1, "Pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 590
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09026c

    const/4 v2, 0x1

    const/16 v3, 0x64

    const/4 v4, 0x0

    const-string v5, "FromTab"

    const-string v6, "ContentType"

    const v7, 0x7f090100

    const-string v8, "ContextId"

    if-eq v0, v1, :cond_7

    const v1, 0x7f090277

    if-eq v0, v1, :cond_6

    packed-switch v0, :pswitch_data_0

    const v1, 0x7f060052

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 709
    :pswitch_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->filterItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 710
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 712
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->setBottomSelectedBG(I)V

    const/16 p1, 0x66

    .line 713
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->bottomTab:I

    .line 714
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnHome:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->performClick()Z

    .line 715
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnFavourites:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 690
    :pswitch_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->filterItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 691
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 693
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->setBottomSelectedBG(I)V

    const/16 p1, 0x65

    .line 694
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->bottomTab:I

    .line 695
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnHome:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->performClick()Z

    .line 696
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnDownloads:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 676
    :pswitch_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v0, "PDF"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_2

    .line 678
    new-instance p1, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;-><init>()V

    .line 679
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x7

    .line 680
    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 681
    iget v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->bottomTab:I

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 682
    iget v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contextId:I

    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 683
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 685
    :cond_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 686
    invoke-virtual {v1, v7, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 687
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 646
    :pswitch_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v0, "Images"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_3

    .line 648
    new-instance p1, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;-><init>()V

    .line 649
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x4

    .line 650
    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 651
    iget v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->bottomTab:I

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 652
    iget v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contextId:I

    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 653
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 655
    :cond_3
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 656
    invoke-virtual {v1, v7, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 657
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 661
    :pswitch_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v0, "HTML"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_4

    .line 663
    new-instance p1, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;-><init>()V

    .line 664
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x5

    .line 665
    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 666
    iget v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->bottomTab:I

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 667
    iget v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contextId:I

    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 668
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 670
    :cond_4
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 671
    invoke-virtual {v1, v7, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 672
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 631
    :pswitch_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v0, "Videos"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_5

    .line 633
    new-instance p1, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;-><init>()V

    .line 634
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 635
    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 636
    iget v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->bottomTab:I

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 637
    iget v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contextId:I

    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 638
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 640
    :cond_5
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 641
    invoke-virtual {v1, v7, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 642
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 719
    :cond_6
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->launchSearchScreen()V

    goto :goto_0

    .line 592
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->setBottomSelectedBG(I)V

    .line 593
    iput v3, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->bottomTab:I

    .line 594
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->filterItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_8

    .line 595
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 598
    :cond_8
    :pswitch_6
    iget p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->bottomTab:I

    if-ne p1, v3, :cond_9

    .line 606
    new-instance p1, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;-><init>()V

    .line 607
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 608
    iget v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contextId:I

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 609
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 610
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 611
    const-string v1, "Home_TOP"

    invoke-virtual {v0, v7, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 612
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 616
    :cond_9
    new-instance p1, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;-><init>()V

    .line 617
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 618
    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 619
    iget v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->bottomTab:I

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 620
    iget v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contextId:I

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 621
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 623
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 624
    const-string v1, "All"

    invoke-virtual {v0, v7, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 625
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0900be
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f090272
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 123
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0037

    .line 124
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->setContentView(I)V

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->filteredCategories:Ljava/util/ArrayList;

    .line 126
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->sortedContentMasterList:Ljava/util/ArrayList;

    .line 127
    iput-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->context:Landroid/content/Context;

    .line 128
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    .line 129
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ContextId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contextId:I

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 138
    const-string v0, "title"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 140
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 141
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 142
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    .line 143
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->reqPerms:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->checkPermissions([Ljava/lang/String;)Z

    .line 146
    :cond_1
    new-instance p1, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->criteria:Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    .line 147
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->init()V

    .line 152
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->clearFilterReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "ClearFilers"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const p1, 0x7f0901de

    .line 155
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->fab:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    .line 156
    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;)V

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 165
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnBottomHome:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    const/16 p1, 0x64

    .line 166
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->bottomTab:I

    .line 167
    invoke-static {p0}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->revokeLocalContent(Landroid/content/Context;)V

    .line 168
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->btnHome:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->performClick()Z

    .line 169
    iget p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contextId:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 172
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->fab:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setVisibility(I)V

    goto :goto_0

    .line 176
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->fab:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 345
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0901f2

    .line 346
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->filterItem:Landroid/view/MenuItem;

    .line 347
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0901f9

    .line 348
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->textCartItemCount:Landroid/widget/TextView;

    .line 349
    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$4;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$4;-><init>(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    const-string p1, "search"

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/SearchManager;

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 576
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 577
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 578
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->clearFilterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 846
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDetachedFromWindow()V

    .line 847
    const-string v0, "onDetachedFromWindow"

    const-string v1, "MA-activity dying"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 238
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f0901f2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->showFilterOptions()V

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->finish()V

    .line 257
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 567
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 568
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 570
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->mediaplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 400
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 403
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

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

.method protected onResume()V
    .locals 0

    .line 836
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method
