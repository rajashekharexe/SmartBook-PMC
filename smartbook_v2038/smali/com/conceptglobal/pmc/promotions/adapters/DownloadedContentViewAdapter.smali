.class public Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DownloadedContentViewAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;,
        Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;,
        Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;,
        Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;,
        Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;,
        Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$LoadMetaData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# static fields
.field private static final DOWNLOAD_THREAD_POOL_SIZE:I = 0x4


# instance fields
.field private categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

.field private context:Landroid/content/Context;

.field private currentPlayingAudio:Landroid/widget/ImageView;

.field private downloadManager:Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

.field private filteredMasterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private masterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation
.end field

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private onAudioActionPerformed:Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;

.field private onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private onVideoDelete:Lcom/conceptglobal/pmc/promotions/interfaces/OnVideoDelete;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/conceptglobal/pmc/promotions/interfaces/OnVideoDelete;Landroid/media/MediaPlayer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;",
            "Lcom/conceptglobal/pmc/promotions/interfaces/OnVideoDelete;",
            "Landroid/media/MediaPlayer;",
            ")V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->filteredMasterList:Ljava/util/List;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->mHandler:Landroid/os/Handler;

    .line 860
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$9;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$9;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 87
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->context:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->masterList:Ljava/util/List;

    .line 89
    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->filteredMasterList:Ljava/util/List;

    .line 90
    new-instance p2, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    .line 91
    new-instance p1, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;-><init>(I)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->downloadManager:Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

    .line 93
    iput-object p4, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 94
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p4, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 95
    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->onVideoDelete:Lcom/conceptglobal/pmc/promotions/interfaces/OnVideoDelete;

    return-void
.end method

