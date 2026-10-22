.class public Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CategoryAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;,
        Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;,
        Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;,
        Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;,
        Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;,
        Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$LoadMetaData;
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

.field private masterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation
.end field

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private onAudioActionPerformed:Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;

.field private onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private resetSeekUpdaterRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;Landroid/media/MediaPlayer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;",
            "Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;",
            "Landroid/media/MediaPlayer;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->filteredMasterList:Ljava/util/List;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->mHandler:Landroid/os/Handler;

    .line 1072
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$7;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$7;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 96
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->context:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->masterList:Ljava/util/ArrayList;

    .line 98
    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->filteredMasterList:Ljava/util/List;

    .line 99
    new-instance p2, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    .line 100
    new-instance p1, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;-><init>(I)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->downloadManager:Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

    .line 101
    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->onAudioActionPerformed:Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;

    .line 102
    iput-object p4, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 103
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p4, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->filteredMasterList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->filteredMasterList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->masterList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Landroid/content/Context;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2300(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 81
    invoke-static {p0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->replaceRGBColorsWithHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->downloadContent(Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->showImage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Landroid/view/View;Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;Landroid/widget/SeekBar;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 81
    invoke-direct/range {p0 .. p7}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->onAudioActionPerformed(Landroid/view/View;Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;Landroid/widget/SeekBar;Landroid/widget/ProgressBar;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->buildLabel(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3100(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Ljava/lang/String;)Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->parsePageHeaderInfo(Ljava/lang/String;)Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3700(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Landroid/widget/ImageView;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->currentPlayingAudio:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3702(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->currentPlayingAudio:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Landroid/widget/SeekBar;)Ljava/lang/Runnable;
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->mUpdateTimeTask(Landroid/widget/SeekBar;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Landroid/os/Handler;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Landroid/media/MediaPlayer;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Ljava/lang/Runnable;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->resetSeekUpdaterRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private buildLabel(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    .line 826
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 827
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    const/high16 v1, 0x41600000    # 14.0f

    .line 828
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p1, 0xa

    .line 829
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    const p1, 0x7f08009e

    .line 830
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-object v0
.end method

.method private downloadContent(Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;I)V
    .locals 4

    .line 853
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 854
    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    .line 856
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->filteredMasterList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 857
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->filteredMasterList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 858
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 859
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->startAnimating()V

    .line 861
    new-instance v2, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-direct {v2, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;-><init>(Landroid/net/Uri;)V

    new-instance v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;-><init>()V

    .line 863
    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setRetryPolicy(Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryPolicy;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->mediaPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 864
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setDestinationURI(Landroid/net/Uri;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object v0

    sget-object v1, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;->HIGH:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setPriority(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$4;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;ILcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;)V

    .line 866
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setStatusListener(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListenerV1;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object p1

    .line 892
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->downloadManager:Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->add(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)I

    goto :goto_0

    .line 895
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->context:Landroid/content/Context;

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

    .line 768
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 769
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->removeAllViews()V

    .line 778
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 780
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->buildLabel(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 781
    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 784
    :cond_1
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 785
    const-string v1, "See More"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 787
    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->addView(Landroid/view/View;)V

    .line 788
    new-instance v8, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$2;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    move-object v6, v0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$2;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Ljava/util/ArrayList;Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 805
    new-instance v2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$3;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$3;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 818
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

    .line 819
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->buildLabel(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 820
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

    .line 835
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 836
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 837
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    .line 838
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 839
    div-long v2, v0, v2

    const-wide/16 v4, 0xe10

    .line 840
    div-long v6, v2, v4

    mul-long v6, v6, v4

    sub-long/2addr v2, v6

    const-wide/16 v4, 0x3c

    .line 841
    div-long/2addr v2, v4

    .line 843
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

    .line 845
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

    .line 843
    const-string p1, "%02d:%02d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 847
    const-string v0, "Duration--"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private loadThumNailFromURL(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 257
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    return-void
.end method

.method private loadURL(Ljava/lang/String;Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 900
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$LoadMetaData;

    invoke-direct {v0, p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$LoadMetaData;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Ljava/lang/String;Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;)V

    const/4 p1, 0x0

    .line 901
    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$LoadMetaData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private mUpdateTimeTask(Landroid/widget/SeekBar;)Ljava/lang/Runnable;
    .locals 1

    .line 1040
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$6;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$6;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Landroid/widget/SeekBar;)V

    .line 1067
    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->resetSeekUpdaterRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private onAudioActionPerformed(Landroid/view/View;Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;Landroid/widget/SeekBar;Landroid/widget/ProgressBar;)V
    .locals 6

    .line 986
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_3

    .line 988
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 989
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_4

    .line 990
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->pause()V

    .line 992
    check-cast p1, Landroid/widget/ImageView;

    const p2, 0x7f08016c

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    .line 993
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->currentPlayingAudio:Landroid/widget/ImageView;

    goto/16 :goto_1

    .line 996
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 997
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p3, p4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 998
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 999
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p3, p5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1001
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p3}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 p3, 0x0

    .line 1003
    invoke-virtual {p6, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    const/16 p4, 0x64

    .line 1004
    invoke-virtual {p6, p4}, Landroid/widget/SeekBar;->setMax(I)V

    const/16 p4, 0x8

    .line 1006
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 1007
    invoke-virtual {p7, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1008
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance p4, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$5;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p7

    move-object v4, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$5;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/SeekBar;)V

    invoke-virtual {p3, p4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    goto :goto_1

    .line 1024
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1025
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 1026
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1030
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->reset()V

    .line 1031
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method private parsePageHeaderInfo(Ljava/lang/String;)Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 944
    new-instance v0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;-><init>()V

    .line 945
    invoke-static {p1}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object p1

    .line 949
    invoke-interface {p1}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    move-result-object p1

    .line 952
    const-string v1, "meta[property=og:title]"

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 953
    const-string v2, "content"

    if-eqz v1, :cond_0

    .line 954
    invoke-virtual {v1, v2}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 955
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 957
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->title()Ljava/lang/String;

    move-result-object v1

    .line 958
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setTitle(Ljava/lang/String;)V

    .line 962
    :goto_0
    const-string v1, "meta[property=og:description]"

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 964
    invoke-virtual {v1, v2}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 965
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setDescription(Ljava/lang/String;)V

    goto :goto_1

    .line 967
    :cond_1
    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setDescription(Ljava/lang/String;)V

    .line 971
    :goto_1
    const-string v1, "meta[property=og:image]"

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 973
    invoke-virtual {p1, v2}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    .line 977
    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setSiteName(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method private static replaceRGBColorsWithHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .line 1099
    const-string v0, "(rgb\\(\\s*(\\d+)\\s*,\\s*(\\d+)\\s*,\\s*(\\d+)\\s*\\))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1100
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1102
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1104
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 1105
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 1108
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 1110
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    .line 1112
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 1114
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " separated r value: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1115
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " separated g value: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1116
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " separated b value: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1119
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1120
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1121
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1124
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 1125
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 1126
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 1130
    new-array v9, v1, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const-string v6, "%2s"

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v11, " "

    const-string v12, "0"

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1131
    new-array v13, v1, [Ljava/lang/Object;

    aput-object v7, v13, v10

    invoke-static {v6, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1132
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v8, v1, v10

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1134
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, " converted "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to hex: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1135
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1136
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to hex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1139
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1141
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  replacing "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1142
    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    return-object p0
.end method

.method private showImage(Ljava/lang/String;)V
    .locals 2

    .line 1148
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->context:Landroid/content/Context;

    const v1, 0x1030011

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 1149
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    .line 1150
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    const v0, 0x7f0c0113

    .line 1151
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f09007d

    .line 1152
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f090276

    .line 1153
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1155
    new-instance v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$8;

    invoke-direct {v1, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$8;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1162
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 273
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->filteredMasterList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->filteredMasterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 146
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->filteredMasterList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    .line 148
    :try_start_0
    instance-of v0, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 150
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;->access$000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 152
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;->access$000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    :goto_0
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getThumbNail()Ljava/lang/String;

    .line 168
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;->access$100(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 175
    :cond_1
    instance-of v0, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    const/high16 v4, 0x42c80000    # 100.0f

    if-eqz v0, :cond_3

    .line 176
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->access$200(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->access$300(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->access$400(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getCategoryDetails()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;)V

    .line 180
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->access$500(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setProgress(F)V

    .line 182
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->access$500(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    .line 183
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->access$600(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->getVideoDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 185
    :cond_2
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->access$500(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->reset()V

    .line 186
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->access$500(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    .line 187
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->access$600(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;)Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "N/A"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 189
    :cond_3
    instance-of v0, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;

    if-eqz v0, :cond_5

    .line 190
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;->access$700(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;->access$800(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;->access$900(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getCategoryDetails()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;)V

    .line 195
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

    .line 196
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;->access$1000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setProgress(F)V

    .line 197
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;->access$1000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    goto/16 :goto_1

    .line 199
    :cond_4
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;->access$1000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->reset()V

    .line 200
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;->access$1000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    goto/16 :goto_1

    .line 202
    :cond_5
    instance-of v0, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;

    if-eqz v0, :cond_7

    .line 203
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;->access$1100(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;->access$1200(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;->access$1300(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getCategoryDetails()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;)V

    .line 208
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

    .line 209
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;->access$1400(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setProgress(F)V

    .line 210
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;->access$1400(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    goto/16 :goto_1

    .line 212
    :cond_6
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;->access$1400(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->reset()V

    .line 213
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;->access$1400(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    goto/16 :goto_1

    .line 215
    :cond_7
    instance-of v0, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;

    if-eqz v0, :cond_b

    .line 216
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;->access$1500(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;->access$1600(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;->access$1700(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getCategoryDetails()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;)V

    .line 221
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080165

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    invoke-virtual {v0, v3, v3, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 224
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result v2

    const/4 v3, 0x3

    const v5, 0x7f08014e

    if-eq v2, v3, :cond_a

    const/4 v3, 0x5

    if-eq v2, v3, :cond_9

    const/4 v0, 0x6

    if-eq v2, v0, :cond_8

    goto/16 :goto_1

    .line 230
    :cond_8
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;->access$1900(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;)Landroid/widget/ImageView;

    move-result-object v0

    const v2, 0x7f080149

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;->access$1800(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;

    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->loadURL(Ljava/lang/String;Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;)V

    goto :goto_1

    .line 235
    :cond_9
    move-object v1, p1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;->access$1900(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    move-object v1, p1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;->access$1800(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;->access$1600(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;)Landroid/widget/TextView;

    move-result-object p2

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;->access$1800(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v4, v4, v0, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 240
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;->access$1800(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060048

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 226
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;->access$1800(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;->access$1900(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 251
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 111
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0075

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 112
    new-instance p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;

    invoke-direct {p2, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public updateProgressBar(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1036
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->mUpdateTimeTask(Landroid/widget/SeekBar;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
