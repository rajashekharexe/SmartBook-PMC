.class public Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;
.super Landroidx/fragment/app/Fragment;
.source "ContentCategoryDetailsFragment.java"

# interfaces
.implements Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;
    }
.end annotation


# instance fields
.field private bottomTab:I

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

.field private contentType:I

.field private context:Landroid/content/Context;

.field private contextId:I

.field private llItems:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private llm:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mTask:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;

.field private rootView:Landroid/view/View;

.field private rvItems:Landroidx/recyclerview/widget/RecyclerView;

.field private rvRelated:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->contextId:I

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->contentType:I

    return p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->bottomTab:I

    return p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->contextId:I

    return p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    return-object p0
.end method

.method static synthetic access$502(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->contentMasterList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->setAdapter()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0903a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->rvRelated:Landroidx/recyclerview/widget/RecyclerView;

    .line 165
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f09039c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->rvItems:Landroidx/recyclerview/widget/RecyclerView;

    .line 166
    new-instance v0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    .line 167
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->context:Landroid/content/Context;

    return-void
.end method

.method private loadData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 89
    new-instance v0, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;-><init>()V

    .line 90
    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->setContentIds(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, p2}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->setContentTypes(Ljava/lang/String;)V

    .line 92
    new-instance p1, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$1;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->mTask:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;

    const/4 p2, 0x1

    .line 93
    new-array p2, p2, [Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setAdapter()V
    .locals 8

    .line 156
    :try_start_0
    new-instance v7, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->contentMasterList:Ljava/util/ArrayList;

    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iget v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->bottomTab:I

    const/16 v4, 0x65

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    move-object v0, v7

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;-><init>(Landroid/content/Context;Landroid/app/Activity;Ljava/util/ArrayList;Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;Landroid/media/MediaPlayer;Z)V

    iput-object v7, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->categoryAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    .line 157
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->rvItems:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private setData()V
    .locals 3

    .line 74
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    .line 75
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 77
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->llItems:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    .line 78
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 80
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->rvRelated:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 81
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->rvRelated:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->rvRelated:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 84
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->rvItems:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->llItems:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 85
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->rvItems:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->rvItems:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    return-void
.end method


# virtual methods
.method public onAudioActionPerformed(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 56
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->rootView:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c0023

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->rootView:Landroid/view/View;

    .line 58
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "ContentType"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->contentType:I

    .line 59
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "FromTab"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->bottomTab:I

    .line 60
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "ContextId"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->contextId:I

    .line 61
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->init()V

    .line 62
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->setData()V

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 69
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 70
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->criteria:Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->getContentIds()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->loadData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