.method static synthetic access$3100(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Ljava/util/List;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->filteredMasterList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3102(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->filteredMasterList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Ljava/util/List;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->masterList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Landroid/content/Context;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->showDiscardAlert(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->downloadContent(Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Landroid/media/MediaPlayer;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/view/View;Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;Landroid/widget/SeekBar;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 71
    invoke-direct/range {p0 .. p7}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->onAudioActionPerformed(Landroid/view/View;Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;Landroid/widget/SeekBar;Landroid/widget/ProgressBar;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->buildLabel(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4100(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Landroid/widget/ImageView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->currentPlayingAudio:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$4602(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->currentPlayingAudio:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/widget/SeekBar;)Ljava/lang/Runnable;
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->mUpdateTimeTask(Landroid/widget/SeekBar;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4800(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Landroid/os/Handler;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Lcom/conceptglobal/pmc/promotions/interfaces/OnVideoDelete;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->onVideoDelete:Lcom/conceptglobal/pmc/promotions/interfaces/OnVideoDelete;

    return-object p0
.end method

.method private buildLabel(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    .line 600
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 601
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    const/high16 v1, 0x41600000    # 14.0f

    .line 602
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p1, 0xa

    .line 603
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    const p1, 0x7f08009e

    .line 604
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-object v0
.end method

.method private downloadContent(Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;I)V
    .locals 4

    .line 627
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    .line 630
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->filteredMasterList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 631
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->filteredMasterList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 632
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 633
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->startAnimating()V

    .line 634
    new-instance v2, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-direct {v2, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;-><init>(Landroid/net/Uri;)V

    new-instance v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;-><init>()V

    .line 636
    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setRetryPolicy(Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryPolicy;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->mediaPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 637
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setDestinationURI(Landroid/net/Uri;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object v0

    sget-object v2, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;->HIGH:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setPriority(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object v0

    new-instance v2, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$4;

    invoke-direct {v2, p0, p2, v1, p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$4;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;ILjava/lang/String;Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;)V

    .line 639
    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setDownloadListener(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListener;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object p1

    .line 662
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->downloadManager:Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->add(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)I

    goto :goto_0

    .line 665
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->context:Landroid/content/Context;

    const-string p2, "Please enable data connection"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 542
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 543
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->removeAllViews()V

    .line 550
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 552
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->buildLabel(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 553
    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    :cond_1
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 557
    const-string v1, "See More"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 559
    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->addView(Landroid/view/View;)V

    .line 560
    new-instance v8, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$2;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    move-object v6, v0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$2;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Ljava/util/ArrayList;Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    new-instance v2, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$3;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$3;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 592
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 593
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->buildLabel(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 594
    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private getVideoDuration(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 609
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 610
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 611
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    .line 612
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 613
    div-long v2, v0, v2

    const-wide/16 v4, 0xe10

    .line 614
    div-long v6, v2, v4

    mul-long v6, v6, v4

    sub-long/2addr v2, v6

    const-wide/16 v4, 0x3c

    .line 615
    div-long/2addr v2, v4

    .line 617
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 619
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    .line 617
    const-string p1, "%02d:%02d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 621
    const-string v0, "Duration--"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private loadURL(Ljava/lang/String;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 670
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$LoadMetaData;

    invoke-direct {v0, p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$LoadMetaData;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Ljava/lang/String;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;)V

    const/4 p1, 0x0

    .line 671
    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$LoadMetaData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private mUpdateTimeTask(Landroid/widget/SeekBar;)Ljava/lang/Runnable;
    .locals 1

    .line 834
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$8;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$8;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/widget/SeekBar;)V

    return-object v0
.end method

.method private onAudioActionPerformed(Landroid/view/View;Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;Landroid/widget/SeekBar;Landroid/widget/ProgressBar;)V
    .locals 6

    .line 756
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_3

    .line 758
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 759
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_4

    .line 760
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->pause()V

    .line 762
    check-cast p1, Landroid/widget/ImageView;

    const p2, 0x7f08016c

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    .line 763
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->currentPlayingAudio:Landroid/widget/ImageView;

    goto/16 :goto_1

    .line 766
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 767
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p3, p4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 768
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 769
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p3, p5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 771
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p3}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 p3, 0x0

    .line 773
    invoke-virtual {p6, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    const/16 p4, 0x64

    .line 774
    invoke-virtual {p6, p4}, Landroid/widget/SeekBar;->setMax(I)V

    const/16 p4, 0x8

    .line 776
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 777
    invoke-virtual {p7, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 778
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance p4, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$5;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p7

    move-object v4, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$5;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/SeekBar;)V

    invoke-virtual {p3, p4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    goto :goto_1

    .line 797
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 798
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 799
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 803
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->reset()V

    .line 804
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method private showDiscardAlert(I)V
    .locals 2

    .line 809
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 810
    const-string v1, "Delete this Media?"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f080135

    .line 811
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 812
    new-instance v1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$6;

    invoke-direct {v1, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$6;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;I)V

    const-string p1, "DISCARD"

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 824
    new-instance p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$7;

    invoke-direct {p1, p0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$7;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)V

    const-string v1, "CANCEL"

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 830
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 255
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->filteredMasterList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->filteredMasterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 134
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->filteredMasterList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    .line 136
    :try_start_0
    instance-of v0, p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "N/A"

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 137
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->access$300(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setVisibility(I)V

    .line 138
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->access$400(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->access$500(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->access$600(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->access$700(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getThumbNail()Ljava/lang/String;

    .line 157
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->access$800(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getCategoryDetails()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;)V

    .line 158
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->access$300(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setProgress(F)V

    .line 160
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->access$300(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    .line 161
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->access$900(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->getVideoDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 163
    :cond_0
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->access$300(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->reset()V

    .line 164
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->access$300(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    .line 165
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->access$900(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 167
    :cond_1
    instance-of v0, p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;

    if-eqz v0, :cond_3

    .line 168
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->access$1000(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setVisibility(I)V

    .line 169
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->access$1100(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->access$1200(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->access$1300(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->access$1400(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getCategoryDetails()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;)V

    .line 175
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->access$1000(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setProgress(F)V

    .line 177
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->access$1000(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    .line 178
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->access$1500(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->getVideoDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 180
    :cond_2
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->access$1000(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->reset()V

    .line 181
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->access$1000(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    .line 182
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->access$1500(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 184
    :cond_3
    instance-of v0, p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;

    if-eqz v0, :cond_5

    .line 185
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->access$1600(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setVisibility(I)V

    .line 186
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->access$1700(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->access$1800(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->access$1900(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->access$2000(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getCategoryDetails()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;)V

    .line 194
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 195
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->access$1600(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setProgress(F)V

    .line 196
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->access$1600(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 198
    :cond_4
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->access$1600(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->reset()V

    .line 199
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;->access$1600(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 201
    :cond_5
    instance-of v0, p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

    if-eqz v0, :cond_7

    .line 202
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->access$2100(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setVisibility(I)V

    .line 203
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->access$2200(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->access$2300(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->access$2400(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->access$2500(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getCategoryDetails()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;)V

    .line 210
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 211
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->access$2100(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setProgress(F)V

    .line 212
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->access$2100(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 214
    :cond_6
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->access$2100(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->reset()V

    .line 215
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->access$2100(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 217
    :cond_7
    instance-of v0, p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;

    if-eqz v0, :cond_c

    .line 218
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->access$2600(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->access$2700(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->access$2800(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getCategoryDetails()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;)V

    .line 223
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result v0

    const/4 v1, 0x3

    const v2, 0x7f08014e

    if-eq v0, v1, :cond_b

    const/4 v1, 0x5

    if-eq v0, v1, :cond_9

    const/4 v1, 0x6

    if-eq v0, v1, :cond_8

    goto :goto_0

    .line 229
    :cond_8
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->access$3000(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080149

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->access$2900(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;

    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->loadURL(Ljava/lang/String;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;)V

    goto :goto_0

    .line 234
    :cond_9
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->access$3000(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_a

    .line 236
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->access$2900(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentData()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 238
    :cond_a
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->access$2900(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentData()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x3f

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 225
    :cond_b
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->access$2900(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;->access$3000(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 244
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    return-object v0

    .line 113
    :pswitch_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0c005f

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 114
    new-instance p2, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

    invoke-direct {p2, p0, p1, v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/view/View;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$1;)V

    return-object p2

    .line 110
    :pswitch_1
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00c9

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 111
    new-instance p2, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;

    invoke-direct {p2, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$ImageTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/view/View;)V

    return-object p2

    .line 118
    :pswitch_2
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0c014c

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 119
    new-instance p2, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;

    invoke-direct {p2, p0, p1, v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$TextTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/view/View;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$1;)V

    return-object p2

    .line 107
    :pswitch_3
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0c0066

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 108
    new-instance p2, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;

    invoke-direct {p2, p0, p1, v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/view/View;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$1;)V

    return-object p2

    .line 104
    :pswitch_4
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c015f

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 105
    new-instance p2, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    invoke-direct {p2, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public parsePageHeaderInfo(Ljava/lang/String;)Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 714
    new-instance v0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;-><init>()V

    .line 715
    invoke-static {p1}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object p1

    .line 719
    invoke-interface {p1}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    move-result-object p1

    .line 722
    const-string v1, "meta[property=og:title]"

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 723
    const-string v2, "content"

    if-eqz v1, :cond_0

    .line 724
    invoke-virtual {v1, v2}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 725
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 727
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->title()Ljava/lang/String;

    move-result-object v1

    .line 728
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setTitle(Ljava/lang/String;)V

    .line 732
    :goto_0
    const-string v1, "meta[property=og:description]"

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 734
    invoke-virtual {v1, v2}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 735
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setDescription(Ljava/lang/String;)V

    goto :goto_1

    .line 737
    :cond_1
    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setDescription(Ljava/lang/String;)V

    .line 741
    :goto_1
    const-string v1, "meta[property=og:image]"

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 743
    invoke-virtual {p1, v2}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    .line 747
    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setSiteName(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method
